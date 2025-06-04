local QBCore = exports['qb-core']:GetCoreObject()
local ActiveMission = 0

RegisterServerEvent('AttackTransport:akceptujto', function()
	local copsOnDuty = 0
	local _source = source
	local xPlayer = QBCore.Functions.GetPlayer(_source)
	local accountMoney = xPlayer.PlayerData.money['cash']
	if ActiveMission == 0 then
		if accountMoney < Config.ActivationCost then
			TriggerClientEvent('QBCore:Notify', _source, '您需要 ' .. Config.Currency .. '' .. Config.ActivationCost .. ' 现金用以准备物资')
		else
			for _, v in pairs(QBCore.Functions.GetPlayers()) do
				local Player = QBCore.Functions.GetPlayer(v)
				if Player ~= nil then
					if (Player.PlayerData.job.name == 'police' or Player.PlayerData.job.type == 'leo') and Player.PlayerData.job.onduty then
						copsOnDuty = copsOnDuty + 1
					end
				end
			end
			if copsOnDuty >= Config.ActivePolice then
				TriggerClientEvent('AttackTransport:Pozwolwykonac', _source)
				xPlayer.Functions.RemoveMoney('cash', Config.ActivationCost, 'armored-truck')
				OdpalTimer()
			else
				TriggerClientEvent('QBCore:Notify', _source, '需要至少 ' .. Config.ActivePolice .. ' 警察在城市中.')
			end
		end
	else
		TriggerClientEvent('QBCore:Notify', _source, '该行动已经被接了')
	end
end)

RegisterServerEvent('qb-armoredtruckheist:server:callCops', function(streetLabel, coords)
	-- local place = "Armored Truck"
	-- local msg = "The Alarm has been activated from a "..place.. " at " ..streetLabel
	-- Why is this unused?
	TriggerClientEvent('qb-armoredtruckheist:client:robberyCall', -1, streetLabel, coords)
end)

function OdpalTimer()
    ActiveMission = 1
    SetTimeout(Config.ResetTimer * 1000, function()
        ActiveMission = 0
        TriggerClientEvent('AttackTransport:CleanUp', -1)
    end)
end

RegisterServerEvent('AttackTransport:zawiadompsy', function(x, y, z)
	TriggerClientEvent('AttackTransport:InfoForLspd', -1, x, y, z)
end)

RegisterServerEvent('AttackTransport:graczZrobilnapad', function()
	local _source = source
	local xPlayer = QBCore.Functions.GetPlayer(_source)
	local bags = 0
	-- 根据权重随机决定拿几袋钱
	local chance = math.random(1, 100)
	local bags = 0
	if chance <= 30 then
		bags = 1
	elseif chance <= 90 then -- 30% + 60% = 90%
		bags = 2
	else
		bags = 3
	end
	local info = {
		worth = math.random(Config.Payout.Min, Config.Payout.Max)
	}
	exports['qb-inventory']:AddItem(_source, 'markedbills', bags, false, info, 'AttackTransport:graczZrobilnapad')
	TriggerClientEvent('qb-inventory:client:ItemBox', _source, QBCore.Shared.Items['markedbills'], 'add')
	TriggerClientEvent('QBCore:Notify', _source, '你拿走 ' .. bags .. ' 袋现金从运钞车中.')
	
	chance = math.random(1, 100)
	if chance >= 85 then
		exports['qb-inventory']:AddItem(_source, 'security_card_01', 1, false, false, 'AttackTransport:graczZrobilnapad')
		TriggerClientEvent('qb-inventory:client:ItemBox', _source, QBCore.Shared.Items['security_card_01'], 'add')
	end
end)
