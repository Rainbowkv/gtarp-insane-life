local vehicle, plate
local vehicleComponents = {}
local drivingDistance = {}

-- Function

local function InitializeVehicleComponents()
    if not Config.UseWearableParts then return end
    vehicleComponents[plate] = {}
    for part, data in pairs(Config.WearableParts) do
        vehicleComponents[plate][part] = data.maxValue
    end
end

local function ApplyComponentEffect(component) -- add custom effects here for each component in config
    if component == 'radiator' then
        local engineHealth = GetVehicleEngineHealth(vehicle)
        SetVehicleEngineHealth(vehicle, engineHealth - 50.0)
    elseif component == 'axle' then
        for i = 0, 360 do
            Wait(15)
            SetVehicleSteeringScale(vehicle, i)
        end
    elseif component == 'brakes' then
        SetVehicleHandbrake(vehicle, true)
        Wait(5000)
        SetVehicleHandbrake(vehicle, false)
    elseif component == 'clutch' then
        SetVehicleEngineOn(vehicle, false, false, true)
        SetVehicleUndriveable(vehicle, true)
        Wait(5000)
        SetVehicleEngineOn(vehicle, true, false, true)
        SetVehicleUndriveable(vehicle, false)
    elseif component == 'fuel' then
        local fuel = exports[Config.FuelResource]:GetFuel(vehicle)
        exports[Config.FuelResource]:SetFuel(vehicle, fuel - 10)
    end
end

local function DamageRandomComponent()
    if not Config.UseWearableParts then return end
    local componentKeys = {}
    for component, _ in pairs(Config.WearableParts) do
        componentKeys[#componentKeys + 1] = component
    end
    local componentToDamage = componentKeys[math.random(#componentKeys)]
    vehicleComponents[plate][componentToDamage] = math.max(0, vehicleComponents[plate][componentToDamage] - Config.WearablePartsDamage)
    if vehicleComponents[plate][componentToDamage] <= Config.DamageThreshold then
        ApplyComponentEffect(componentToDamage)
    end
end

local function GetDamageAmount(distance)
    local damage = 0
    for _, tier in ipairs(Config.MinimalMetersForDamage) do
        if distance > tier.min then
            damage = tier.damage
        else
            break
        end
    end
    return damage
end

local function ApplyEngineEffect()
    QBCore.Functions.Notify('引擎故障...', 'error')
    local elapsedTime = 0
    while elapsedTime < 5000 do    -- 5秒后恢复引擎
        SetVehicleEngineOn(vehicle, false, true, false)
        Wait(200)  -- 每隔200ms（0.2秒）关闭一次引擎
        elapsedTime += 200
    end
    SetVehicleEngineOn(vehicle, true, true, false)
    QBCore.Functions.Notify('引擎暂时恢复(建议速度<72km/h)，请前往修车或叫拖车...', 'success')
end

local function ApplyDamageBasedOnDistance(distance)
    if not Config.UseDistanceDamage then return end
    local damage = GetDamageAmount(distance)
    local engineHealth = GetVehicleEngineHealth(vehicle)
    SetVehicleEngineHealth(vehicle, engineHealth - damage)
    if GetVehicleEngineHealth(vehicle) <= Config.DamageThreshold then
        ApplyEngineEffect()
    end
end

local function TrackDistance()
    local accumulatedDistance = 0
    CreateThread(function()
        while true do
            Wait(0)
            if not vehicle then break end

            local ped = PlayerPedId()
            local isDriver = GetPedInVehicleSeat(vehicle, -1) == ped
            local speed = GetEntitySpeed(vehicle)

            if isDriver then
                if plate and speed > 5 then
                    if not drivingDistance[plate] then
                        drivingDistance[plate] = { distance = 0, lastCoords = GetEntityCoords(vehicle) }
                        InitializeVehicleComponents()
                    else
                        local newCoords = GetEntityCoords(vehicle)
                        local distance = #(drivingDistance[plate].lastCoords - newCoords)
                        if distance > 5 then
                            accumulatedDistance += distance  -- distance无需手动清零，accumulatedDistance需要
                            drivingDistance[plate].lastCoords = newCoords
                            if accumulatedDistance >= 1000 then  -- 至少1km累计一次
                                drivingDistance[plate].distance += accumulatedDistance
                                -- Engine damage
                                ApplyDamageBasedOnDistance(accumulatedDistance)
                                accumulatedDistance = 0
                                -- Parts Damage
                                local randomNumber = math.random(1, 1000)
                                if randomNumber <= Config.WearablePartsChance then
                                    DamageRandomComponent()
                                end
                            elseif GetVehicleEngineHealth(vehicle) <= Config.DamageThreshold and speed >= 20 then  --引擎低于阈值后，平均速度不能超过 20*3.6 km/h
                                ApplyEngineEffect()
                            end
                        end
                    end
                end
            else
                if drivingDistance[plate] then
                    QBCore.Functions.Notify("本次驾驶里程: "..drivingDistance[plate].distance + accumulatedDistance.."m, 计入该车总里程...", 'success')
                    TriggerServerEvent('qb-mechanicjob:server:updateDrivingDistance', plate, drivingDistance[plate].distance + accumulatedDistance)
                    drivingDistance[plate].distance = 0  -- 保存后，清零此次里程数
                    TriggerServerEvent('qb-mechanicjob:server:updateVehicleComponents', plate, vehicleComponents[plate])
                end
                plate = nil
                vehicle = nil
                break
            end
        end
    end)
end

-- Handler

AddEventHandler('gameEventTriggered', function(event)
    if event == 'CEventNetworkPlayerEnteredVehicle' then
        if not Config.UseDistance then return end
        vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
        local originalPlate = GetVehicleNumberPlateText(vehicle)
        if not originalPlate then return end
        plate = Trim(originalPlate)
        local vehicleClass = GetVehicleClass(vehicle)
        if Config.IgnoreClasses[vehicleClass] then return end
        TrackDistance()
    end
end)
