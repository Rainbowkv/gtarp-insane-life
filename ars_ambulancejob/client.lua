local DoesEntityExist = DoesEntityExist
local DeletePed       = DeletePed
local CreateThread    = CreateThread

player                = {}
player.injuries       = {}

local hospitals       = lib.load("data.hospitals")
local emsJobs         = lib.load("config").emsJobs
local clothingScript  = lib.load("config").clothingScript
local debug           = lib.load("config").debug
local function createZones()
    for index, hospital in pairs(hospitals) do
        local cfg = hospital

        if cfg.blip.enable then
            utils.createBlip(cfg.blip)
        end

        lib.zones.box({
            name = 'ars_hospital:' .. index,
            coords = cfg.zone.pos,
            size = cfg.zone.size,
            clothes = clothingScript and cfg.clothes,
            debug = debug,
            rotation = 0.0,
            onEnter = function(self)
                initGarage(cfg.garage, emsJobs)

                if self.clothes then
                    initClothes(self.clothes, emsJobs)
                end

                initParamedic()
            end,
            onExit = function(self)
                for k, v in pairs(peds) do
                    if DoesEntityExist(v) then
                        DeletePed(v)
                    end
                end

                unloadGarage()
            end
        })
    end
end


CreateThread(createZones)

-- rb_code  -- 先全部忽略被拷者执行操作的可能性
local isEscorted = false
local QBCore = exports['qb-core']:GetCoreObject()
local allowOperations = lib.load("config").allowOperations

exports('isEscorted', function()
    return isEscorted
end)

RegisterNetEvent('ars_ambulancejob:client:GetEscorted', function(playerId)
    local ped = PlayerPedId()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        if PlayerData.metadata['isdead'] or PlayerData.metadata['ishandcuffed'] then
            if not isEscorted then
                isEscorted = true
                local dragger = GetPlayerPed(GetPlayerFromServerId(playerId))
                SetEntityCoords(ped, GetOffsetFromEntityInWorldCoords(dragger, 0.0, 0.45, 0.0))
                AttachEntityToEntity(ped, dragger, 11816, 0.45, 0.45, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
            else
                isEscorted = false
                DetachEntity(ped, true, false)
            end
        end
    end)
end)

-- 护送
RegisterNetEvent('ars_ambulancejob:client:EscortPlayer', function(targetId)
    if exports['ars_ambulancejob']:isDead() or exports['origen_police']:isHandcuffed() or isEscorted then return end
    TriggerServerEvent('ars_ambulancejob:server:EscortPlayer', targetId)
end)

RegisterNetEvent('ars_ambulancejob:client:MenuEscortPlayer', function()
    if exports['ars_ambulancejob']:isDead() or exports['origen_police']:isHandcuffed() or isEscorted then return end
    local player, distance = QBCore.Functions.GetClosestPlayer()
    if player ~= -1 and distance < 2.5 then
        TriggerServerEvent('ars_ambulancejob:server:EscortPlayer', GetPlayerServerId(player))
    end
end)

-- 将市民放入车辆
RegisterNetEvent('ars_ambulancejob:client:PutPlayerInVehicle', function()
    if exports['ars_ambulancejob']:isDead() or exports['origen_police']:isHandcuffed() or isEscorted then return end
    local player, distance = QBCore.Functions.GetClosestPlayer()
    if player ~= -1 and distance < 2.5 then
        local playerId = GetPlayerServerId(player)
        TriggerServerEvent('ars_ambulancejob:server:PutPlayerInVehicle', playerId)
    else
        QBCore.Functions.Notify('没有人在附近', 'error')
    end
end)

RegisterNetEvent('ars_ambulancejob:client:PutInVehicle', function()
    local ped = PlayerPedId()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    if DoesEntityExist(vehicle) then
        for i = GetVehicleMaxNumberOfPassengers(vehicle), 0, -1 do
            if IsVehicleSeatFree(vehicle, i) then
                isEscorted = false
                ClearPedTasks(ped)
                DetachEntity(ped, true, false)
                Wait(100)
                SetPedIntoVehicle(ped, vehicle, i)
                return
            end
        end
    end
end)

-- 将市民挪出车辆
RegisterNetEvent('ars_ambulancejob:client:SetPlayerOutVehicle', function(data)
    local vehicle = data.entity
    local netId = NetworkGetNetworkIdFromEntity(vehicle)
    local maxSeats = GetVehicleModelNumberOfSeats(GetEntityModel(vehicle)) - 1
    local playerIds = {}

    -- 遍历车辆所有座位，获取坐在车上的玩家的ID
    for seat = -1, maxSeats do
        local ped = GetPedInVehicleSeat(vehicle, seat)
        if ped and ped ~= 0 and IsPedAPlayer(ped) then
            local playerId = GetPlayerServerId(NetworkGetPlayerIndexFromPed(ped))
            table.insert(playerIds, playerId)
        end
    end

    -- 将玩家 ID 列表发送到服务端
    TriggerServerEvent('ars_ambulancejob:server:SetPlayerOutVehicle', netId, playerIds)
end)

RegisterNetEvent('ars_ambulancejob:client:SetOutVehicle', function()
    local ped = PlayerPedId()
    if IsPedInAnyVehicle(ped, false) then
        local vehicle = GetVehiclePedIsIn(ped, false)
        TaskLeaveVehicle(ped, vehicle, 16)
    end
end)

CreateThread(function()
    exports.ox_target:addGlobalPlayer({
        {
            icon = 'fas fa-door-open',
            label = '拖动',
            distance = 1.2,
            canInteract = function(entity, distance, coords, name, bone)
                -- 这里的 entity 是玩家Ped
                return true -- 同样允许始终交互
            end,
            onSelect = function(data)
                -- 触发事件，传目标ID
                TriggerEvent('ars_ambulancejob:client:EscortPlayer', GetPlayerServerId(NetworkGetEntityOwner(data.entity)))
            end
        }
    })
    exports.ox_target:addGlobalVehicle({
        {
            name = 'put a player',
            label = '放入市民',
            icon = 'fa-solid fa-car',
            distance = 1.2,
            onSelect = function(data)
                TriggerEvent('ars_ambulancejob:client:PutPlayerInVehicle')
            end
        },
        {
            name = 'take a player',
            label = '挪出市民',
            icon = 'fa-solid fa-car',
            distance = 1.2,
            onSelect = function(data)
                TriggerEvent('ars_ambulancejob:client:SetPlayerOutVehicle', data)
            end
        },
    })
end)
