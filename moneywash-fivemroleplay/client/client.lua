local CurrentlyWashing = false
local InsideLaundry = false
local WashCooldown =  false

local function Cooldown()
	WashCooldown = true
	Wait(Config.Cooldown)
	WashCooldown = false
end

function WashMoney()
	if CurrentlyWashing then
		lib.notify({
			title = '正在洗钱',
			description = '您正在洗钱！',
			type = 'error'
		})
	else

		if Config.UseTickets then
			local WashTicket = exports.ox_inventory:Search('count','moneywash_ticket')
			if WashTicket >= 1 then
				if not WashCooldown then
					SetEntityHeading(PlayerPedId(), 349.9048)
					lib.requestAnimDict('anim@gangops@facility@servers@bodysearch@', 10)
					TaskPlayAnim(PlayerPedId(), 'anim@gangops@facility@servers@bodysearch@', 'player_search', 8.0, -8.0, -1, 48, 0)
					local input = lib.inputDialog('输入数量', {'您需要洗几袋钱?'})
		
					if not input then return end
					local WashAmount = tonumber(input[1])
					if WashAmount == nil or WashAmount < 1 or WashAmount%1 ~= 0 then
						lib.notify({
							title = '错误',
							description = '数量应为正整数!',
							type = 'error'
						})
						return
					end	
					if WashAmount > Config.maxAmountValue then 
						lib.notify({
							title = '错误',
							description = '一次清洗的最大数量为'.. Config.maxAmountValue ..'!',
							type = 'error'
						})
						return
					end
					TriggerServerEvent('stevo_moneywash:cleanmoney', WashAmount)
					Wait(500)
					ClearPedTasksImmediately(PlayerPedId())
				else
					lib.notify({
						title = '冷却期间',
						description = '洗钱还需等待一段时间',
						type = 'error'
					})
				end
			else
				lib.notify({
					title = '访问拒绝',
					description = '您需要一张洗钱票才能访问该机器!',
					type = 'error'
				})
			end
		else
			if not WashCooldown then
				SetEntityHeading(PlayerPedId(), 349.9048)
				lib.requestAnimDict('anim@gangops@facility@servers@bodysearch@', 10)
				TaskPlayAnim(PlayerPedId(), 'anim@gangops@facility@servers@bodysearch@', 'player_search', 8.0, -8.0, -1, 48, 0)
				local input = lib.inputDialog('输入数量', {'您需要洗几袋钱?'})
	
				if not input then return end
				local WashAmount = tonumber(input[1])	
				if WashAmount == nil or WashAmount < 1 or WashAmount%1 ~= 0 then
					lib.notify({
						title = '错误',
						description = '数量应为正整数!',
						type = 'error'
					})
					return
				end	
				if WashAmount > Config.maxAmountValue then 
					lib.notify({
						title = '错误',
						description = '一次清洗的最大数量为'.. Config.maxAmountValue ..'!',
						type = 'error'
					})
					return
				end
				TriggerServerEvent('stevo_moneywash:cleanmoney', WashAmount)
				Wait(500)
				ClearPedTasksImmediately(PlayerPedId())
			else
				lib.notify({
					title = '机器冷却',
					description = '机器刚刚洗过钱，需等待',
					type = 'error'
				})
			end
		end
	end
end

function ExitLaundry()
	if CurrentlyWashing then
		lib.notify({
			title = '正在洗钱',
			description = '正在洗钱，您不能退出洗钱室',
			type = 'error'
		})
	else
		InsideLaundry = false
		DoScreenFadeOut(100)
		Wait(500)
	    SetEntityCoords(PlayerPedId(), 1143.8951, -1000.2181, 45.3136)
		SetEntityHeading(PlayerPedId(), 275.8793)
		Wait(1000)
		DoScreenFadeIn(100)
	end
end

function EnterLaundry()
	if Config.UseEnterKeycard then
		local keycard = exports.ox_inventory:Search('count','security_card_01')
		if keycard >= 1 then
			DoScreenFadeOut(100)
			Wait(1000)
			SetEntityCoords(PlayerPedId(), 1138.1279, -3199.1963, -39.6657)
			SetEntityHeading(PlayerPedId(), 6)
			Wait(1000)
			DoScreenFadeIn(100)
			InsideLaundry = true
		else
			lib.notify({
				title = '访问拒绝',
				description = '您需要安全卡A，也许运钞车上有概率能找到它',
				type = 'error'
			})
		end
	else
		DoScreenFadeOut(100)
		Wait(1000)
		SetEntityCoords(PlayerPedId(), 1138.1279, -3199.1963, -39.6657)
		SetEntityHeading(PlayerPedId(), 6)
		Wait(1000)
		DoScreenFadeIn(100)
		InsideLaundry = true
	end
end

RegisterNetEvent('stevo_moneywash:washactions')
AddEventHandler('stevo_moneywash:washactions', function()
	CurrentlyWashing = true
	lib.notify({
		title = '开始',
		description = '机器启动，洗钱开始.',
		type = 'inform'
	})
	Wait(1000)
	if lib.progressBar({
		duration = Config.WashDuration,
		label = '洗钱',
		useWhileDead = false,
		canCancel = false,
	}) then lib.notify({title = '完成', description = '您得到了可流通的美元!', type = 'inform'}) end
	CurrentlyWashing = false
    Cooldown()
end)

Citizen.CreateThread(function()
    exports.ox_target:addSphereZone({
		coords = vec3(1143.4563, -1000.2941, 45.3185),
		radius = 1,
		debug = drawZones,
		options = {
			{
				name = 'entry',
				icon = 'fa-solid fa-door-open',
				label = '进入洗钱室',
				onSelect = function()
					EnterLaundry()
				end
			}
		}
	})
	exports.ox_target:addSphereZone({
		coords = vec3(1137.6561, -3199.2949, -40.2689),
		radius = 1,
		debug = drawZones,
		options = {
			{
				name = 'exit',
				icon = 'fa-solid fa-door-open',
				label = '退出洗钱室',
				canInteract = function()
					return InsideLaundry
				end,
				onSelect = function()
					ExitLaundry()
				end
	
			}
		}
	})
	exports.ox_target:addSphereZone({
		coords = vec3(1122.4954, -3193.2864, -40.3926),
		radius = 1,
		debug = drawZones,
		options = {
			{
				name = 'wash',
				icon = 'fa-solid fa-money-bill',
				label = '洗钱',
				canInteract = function()
					return InsideLaundry
				end,
				onSelect = function()
					WashMoney()
				end
			}
		}
	})	
end)


	



