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
                if currentHealth >= 110 then  -- >=110滴血才扣血, 110滴血以下uz_PureHud会开始让人晕厥
                    local decreaseThreshold = math.random(5, 10)
                    SetEntityHealth(ped, currentHealth - decreaseThreshold)
                    if currentHealth < 120 then
                        QBCore.Functions.Notify("您即将因为健康值过低而开始晕倒...", "error")
                    end
                end
            end
        end
        Wait(sleep)
    end
end)