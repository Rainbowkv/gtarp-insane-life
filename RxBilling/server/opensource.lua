--[[
    FREE SCRIPT
    DOWNLOAD @ https://store.rxscripts.xyz/
    SUPPORT @ https://discord.gg/rxscripts
    BY RX Scripts © rxscripts.xyz
--]]

Config.DiscordWebhooks = {
    invoiceSent = '',
    invoicePaid = '',
    invoiceRevoked = '',
    invoiceDeclined = '',
}

--[[
    We have integrated RxBanking by default, to work with societies.
    If you use any other banking or society accounting system, you can modify the functions below.
    We HIGHLY recommend using RxBanking together with this billing script to ensure the best experience.

    We love that you are using our script, so here is a little easter egg gift for you:
    15% DISCOUNT OFF: Advanced Banking - RxBanking
    CODE: 'FROMBILLING15'

    If you want to use RxBanking, you can find it here:
    https://store.rxscripts.xyz/scripts/advanced-banking
--]]
function RemoveMoneyFromSociety(society, amount)
    local success = exports['qb-banking']:RemoveMoney(society, amount, '账单app')
    if not success then
        print('[ERROR] Failed to remove money from society account:', society)
    end
    return success and amount or 0
end

function GetSocietyMoney(society)
    local account = exports['qb-banking']:GetAccount(society)
    if account and account.account_balance then
        return account.account_balance
    else
        print('[ERROR] Failed to get balance of society account:', society)
        return 0
    end
end

function AddMoneyToSociety(society, amount)
    local success = exports['qb-banking']:AddMoney(society, amount, '账单app')
    if not success then
        print('[ERROR] Failed to add money to society account:', society)
    end
    return success and amount or 0
end

function RemoveMoneyFromBank(identifier, amount)
    local Player = QBCore.Functions.GetPlayerByCitizenId(identifier)
    if not Player then
        print('[ERROR] Player not online to remove bank money:', identifier)
        return 0
    end
    
    local success = Player.Functions.RemoveMoney('bank', amount, '账单app')
    if success then
        local phoneNumber = exports["lb-phone"]:GetEquippedPhoneNumber(identifier)
        local emailAddress = exports["lb-phone"]:GetEmailAddress(phoneNumber)
        local mailData = {
            to = emailAddress,
            sender = 'Ravens国家银行',
            subject = '账单支付',
            message = '账户扣除: $ '..amount
        }
        exports["lb-phone"]:SendMail(mailData)
    else
        TriggerClientEvent("ox_lib:notify", Player.PlayerData.source, {
            title = "Ravens国家银行",
            description = "您的银行余额不足",
            type = "error",
            duration = 3000,
        })
    end
    return success and amount or 0
end

function AddMoneyToBank(identifier, amount)
    local Player = QBCore.Functions.GetPlayerByCitizenId(identifier)
    local success = false
    if not Player then
        -- 如果卖家不在线，更新数据库
        local playerRow = MySQL.single.await("SELECT money FROM players WHERE citizenid = ?", { identifier })
        if playerRow then
            local money = json.decode(playerRow.money)
            money.bank = (money.bank or 0) + price
            MySQL.update.await("UPDATE players SET money = ? WHERE citizenid = ?", {
                json.encode(money), cid
            })
            success = true
        end
    else
        success = Player.Functions.AddMoney('bank', amount, '账单app')
        if success then
            local phoneNumber = exports["lb-phone"]:GetEquippedPhoneNumber(identifier)
            local emailAddress = exports["lb-phone"]:GetEmailAddress(phoneNumber)
            local mailData = {
                to = emailAddress,
                sender = 'Ravens国家银行',
                subject = '账单支付',
                message = '账户增加: $ '..amount
            }
            exports["lb-phone"]:SendMail(mailData)
        else
            print('玩家增加银行金额失败: ', identifier)
        end
    end
    return success and amount or 0
end

RegisterNetEvent('rxbilling:onInvoiceSent', function(invoice)
    
end)

RegisterNetEvent('rxbilling:onInvoicePaid', function(payerId, invoice)
    -- If playerId is nil, it means the invoice was paid automatically
    if payerId == nil then return end
    local phoneNumber = exports["lb-phone"]:GetEquippedPhoneNumber(payerId)
    local emailAddress = exports["lb-phone"]:GetEmailAddress(phoneNumber)
    local mailData = {
        to = emailAddress,
        sender = 'Ravens国家银行',
        subject = '账户扣除: $'..invoice.amount,
        message = '开单人: '..invoice.billedBy.name..", 公民ID: "..invoice.billedBy.identifier
    }
    exports["lb-phone"]:SendMail(mailData)
end)

RegisterNetEvent('rxbilling:onInvoiceDeclined', function(declinerId, invoice)

end)

RegisterNetEvent('rxbilling:onInvoiceRevoked', function(revokerId, invoice)

end)
