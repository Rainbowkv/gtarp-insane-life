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

local isEscorted = false
local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('ars_ambulancejob:client:GetEscorted', function(playerId)
    local ped = PlayerPedId()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        if PlayerData.metadata['isdead'] then
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

RegisterNetEvent('ars_ambulancejob:client:EscortPlayer', function(targetId)
    if exports['ars_ambulancejob']:isDead() then return end
    if not isEscorted then  -- 自己没有被拖动，没有死亡
        TriggerServerEvent('ars_ambulancejob:server:EscortPlayer', targetId)
    end
end)

RegisterNetEvent('ars_ambulancejob:client:MenuEscortPlayer', function()
    local player, distance = QBCore.Functions.GetClosestPlayer()
    if player ~= -1 and distance < 2.5 then
        local targetId = GetPlayerServerId(player)
        TriggerServerEvent('ars_ambulancejob:server:EscortPlayer', targetId)
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
end)