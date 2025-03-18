-- Variables
local isEscorting = false
local isHandcuffed = false

-- Functions
exports('isEscorting', function()
    return isEscorting
end)

exports('IsHandcuffed', function()
    return isHandcuffed
end)


local function loadAnimDict(dict) -- interactions, job,
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(10)
    end
end

local function IsTargetDead(playerId)
    local retval = false
    local hasReturned = false
    QBCore.Functions.TriggerCallback('police:server:isPlayerDead', function(result)
        retval = result
        hasReturned = true
    end, playerId)
    while not hasReturned do
        Wait(10)
    end
    return retval
end

local function HandCuffAnimation()
    local ped = PlayerPedId()
    if isHandcuffed == true then
        TriggerServerEvent('InteractSound_SV:PlayOnSource', 'Cuff', 0.2)
    else
        TriggerServerEvent('InteractSound_SV:PlayOnSource', 'Uncuff', 0.2)
    end

    loadAnimDict('mp_arrest_paired')
    Wait(100)
    TaskPlayAnim(ped, 'mp_arrest_paired', 'cop_p2_back_right', 3.0, 3.0, -1, 48, 0, 0, 0, 0)
    TriggerServerEvent('InteractSound_SV:PlayOnSource', 'Cuff', 0.2)
    Wait(3500)
    TaskPlayAnim(ped, 'mp_arrest_paired', 'exit', 3.0, 3.0, -1, 48, 0, 0, 0, 0)
end

local function GetCuffedAnimation(playerId)
    local ped = PlayerPedId()
    local cuffer = GetPlayerPed(GetPlayerFromServerId(playerId))
    local heading = GetEntityHeading(cuffer)
    TriggerServerEvent('InteractSound_SV:PlayOnSource', 'Cuff', 0.2)
    loadAnimDict('mp_arrest_paired')
    SetEntityCoords(ped, GetOffsetFromEntityInWorldCoords(cuffer, 0.0, 0.45, 0.0))

    Wait(100)
    SetEntityHeading(ped, heading)
    TaskPlayAnim(ped, 'mp_arrest_paired', 'crook_p2_back_right', 3.0, 3.0, -1, 32, 0, 0, 0, 0, true, true, true)
    Wait(2500)
end

-- Events
RegisterNetEvent('police:client:SetOutVehicle', function()
    local ped = PlayerPedId()
    if IsPedInAnyVehicle(ped, false) then
        local vehicle = GetVehiclePedIsIn(ped, false)
        TaskLeaveVehicle(ped, vehicle, 16)
    end
end)

RegisterNetEvent('police:client:PutInVehicle', function()
    local ped = PlayerPedId()
    if isHandcuffed or isEscorted then
        local vehicle = QBCore.Functions.GetClosestVehicle()
        if DoesEntityExist(vehicle) then
            for i = GetVehicleMaxNumberOfPassengers(vehicle), 0, -1 do
                if IsVehicleSeatFree(vehicle, i) then
                    isEscorted = false
                    TriggerEvent('hospital:client:isEscorted', isEscorted)
                    ClearPedTasks(ped)
                    DetachEntity(ped, true, false)

                    Wait(100)
                    SetPedIntoVehicle(ped, vehicle, i)
                    return
                end
            end
        end
    end
end)

RegisterNetEvent('police:client:SeizeCash', function()
    local player, distance = QBCore.Functions.GetClosestPlayer()
    if player ~= -1 and distance < 2.5 then
        local playerId = GetPlayerServerId(player)
        TriggerServerEvent('police:server:SeizeCash', playerId)
    else
        QBCore.Functions.Notify(Lang:t('error.none_nearby'), 'error')
    end
end)

RegisterNetEvent('police:client:SeizeDriverLicense', function()
    local player, distance = QBCore.Functions.GetClosestPlayer()
    if player ~= -1 and distance < 2.5 then
        local playerId = GetPlayerServerId(player)
        TriggerServerEvent('police:server:SeizeDriverLicense', playerId)
    else
        QBCore.Functions.Notify(Lang:t('error.none_nearby'), 'error')
    end
end)

RegisterNetEvent('police:client:RobPlayer', function()
    local player, distance = QBCore.Functions.GetClosestPlayer()
    local ped = PlayerPedId()
    if player ~= -1 and distance < 2.5 then
        local playerPed = GetPlayerPed(player)
        local playerId = GetPlayerServerId(player)
        if IsEntityPlayingAnim(playerPed, 'missminuteman_1ig_2', 'handsup_base', 3) or IsEntityPlayingAnim(playerPed, 'mp_arresting', 'idle', 3) or IsTargetDead(playerId) then
            QBCore.Functions.Progressbar('robbing_player', Lang:t('progressbar.robbing'), math.random(5000, 7000), false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = 'random@shop_robbery',
                anim = 'robbery_action_b',
                flags = 16,
            }, {}, {}, function()
                local plyCoords = GetEntityCoords(playerPed)
                local pos = GetEntityCoords(ped)
                if #(pos - plyCoords) < 2.5 then
                    TriggerServerEvent('police:server:RobPlayer', playerId)
                else
                    QBCore.Functions.Notify(Lang:t('error.none_nearby'), 'error')
                end
            end)
        end
    else
        QBCore.Functions.Notify(Lang:t('error.none_nearby'), 'error')
    end
end)

RegisterNetEvent('police:client:JailPlayer', function()
    local player, distance = QBCore.Functions.GetClosestPlayer()
    if player ~= -1 and distance < 2.5 then
        local playerId = GetPlayerServerId(player)
        local dialog = exports['qb-input']:ShowInput({
            header = Lang:t('info.jail_time_input'),
            submitText = Lang:t('info.submit'),
            inputs = {
                {
                    text = Lang:t('info.time_months'),
                    name = 'jailtime',
                    type = 'number',
                    isRequired = true
                }
            }
        })
        if tonumber(dialog['jailtime']) > 0 then
            TriggerServerEvent('police:server:JailPlayer', playerId, tonumber(dialog['jailtime']))
        else
            QBCore.Functions.Notify(Lang:t('error.time_higher'), 'error')
        end
    else
        QBCore.Functions.Notify(Lang:t('error.none_nearby'), 'error')
    end
end)

RegisterNetEvent('police:client:BillPlayer', function()
    local player, distance = QBCore.Functions.GetClosestPlayer()
    if player ~= -1 and distance < 2.5 then
        local playerId = GetPlayerServerId(player)
        local dialog = exports['qb-input']:ShowInput({
            header = Lang:t('info.bill'),
            submitText = Lang:t('info.submit'),
            inputs = {
                {
                    text = Lang:t('info.amount'),
                    name = 'bill',
                    type = 'number',
                    isRequired = true
                }
            }
        })
        if tonumber(dialog['bill']) > 0 then
            TriggerServerEvent('police:server:BillPlayer', playerId, tonumber(dialog['bill']))
        else
            QBCore.Functions.Notify(Lang:t('error.amount_higher'), 'error')
        end
    else
        QBCore.Functions.Notify(Lang:t('error.none_nearby'), 'error')
    end
end)

RegisterNetEvent('police:client:PutPlayerInVehicle', function()
    local player, distance = QBCore.Functions.GetClosestPlayer()
    if player ~= -1 and distance < 2.5 then
        local playerId = GetPlayerServerId(player)
        if not isHandcuffed and not isEscorted then
            TriggerServerEvent('police:server:PutPlayerInVehicle', playerId)
        end
    else
        QBCore.Functions.Notify(Lang:t('error.none_nearby'), 'error')
    end
end)

RegisterNetEvent('police:client:SetPlayerOutVehicle', function()
    local player, distance = QBCore.Functions.GetClosestPlayer()
    if player ~= -1 and distance < 2.5 then
        local playerId = GetPlayerServerId(player)
        if not isHandcuffed and not isEscorted then
            TriggerServerEvent('police:server:SetPlayerOutVehicle', playerId)
        end
    else
        QBCore.Functions.Notify(Lang:t('error.none_nearby'), 'error')
    end
end)

RegisterNetEvent('police:client:EscortPlayer', function()
    local player, distance = QBCore.Functions.GetClosestPlayer()
    if player ~= -1 and distance < 2.5 then
        local playerId = GetPlayerServerId(player)
        if not isHandcuffed and not isEscorted then
            TriggerServerEvent('police:server:EscortPlayer', playerId)
        end
    else
        QBCore.Functions.Notify(Lang:t('error.none_nearby'), 'error')
    end
end)

RegisterNetEvent('police:client:KidnapPlayer', function()
    local player, distance = QBCore.Functions.GetClosestPlayer()
    if player ~= -1 and distance < 2.5 then
        local playerId = GetPlayerServerId(player)
        if not IsPedInAnyVehicle(GetPlayerPed(player)) then
            if not isHandcuffed and not isEscorted then
                TriggerServerEvent('police:server:KidnapPlayer', playerId)
            end
        end
    else
        QBCore.Functions.Notify(Lang:t('error.none_nearby'), 'error')
    end
end)

RegisterNetEvent('police:client:CuffPlayerSoft', function()
    if not IsPedRagdoll(PlayerPedId()) then
        local player, distance = QBCore.Functions.GetClosestPlayer()
        if player ~= -1 and distance < 1.5 then
            local playerId = GetPlayerServerId(player)
            if not IsPedInAnyVehicle(GetPlayerPed(player)) and not IsPedInAnyVehicle(PlayerPedId()) then
                TriggerServerEvent('police:server:CuffPlayer', playerId, true)
                HandCuffAnimation()
            else
                QBCore.Functions.Notify(Lang:t('error.vehicle_cuff'), 'error')
            end
        else
            QBCore.Functions.Notify(Lang:t('error.none_nearby'), 'error')
        end
    else
        Wait(2000)
    end
end)

RegisterNetEvent('police:client:CuffPlayer', function()
    if not IsPedRagdoll(PlayerPedId()) then
        local player, distance = QBCore.Functions.GetClosestPlayer()
        if player ~= -1 and distance < 1.5 then
            local result = QBCore.Functions.HasItem(Config.HandCuffItem)
            if result then
                local playerId = GetPlayerServerId(player)
                if not IsPedInAnyVehicle(GetPlayerPed(player)) and not IsPedInAnyVehicle(PlayerPedId()) then
                    TriggerServerEvent('police:server:CuffPlayer', playerId, false)
                    HandCuffAnimation()
                else
                    QBCore.Functions.Notify(Lang:t('error.vehicle_cuff'), 'error')
                end
            else
                QBCore.Functions.Notify(Lang:t('error.no_cuff'), 'error')
            end
        else
            QBCore.Functions.Notify(Lang:t('error.none_nearby'), 'error')
        end
    else
        Wait(2000)
    end
end)

RegisterNetEvent('police:client:GetEscorted', function(playerId)
    local ped = PlayerPedId()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        if PlayerData.metadata['isdead'] or isHandcuffed or PlayerData.metadata['inlaststand'] then
            if not isEscorted then
                isEscorted = true
                local dragger = GetPlayerPed(GetPlayerFromServerId(playerId))
                SetEntityCoords(ped, GetOffsetFromEntityInWorldCoords(dragger, 0.0, 0.45, 0.0))
                AttachEntityToEntity(ped, dragger, 11816, 0.45, 0.45, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
            else
                isEscorted = false
                DetachEntity(ped, true, false)
            end
            TriggerEvent('hospital:client:isEscorted', isEscorted)
        end
    end)
end)

RegisterNetEvent('police:client:DeEscort', function()
    isEscorted = false
    TriggerEvent('hospital:client:isEscorted', isEscorted)
    DetachEntity(PlayerPedId(), true, false)
end)

RegisterNetEvent('police:client:GetKidnappedTarget', function(playerId)
    local ped = PlayerPedId()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        if PlayerData.metadata['isdead'] or PlayerData.metadata['inlaststand'] or isHandcuffed then
            if not isEscorted then
                isEscorted = true
                local dragger = GetPlayerPed(GetPlayerFromServerId(playerId))
                RequestAnimDict('nm')

                while not HasAnimDictLoaded('nm') do
                    Wait(10)
                end
                AttachEntityToEntity(ped, dragger, 0, 0.27, 0.15, 0.63, 0.5, 0.5, 0.0, false, false, false, false, 2, false)
                TaskPlayAnim(ped, 'nm', 'firemans_carry', 8.0, -8.0, 100000, 33, 0, false, false, false)
            else
                isEscorted = false
                DetachEntity(ped, true, false)
                ClearPedTasksImmediately(ped)
            end
            TriggerEvent('hospital:client:isEscorted', isEscorted)
        end
    end)
end)

RegisterNetEvent('police:client:GetKidnappedDragger', function()
    QBCore.Functions.GetPlayerData(function(_)
        if not isEscorting then
            local dragger = PlayerPedId()
            RequestAnimDict('missfinale_c2mcs_1')

            while not HasAnimDictLoaded('missfinale_c2mcs_1') do
                Wait(10)
            end
            TaskPlayAnim(dragger, 'missfinale_c2mcs_1', 'fin_c2_mcs_1_camman', 8.0, -8.0, 100000, 49, 0, false, false, false)
            isEscorting = true
        else
            local dragger = PlayerPedId()
            ClearPedSecondaryTask(dragger)
            ClearPedTasksImmediately(dragger)
            isEscorting = false
        end
        TriggerEvent('hospital:client:SetEscortingState', isEscorting)
        TriggerEvent('qb-kidnapping:client:SetKidnapping', isEscorting)
    end)
end)

RegisterNetEvent('police:client:GetCuffed', function(playerId, isSoftcuff)
    local ped = PlayerPedId()
    if not isHandcuffed then
        isHandcuffed = true
        TriggerServerEvent('police:server:SetHandcuffStatus', true)
        ClearPedTasksImmediately(ped)
        if GetSelectedPedWeapon(ped) ~= `WEAPON_UNARMED` then
            SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
        end
        if not isSoftcuff then
            cuffType = 16
            GetCuffedAnimation(playerId)  -- 软手铐还没搞清楚是哪个
            QBCore.Functions.Notify(Lang:t('info.cuff'), 'primary')
        else
            cuffType = 49
            GetCuffedAnimation(playerId)
            QBCore.Functions.Notify(Lang:t('info.cuffed_walk'), 'primary')
        end
    else
        isHandcuffed = false
        isEscorted = false
        TriggerEvent('hospital:client:isEscorted', isEscorted)
        DetachEntity(ped, true, false)
        TriggerServerEvent('police:server:SetHandcuffStatus', false)
        ClearPedTasksImmediately(ped)
        TriggerServerEvent('InteractSound_SV:PlayOnSource', 'Uncuff', 0.2)
        QBCore.Functions.Notify(Lang:t('success.uncuffed'), 'success')
    end
end)

-- rb_code
RegisterNetEvent('qb-police:client:EscortPlayer-forQbTarget', function(entity)
    if entity then
        local target_id = GetPlayerServerId(NetworkGetEntityOwner(entity))
        if not isHandcuffed and not isEscorted then
            TriggerServerEvent('police:server:EscortPlayer', target_id)
            --- 之后按下x键就解除护送
            while true do
                Citizen.Wait(0) -- 确保不会卡死线程
                if IsControlJustPressed(0, 73) then -- 73 是 X 键的 keycode
                    TriggerServerEvent('police:server:EscortPlayer', target_id)
                    break
                end
            end
        end
    else
        QBCore.Functions.Notify(Lang:t('error.none_nearby'), 'error')
    end
end)
-- --

-- Threads
CreateThread(function()
    while true do
        Wait(1)
        if isEscorted then
            DisableAllControlActions(0)
            EnableControlAction(0, 1, true)
            EnableControlAction(0, 2, true)
            EnableControlAction(0, 245, true)
            EnableControlAction(0, 322, true)
            EnableControlAction(0, 249, true)
            EnableControlAction(0, 46, true)
        end

        if isHandcuffed then
            for _, control in ipairs(Config.controlsToDisable) do
                DisableControlAction(0, control, true)
            end

            if (not IsEntityPlayingAnim(PlayerPedId(), 'mp_arresting', 'idle', 3) and not IsEntityPlayingAnim(PlayerPedId(), 'mp_arrest_paired', 'crook_p2_back_right', 3)) and not QBCore.Functions.GetPlayerData().metadata['isdead'] then
                loadAnimDict('mp_arresting')
                TaskPlayAnim(PlayerPedId(), 'mp_arresting', 'idle', 8.0, -8, -1, cuffType, 0, 0, 0, 0)
            end
        end
        if not isHandcuffed and not isEscorted then
            Wait(2000)
        end
    end
end)