CreateThread(function()
    local sleep = 60000 * QBCore.Config.UpdateInterval
    while true do
        if LocalPlayer.state.isLoggedIn then
            TriggerServerEvent('QBCore:UpdatePlayer')
        end
        Wait(sleep)
    end
end)

CreateThread(function()
    local sleep = 60000 * QBCore.Config.StatusInterval  -- 饥饿渴时，掉血的速度
    while true do
        if LocalPlayer.state.isLoggedIn then
            if (QBCore.PlayerData.metadata['hunger'] <= 0 or QBCore.PlayerData.metadata['thirst'] <= 0) and not (QBCore.PlayerData.metadata['isdead'] or QBCore.PlayerData.metadata['inlaststand']) then
                local ped = PlayerPedId()
                local currentHealth = GetEntityHealth(ped)
                -- if currentHealth > 110 then  -- 超过110滴血才扣血, 100滴血就是死了
                if currentHealth > 100 then  -- 超过100滴血才扣血, 100滴血以下已经死了
                    local decreaseThreshold = math.random(5, 10)
                    SetEntityHealth(ped, currentHealth - decreaseThreshold)
                    if currentHealth < 120 then
                        QBCore.Functions.Notify("您即将因为饥饿或口渴而死亡...", "error")
                    end
                end
            end
        end
        Wait(sleep)
    end
end)