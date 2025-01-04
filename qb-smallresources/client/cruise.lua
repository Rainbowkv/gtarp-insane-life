local QBCore = exports['qb-core']:GetCoreObject()
local vehicleClasses = {
    [0] = true,
    [1] = true,
    [2] = true,
    [3] = true,
    [4] = true,
    [5] = true,
    [6] = true,
    [7] = true,
    [8] = true,
    [9] = true,
    [10] = true,
    [11] = true,
    [12] = true,
    [13] = false,
    [14] = false,
    [15] = false,
    [16] = false,
    [17] = true,
    [18] = true,
    [19] = true,
    [20] = true,
    [21] = false
}

-- rb_code
local function other_check(veh)
    if GetVehicleEngineHealth(veh) < Config.DamageThreshold then 
        QBCore.Functions.Notify("巡航启动失败，您的载具引擎不健康", "error")
        return false 
    end
    return true
end
-- --

local function triggerCruiseControl(veh)
    local ped = PlayerPedId()
    if IsPedInAnyVehicle(ped, false) then
        local speed = GetEntitySpeed(veh)
        if speed > 0 and GetVehicleCurrentGear(veh) > 0 then
            speed = GetEntitySpeed(veh)
            local isTurningOrHandbraking = IsControlPressed(2, 76) or IsControlPressed(2, 63) or IsControlPressed(2, 64)
            TriggerEvent('seatbelt:client:ToggleCruise', true)
            QBCore.Functions.Notify(Lang:t('cruise.activated'), "success")

            CreateThread(function()
                while speed > 0 and GetPedInVehicleSeat(veh, -1) == ped do
                    Wait(0)
                    if not isTurningOrHandbraking and GetEntitySpeed(veh) < speed - 1.5 then
                        speed = 0
                        TriggerEvent('seatbelt:client:ToggleCruise', false)
                        QBCore.Functions.Notify(Lang:t('cruise.deactivated'), 'error')
                        Wait(2000)
                        break
                    end

                    if not isTurningOrHandbraking and IsVehicleOnAllWheels(veh) and GetEntitySpeed(veh) < speed then
                        SetVehicleForwardSpeed(veh, speed)
                    end

                    if IsControlJustPressed(1, 246) then
                        speed = GetEntitySpeed(veh)
                    end

                    if IsControlJustPressed(2, 72) then
                        speed = 0
                        TriggerEvent('seatbelt:client:ToggleCruise', false)
                        QBCore.Functions.Notify(Lang:t('cruise.deactivated'), 'error')
                        Wait(2000)
                        break
                    end
                end
            end)
        end
    end
end

RegisterCommand('togglecruise', function()
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped, false)
    local driver = GetPedInVehicleSeat(veh, -1)
    local vehClass = GetVehicleClass(veh)
    if ped ~=driver then
        QBCore.Functions.Notify("您必须驾驶载具才能启动巡航功能", "error")
        return
    end
    if not vehicleClasses[vehClass] then
        QBCore.Functions.Notify("该载具不搭载巡航功能", "error")
        return
    end
    if other_check(veh) then
        triggerCruiseControl(veh)
    end
end, false)

RegisterKeyMapping('togglecruise', 'Toggle Cruise Control', 'keyboard', 'Y')
