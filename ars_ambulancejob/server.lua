player               = {}
distressCalls        = {}
local emsJobs        = lib.load("config").emsJobs
local useOxInventory = lib.load("config").useOxInventory
local ox_inventory   = useOxInventory and exports.ox_inventory

RegisterNetEvent("ars_ambulancejob:updateDeathStatus", function(death)
    local source = source
    local data = {}
    data.target = source
    data.status = death.isDead
    data.killedBy = death?.weapon or false

    Framework.updateStatus(data)
end)

RegisterNetEvent("ars_ambulancejob:revivePlayer", function(data)
    local source = source
    if not Framework.hasJob(source, emsJobs) or not source or source < 1 then return end

    local sourcePed = GetPlayerPed(source)
    local targetPed = GetPlayerPed(data.targetServerId)

    if data.targetServerId < 1 or #(GetEntityCoords(sourcePed) - GetEntityCoords(targetPed)) > 4.0 then
        print(source .. ' probile modder')
    else
        local dataToSend = {}
        dataToSend.revive = true

        TriggerClientEvent('ars_ambulancejob:healPlayer', tonumber(data.targetServerId), dataToSend)
    end
end)

RegisterNetEvent("ars_ambulancejob:healPlayer", function(data)
    local source = source
    if not Framework.hasJob(source, emsJobs) or not source or source < 1 then return end


    local sourcePed = GetPlayerPed(source)
    local targetPed = GetPlayerPed(data.targetServerId)

    if data.targetServerId < 1 or #(GetEntityCoords(sourcePed) - GetEntityCoords(targetPed)) > 4.0 then
        return print(source .. ' probile modder')
    end


    if data.injury then
        TriggerClientEvent('ars_ambulancejob:healPlayer', tonumber(data.targetServerId), data)
    else
        data.anim = "medic"
        TriggerClientEvent("ars_ambulancejob:playHealAnim", source, data)
        data.anim = "dead"
        TriggerClientEvent("ars_ambulancejob:playHealAnim", data.targetServerId, data)
    end
end)

RegisterNetEvent("ars_ambulancejob:createDistressCall", function(data)
    local source = source
    if not source or source < 1 then return end

    local playerName = Framework.getPlayerName(source)

    distressCalls[#distressCalls + 1] = {
        msg = data.msg,
        gps = data.gps,
        location = data.location,
        name = playerName
    }

    local players = GetPlayers()

    for i = 1, #players do
        local id = tonumber(players[i])

        if Framework.hasJob(id, emsJobs) then
            TriggerClientEvent("ars_ambulancejob:createDistressCall", id, playerName)
        end
    end
end)

RegisterNetEvent("ars_ambulancejob:callCompleted", function(call)
    for i = #distressCalls, 1, -1 do
        if distressCalls[i].gps == call.gps and distressCalls[i].msg == call.msg then
            table.remove(distressCalls, i)
            break
        end
    end
end)

RegisterNetEvent("ars_ambulancejob:removAddItem", function(data)
    local source = source

    local method = data.toggle and Framework.removeItem or Framework.addItem

    method(source, data.item, data.quantity)
end)

RegisterNetEvent("ars_ambulancejob:useItem", function(data)
    if not Framework.hasJob(source, emsJobs) then return end

    if ox_inventory then
        local item = ox_inventory:GetSlotWithItem(source, data.item)
        local slot = item.slot

        return ox_inventory:SetDurability(source, slot, item.metadata?.durability and (item.metadata?.durability - data.value) or (100 - data.value))
    end

    Framework.removeItem(data.item)
end)
local removeItemsOnRespawn = lib.load("config").removeItemsOnRespawn
RegisterNetEvent("ars_ambulancejob:removeInventory", function()
    local source = source
    if player[source].isDead and removeItemsOnRespawn then
        Framework.wipeInventory(source, lib.load("config").keepItemsOnRespawn)
    end
end)

RegisterNetEvent("ars_ambulancejob:putOnStretcher", function(data)
    if not player[data.target].isDead then return end
    TriggerClientEvent("ars_ambulancejob:putOnStretcher", data.target, data.toggle)
end)

RegisterNetEvent("ars_ambulancejob:togglePatientFromVehicle", function(data)
    if not player[data.target].isDead then return end

    TriggerClientEvent("ars_ambulancejob:togglePatientFromVehicle", data.target, data.vehicle)
end)

lib.callback.register('ars_ambulancejob:getDeathStatus', function(source, target)
    return player[target] and player[target] or Framework.getDeathStatus(target or source)
end)

lib.callback.register('ars_ambulancejob:getData', function(source, target)
    local data = {}
    data.injuries = Player(target).state.injuries or false
    data.status = Framework.getDeathStatus(target or source) or Player(target).state.dead
    data.killedBy = player[target]?.killedBy or false

    return data
end)

lib.callback.register('ars_ambulancejob:getDistressCalls', function(source)
    return distressCalls
end)

lib.callback.register('ars_ambulancejob:openMedicalBag', function(playerId)
    local source = playerId
    local playerIdentifier = GetPlayerIdentifierByType(source, "license"):gsub("license:", "")

    ox_inventory:RegisterStash("medicalBag_" .. playerIdentifier, "Medical Bag", 10, 50 * 1000)

    return "medicalBag_" .. playerIdentifier
end)


lib.callback.register('ars_ambulancejob:getMedicsOniline', function(source)
    local count = 0
    local players = GetPlayers()

    for i = 1, #players do
        local id = tonumber(players[i])

        if Framework.hasJob(id, emsJobs) then
            count += 1
        end
    end
    return count
end)

if ox_inventory then
    lib.callback.register('ars_ambulancejob:getItem', function(source, name)
        local item = ox_inventory:GetSlotWithItem(source, name)

        return item
    end)

    local medicBagItem = lib.load("config").medicBagItem
    ox_inventory:registerHook('swapItems', function(payload)
        if string.find(payload.toInventory, "medicalBag_") then
            if payload.fromSlot.name == medicBagItem then return false end
        end
    end, {})

    AddEventHandler('onServerResourceStart', function(resourceName)
        if resourceName == GetCurrentResourceName() then
            local hospitals = lib.load("data.hospitals")

            for index, hospital in pairs(hospitals) do
                local cfg = hospital

                for id, stash in pairs(cfg.stash) do
                    ox_inventory:RegisterStash(id, stash.label, stash.slots, stash.weight * 1000, stash.shared and true or nil)
                end

                for id, pharmacy in pairs(cfg.pharmacy) do
                    ox_inventory:RegisterShop(id, {
                        name = pharmacy.label,
                        inventory = pharmacy.items,
                    })
                end
            end
        end
    end)
end



lib.versionCheck('Arius-Development/ars_ambulancejob')

-- rb_code
RegisterNetEvent('ars_ambulance:server:AcquireKeys', function(plate)
    exports['qb-vehiclekeys']:GiveKeys(source, plate)
end)

RegisterNetEvent('ars_ambulance:server:ReturnKeys', function(plate)
    exports['qb-vehiclekeys']:RemoveKeys(source, plate)
end)

-- 护送
RegisterNetEvent('ars_ambulancejob:server:EscortPlayer', function(playerId)
    local src = source
    local playerPed = GetPlayerPed(src)
    local targetPed = GetPlayerPed(playerId)
    local playerCoords = GetEntityCoords(playerPed)
    local targetCoords = GetEntityCoords(targetPed)
    if #(playerCoords - targetCoords) > 1.5 then 
        TriggerClientEvent('QBCore:Notify', src, 'id为'..playerId..'距离你太远了', 'error')
        return 
    end

    local Player = QBCore.Functions.GetPlayer(src)
    local EscortPlayer = QBCore.Functions.GetPlayer(playerId)
    if not Player or not EscortPlayer then return end
    local metadata = EscortPlayer.PlayerData.metadata
    if metadata['isdead'] or metadata["ishandcuffed"] then
        TriggerClientEvent('ars_ambulancejob:client:Escorting', src)
        TriggerClientEvent('ars_ambulancejob:client:GetEscorted', EscortPlayer.PlayerData.source, src)
    else
        TriggerClientEvent('QBCore:Notify', src, "该市民未死亡或未被上手铐，无法拖动", 'error')
    end
end)

-- 将市民放入车辆
RegisterNetEvent('ars_ambulancejob:server:PutPlayerInVehicle', function(playerId)
    local src = source
    local playerPed = GetPlayerPed(src)
    local targetPed = GetPlayerPed(playerId)
    local playerCoords = GetEntityCoords(playerPed)
    local targetCoords = GetEntityCoords(targetPed)
    if #(playerCoords - targetCoords) > 3.0 then 
        TriggerClientEvent('QBCore:Notify', src, 'id为'..playerId..'距离你太远了', 'error')
        return
    end

    local EscortPlayer = QBCore.Functions.GetPlayer(playerId)
    if not QBCore.Functions.GetPlayer(src) or not EscortPlayer then return end
    
    if EscortPlayer.PlayerData.metadata['ishandcuffed'] or EscortPlayer.PlayerData.metadata['isdead'] then
        TriggerClientEvent('ars_ambulancejob:client:PutInVehicle', EscortPlayer.PlayerData.source)
    else
        TriggerClientEvent('QBCore:Notify', src, '该市民没有被上手铐或者死亡', 'error')
    end
end)

-- 将市民挪出车辆
RegisterNetEvent('ars_ambulancejob:server:SetPlayerOutVehicle', function(netId, playerIds)
    local src = source
    local vehicle = NetworkGetEntityFromNetworkId(netId)
    if not vehicle or not DoesEntityExist(vehicle) then 
        TriggerClientEvent('QBCore:Notify', src, '该载具不存在', 'error')
        return 
    end

    -- 遍历所有传递过来的玩家ID
    for _, playerId in ipairs(playerIds) do
        local targetPlayer = QBCore.Functions.GetPlayer(playerId)
        if targetPlayer then
            local meta = targetPlayer.PlayerData.metadata or {}
            local isDead = meta['isdead']
            local isCuffed = meta['ishandcuffed']

            -- 判断死亡或被铐
            if isDead or isCuffed then
                -- 告诉客户端将该玩家挪出车辆
                TriggerClientEvent('ars_ambulancejob:client:SetOutVehicle', playerId)
                break -- 只挪出第一个符合条件的人
            end
        end
    end
end)

-- 护甲的元数据更新
RegisterNetEvent('ars_ambulancejob:server:SetArmor', function(source, value)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	if Player then
		Player.Functions.SetMetaData('armor', value)
	end
end)