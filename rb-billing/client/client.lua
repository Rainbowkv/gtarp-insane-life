local QBCore = exports['qb-core']:GetCoreObject()

lib.callback.register('rb_billing:client:confirmInvoice', function(data)

    local result = lib.alertDialog({
        header = '账单确认',
        content = string.format('来自【%s】的账单：\n\n金额：$%d\n\n原因：%s\n\n你是否接受？', data.from, data.amount, data.reason),
        centered = true,
        cancel = true,
        labels = {
            confirm = '接受',
            cancel = '拒绝'
        }
    })

    return result == 'confirm'
end)

lib.callback.register('rb_billing:client:confirmPayInvoice', function(data)
    local confirm = lib.alertDialog({
        header = '确认支付账单？',
        content = ('来自 %s 的账单：\n\n理由：%s\n\n金额：$%s\n\n是否确认支付？'):format(
            data.fromName or '未知',
            data.reason or '无',
            data.amount or '0'
        ),
        centered = true,
        cancel = true
    })

    return confirm == 'confirm'
end)

RegisterCommand('openInvoices', function()
    QBCore.Functions.TriggerCallback('rb_billing:server:getAvailableJobTabs', function(jobsToSend)
        SetNuiFocus(true, true)
        SendNUIMessage({
            action = 'openBillingUI',
            jobs = jobsToSend  -- eg. [{ name = 'police', label = '警局' }]
        })
    end)
end, false)

RegisterNUICallback('closeBillingUI', function(_, cb)
    SetNuiFocus(false, false)
    cb({})
end)

RegisterNUICallback('requestInvoices', function(data, cb)
    local tab = data.tab or "personal-sent"
    QBCore.Functions.TriggerCallback('rb_billing:server:getInvoices', function(invoices)
        cb(invoices)
    end, tab)
end)

RegisterNUICallback('createInvoice', function(data, cb)
    local tab = data.tab or ""
    local isOrganization = false
    local jobName = nil
    if #data.reason > Config.maxReasonLen then
        lib.alertDialog({
            header = '账单系统',
            content = '理由不能超过'..Config.maxReasonLen..'个字',
            centered = true,
            cancel = false,
            labels = {
                confirm = '了解',
            }
        })
        return
    end
    -- tab 是形如 xxx-sent 的，尝试提取 job name
    if tab:sub(-5) == "-sent" then
        jobName = tab:sub(1, #tab - 5) -- 去掉末尾的 "-sent"
        if Config.JobInvoices[jobName] then
            isOrganization = true
        end
    end
    -- 转发给服务端事件
    TriggerServerEvent('rb_billing:server:createInvoice', data.target, data.amount, data.reason, isOrganization)
    cb({ success = true }) -- 立即返回
end)

RegisterNUICallback('payInvoice', function(data, cb)
    local id = tonumber(data.id)
    if not id then return cb({ success = false }) end

    TriggerServerEvent('rb_billing:server:payInvoice', id)
    cb({ success = true })
end)

RegisterNUICallback('revokeInvoice', function(data, cb)
    local id = tonumber(data.id)
    if not id then return cb({ success = false }) end

    TriggerServerEvent('rb_billing:server:revokeInvoice', id)
    cb({ success = true })
end)

RegisterNUICallback('deleteInvoice', function(data, cb)
    local id = tonumber(data.id)
    if not id then return cb({ success = false }) end

    TriggerServerEvent('rb_billing:server:deleteInvoice', id)
    cb({ success = true })
end)