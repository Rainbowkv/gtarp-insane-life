local ox_inventory = exports.ox_inventory

RegisterServerEvent('stevo_moneywash:cleanmoney')
AddEventHandler('stevo_moneywash:cleanmoney', function(Amount)
    Amount = tonumber(Amount)
    local Player = source
    if Amount == nil or Amount < 1 or Amount % 1 ~= 0 then
        TriggerClientEvent('ox_lib:notify', Player, {title = '数量错误', description = '清洗钱袋的数量应为正整数.', type = 'error'})
        return
    end
    if Amount > Config.maxAmountValue then 
        TriggerClientEvent('ox_lib:notify', Player, {title = '禁止', description = "一次最多洗".. Config.maxAmountValue .."袋钱.", type = 'error'})
        return
    end
    -- local WashTax = Amount * Config.TaxRate
    -- local WashTotal = Amount - WashTax
    local WashTotal = Amount * Config.markedbillsWorth  -- markedbills的价值/袋
    local black_money = exports.ox_inventory:Search(Player, 'count','markedbills')
    -- local moneywash_ticket =  exports.ox_inventory:Search(Player, 'count','moneywash_ticket')
    if black_money >= Amount then
        if Config.UseTickets then
            if moneywash_ticket >= 1 then
                exports.ox_inventory:RemoveItem(Player, 'markedbills', Amount)
                -- exports.ox_inventory:RemoveItem(Player, 'moneywash_ticket', 1)
                TriggerClientEvent('stevo_moneywash:washactions', Player)
                Citizen.Wait(Config.WashDuration)
                exports.ox_inventory:AddItem(Player, 'money', WashTotal)
            else
                TriggerClientEvent('ox_lib:notify', Player, {title = 'No Wash Ticket', description = 'You do not have a wash ticket.', type = 'error'})
            end
        else
            exports.ox_inventory:RemoveItem(Player, 'markedbills', Amount)
            -- exports.ox_inventory:RemoveItem(Player, 'moneywash_ticket', 1)
            TriggerClientEvent('stevo_moneywash:washactions', Player)
            Citizen.Wait(Config.WashDuration)
            exports.ox_inventory:AddItem(Player, 'money', WashTotal)
        end
    else
        TriggerClientEvent('ox_lib:notify', Player, {title = '钱袋不足', description = '您没有足够的标记钱币袋.', type = 'error'})
    end
end)