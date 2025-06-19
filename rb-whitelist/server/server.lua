local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('rb-whitelist:server:checkPlayerStatus', function()
    local src = source
    local license = QBCore.Functions.GetIdentifier(src, 'license')
    local player = QBCore.Functions.GetPlayer(src)
    local playerName = player.PlayerData.charinfo.firstname .. ' ' .. player.PlayerData.charinfo.lastname

    MySQL.Async.fetchScalar('SELECT status FROM rb_whitelist WHERE license = ? AND player_name = ?', {license, playerName}, function(result)
        if result == nil or result == 'denied' then
            TriggerClientEvent('rb-whitelist:client:startWhitelistMonitor', src)
            TriggerClientEvent('rb-whitelist:client:openMenu', src, true)
        elseif result == 'pending' then
            TriggerClientEvent('rb-whitelist:client:startWhitelistMonitor', src)
            TriggerClientEvent('rb-whitelist:client:notify', src, '您的白名单仍在审核中', 'inform')
        else
            TriggerClientEvent('rb-whitelist:client:notify', src, '您已通过白名单，请遵守规则，游玩愉快', 'success')
        end
    end)
end)

RegisterNetEvent('rb-whitelist:server:submitAnswers', function(answers)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    local license = QBCore.Functions.GetIdentifier(src, 'license')
    local playerName = player.PlayerData.charinfo.firstname .. ' ' .. player.PlayerData.charinfo.lastname

    local correct = true
    for i, question in ipairs(Config.WhitelistQuestions) do
        if answers[i] ~= question.answer then
            correct = false
            break
        end
    end

    if correct then
        MySQL.Async.execute('REPLACE INTO rb_whitelist (license, player_name, status) VALUES (?, ?, ?)', {
            license, playerName, 'pending'
        })
        TriggerClientEvent('rb-whitelist:client:notify', src, '所有题目回答正确，已提交审核，请等待管理员审批。', 'success')
    else
        TriggerClientEvent('rb-whitelist:client:notify', src, '有题目答案错误，请重新作答。', 'error')
    end
end)

RegisterNetEvent('rb-whitelist:server:reviewWhitelist', function(answers)
    local src = source
    if exports['ps-adminmenu']:isAdmin(src) then
        MySQL.Async.fetchAll('SELECT license, player_name FROM rb_whitelist WHERE status = ?', {'pending'}, function(results)
            TriggerClientEvent('rb-whitelist:client:showPendingList', src, results)  -- 把 pending 名单发送到客户端
        end)
    else
        TriggerClientEvent('rb-whitelist:client:notify', src, '您不是管理员', 'error')
    end
end)

RegisterNetEvent('rb-whitelist:server:setStatus', function(license, playerName, status)
    local src = source
    if not exports['ps-adminmenu']:isAdmin(src) then
        TriggerClientEvent('rb-whitelist:client:notify', src, '您不是管理员，无法修改白名单状态', 'error')
        return
    end

    MySQL.Async.execute('UPDATE rb_whitelist SET status = ?, operator = ? WHERE license = ? AND player_name = ?', {
        status, GetPlayerName(src), license, playerName
    }, function(rowsChanged)
        if rowsChanged > 0 then
            -- 通过管理员
            TriggerClientEvent('rb-whitelist:client:notify', src, ('已%s：%s'):format(status == 'approved' and '通过' or '拒绝', playerName), status == 'approved' and 'success' or 'error')
            -- 通知该名玩家，并且如果成功，给予该玩家和管理员奖励
            for _, id in ipairs(GetPlayers()) do
                local player = QBCore.Functions.GetPlayer(tonumber(id))
                if player then
                    local pLicense = QBCore.Functions.GetIdentifier(tonumber(id), 'license')
                    local pName = player.PlayerData.charinfo.firstname .. ' ' .. player.PlayerData.charinfo.lastname
                    if pLicense == license and pName == playerName then
                        -- 找到匹配玩家，通知客户端更新状态
                        if status == 'approved' then
                            TriggerClientEvent('rb-whitelist:client:notify', tonumber(id), '您已通过白名单，祝游玩愉快！', 'success')
                            TriggerClientEvent('rb-whitelist:client:endWhitelistMonitor', tonumber(id))
                            player.Functions.AddMoney('cash', Config.reward, '通过白名单')  -- 新市民奖励
                            QBCore.Functions.GetPlayer(src).Functions.AddMoney('cash', Config.reward, '审核白名单')  -- 管理员奖励
                        elseif status == 'denied' then
                            TriggerClientEvent('rb-whitelist:client:notify', tonumber(id), '您的白名单申请被拒绝，您需要重新作答。', 'error')
                            TriggerClientEvent('rb-whitelist:client:openMenu', tonumber(id), true)
                        end
                        break
                    end
                end
            end
        else
            TriggerClientEvent('rb-whitelist:client:notify', src, '更新失败，可能该玩家信息已变更', 'error')
        end
    end)
end)