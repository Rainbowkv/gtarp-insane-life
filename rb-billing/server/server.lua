local QBCore = exports['qb-core']:GetCoreObject()

local function insertDatabaseRecord(billingjob, billedby, billedbyname, billedto, billedtoname, amount, reason, currentTime)
    MySQL.Async.execute([[
        INSERT INTO rb_billing (billingjob, billedby, billedbyname, billedto, billedtoname, amount, reason, created_at)
        VALUES (@job, @by, @byn, @to, @ton, @amount, @reason, @created_at)
        ]], {
        ['@job'] = billingjob,
        ['@by'] = billedby,
        ['@byn'] = billedbyname,
        ['@to'] = billedto,
        ['@ton'] = billedtoname,
        ['@amount'] = amount,
        ['@reason'] = reason,
        ['@created_at'] = currentTime,
    }, function(rowsChanged)
        if rowsChanged > 0 then
            print('[rb_billing] 账单创建成功')
        else
            print('[rb_billing] 账单创建失败')
        end
    end)
end

QBCore.Functions.CreateCallback('rb_billing:server:getAvailableJobTabs', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then
        cb({})
        return
    end

    local result = {}
    local playerJob = Player.PlayerData.job.name
    local playerGrade = Player.PlayerData.job.grade.level

    for jobName, config in pairs(Config.JobInvoices) do
        if playerJob == jobName and playerGrade >= config.requiredGrade then
            table.insert(result, {
                name = jobName,
                label = config.label
            })
        end
    end

    cb(result)
end)

QBCore.Functions.CreateCallback('rb_billing:server:getInvoices', function(source, cb, tab)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then
        cb({})
        return
    end

    local citizenid = Player.PlayerData.citizenid
    local jobName = Player.PlayerData.job.name
    local gradeLevel = Player.PlayerData.job.grade.level

    local query = ""
    local params = {}

    if tab == "personal-sent" then
        query = "SELECT * FROM rb_billing WHERE billedby = @cid AND billingjob IS NULL ORDER BY created_at DESC LIMIT 50"
        params = { ['@cid'] = citizenid }

    elseif tab == "personal-received" then
        query = "SELECT * FROM rb_billing WHERE billedto = @cid ORDER BY created_at DESC LIMIT 50"
        params = { ['@cid'] = citizenid }

    elseif tab:find("-sent$") then
        local job = tab:gsub("-sent$", "")
        local jobCfg = Config.JobInvoices[job]  -- 校验该 tab 是否是合法的 Config.JobInvoices 项
        if not jobCfg then return cb({}) end
        if job ~= jobName or gradeLevel < jobCfg.requiredGrade then  -- 检查玩家是否是该组织成员且职级够
            return cb({})
        end
        query = "SELECT * FROM rb_billing WHERE billingjob = @job ORDER BY created_at DESC LIMIT 50"
        params = { ['@job'] = job}
    elseif tab:find("-received$") then
        local job = tab:gsub("-received$", "")
        local jobCfg = Config.JobInvoices[job]
        if not jobCfg then return cb({}) end
        if job ~= jobName or gradeLevel < jobCfg.requiredGrade then
            return cb({})
        end
        query = "SELECT * FROM rb_billing WHERE billingjob = @job ORDER BY created_at DESC LIMIT 50"
        params = { ['@job'] = job}
    else
        cb({})
        return
    end

    MySQL.Async.fetchAll(query, params, function(results)
        cb(results or {})
    end)
end)

RegisterNetEvent('rb_billing:server:createInvoice', function(target, amount, reason, isOrganization)
    if #reason > Config.maxReasonLen then 
        print(os.date("%Y-%m-%d %H:%M:%S").."  "..source.."的理由过长")
        return 
    end
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local receiver = QBCore.Functions.GetPlayer(tonumber(target))
    if not Player or not receiver then 
        return 
    end

    amount = tonumber(amount)
    reason = tostring(reason)
    if not amount or amount <= 0 or reason == '' then
        -- 你可以用日志或者回调告诉客户端失败，这里先忽略
        return
    end

    local billingjob = isOrganization and Player.PlayerData.job.name or nil
    local billedby = Player.PlayerData.citizenid
    local billedbyname = Player.PlayerData.charinfo.firstname .. ' '.. Player.PlayerData.charinfo.lastname
    local billedto = receiver.PlayerData.citizenid
    local billedtoname = receiver.PlayerData.charinfo.firstname .. ' '.. receiver.PlayerData.charinfo.lastname
    local currentTime = os.date("%Y-%m-%d %H:%M:%S")
    -- 弹窗确认
    local accepted = lib.callback.await('rb_billing:client:confirmInvoice', tonumber(target), {
        amount = amount,
        reason = reason,
        from = billingjob ~= nil and Config.JobInvoices[billingjob].label or billedbyname
    })
    if accepted then
        insertDatabaseRecord(billingjob, billedby, billedbyname, billedto, billedtoname, amount, reason, currentTime)
        -- 通知双方成功
        TriggerClientEvent('ox_lib:notify', src, {
            title = '账单系统',
            description = '对方接受了你的账单',
            type = 'success'
        })
        TriggerClientEvent('ox_lib:notify', tonumber(target), {
            title = '账单系统',
            description = '你接受了对方的账单',
            type = 'success'
        })
    else
        -- 可以通知发起方对方拒绝
        TriggerClientEvent('ox_lib:notify', src, {
            title = '账单系统',
            description = '对方拒绝了你的账单',
            type = 'error'
        })
    end
end)

RegisterNetEvent('rb_billing:server:payInvoice', function(invoiceID)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    local result = MySQL.query.await('SELECT * FROM rb_billing WHERE id = @id AND billedto = @cid AND status = "unpaid"', {
        ['@id'] = invoiceID,
        ['@cid'] = Player.PlayerData.citizenid
    })
    if not result or #result == 0 then
        return
    end

    local invoice = result[1]
    local amount = invoice.amount
    local reason = invoice.reason
    local billingjob = invoice.billingjob

    -- 弹出确认框
    local accepted = lib.callback.await('rb_billing:client:confirmPayInvoice', src, {
        fromName = billingjob == nil and invoice.billedbyname or Config.JobInvoices[billingjob].label,  -- 这里建议替换为角色名字，可扩展
        amount = amount,
        reason = reason,
    })

    if not accepted then return end

    -- 扣款逻辑
    if Player.Functions.RemoveMoney('bank', amount, 'PayInvoice') then
        -- 更新账单状态
        MySQL.update('UPDATE rb_billing SET status = "paid" WHERE id = @id', {
            ['@id'] = invoiceID
        })
        if billingjob == nil then
            -- ✅ 个人收款逻辑
            local billedPlayer = QBCore.Functions.GetPlayerByCitizenId(invoice.billedby)
            if billedPlayer then
                billedPlayer.Functions.AddMoney('bank', amount, '开单')
                -- TriggerEvent("qb-banking:server:CreateBankStatement", billedPlayer.PlayerData.source, '工资', payment, '账单', 'deposit', 'player')
            else
                local cid = invoice.billedby
                local playerRow = MySQL.single.await("SELECT money FROM players WHERE citizenid = ?", { cid })
                if playerRow then
                    local money = json.decode(playerRow.money)
                    money.bank = (money.bank or 0) + amount
                    MySQL.update.await("UPDATE players SET money = ? WHERE citizenid = ?", {
                        json.encode(money), cid
                    })
                end
            end
        else
            exports['qb-banking']:AddMoney(billingjob, amount, invoice.billedbyname .. ': 开单')
        end
        TriggerClientEvent('ox_lib:notify', src, {
            title = '账单支付成功',
            description = '已成功支付账单 $' .. amount,
            type = 'success'
        })
    else
        TriggerClientEvent('ox_lib:notify', src, {
            title = '支付失败',
            description = '银行余额不足，支付失败',
            type = 'error'
        })
    end
end)

RegisterNetEvent('rb_billing:server:revokeInvoice', function(invoiceID)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    -- 只能撤销未支付，且是自己发出的账单
    MySQL.update('DELETE FROM rb_billing WHERE id = @id AND billedby = @cid AND status = "unpaid"', {
        ['@id'] = invoiceID,
        ['@cid'] = Player.PlayerData.citizenid
    }, function(affectedRows)
        if affectedRows > 0 then
            TriggerClientEvent('ox_lib:notify', src, {
                title = '账单撤销成功',
                description = '该账单已成功撤销',
                type = 'success'
            })
        else
            TriggerClientEvent('ox_lib:notify', src, {
                title = '撤销失败',
                description = '账单不存在或无法撤销（已支付或非你本人创建）',
                type = 'error'
            })
        end
    end)
end)

RegisterNetEvent('rb_billing:server:deleteInvoice', function(invoiceID)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    -- 只能删除已支付账单，且是自己发出的账单
    MySQL.update('DELETE FROM rb_billing WHERE id = @id AND billedby = @cid AND status = "paid"', {
        ['@id'] = invoiceID,
        ['@cid'] = Player.PlayerData.citizenid
    }, function(affectedRows)
        if affectedRows > 0 then
            TriggerClientEvent('ox_lib:notify', src, {
                title = '账单删除成功',
                description = '该账单记录已被删除',
                type = 'success'
            })
        else
            TriggerClientEvent('ox_lib:notify', src, {
                title = '删除失败',
                description = '账单不存在或无法删除（未支付或非你本人创建）',
                type = 'error'
            })
        end
    end)
end)