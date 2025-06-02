local QBCore = exports['qb-core']:GetCoreObject()
-- local currentDivingArea = math.random(1, #Config.CoralLocations)
local currentDivingArea = math.random(1, #Config.CoralLocations)  
local AvailableCorals = {}

-- Functions

local function getItemPrice(amount, price)
    for k, v in pairs(Config.BonusTiers) do
        local modifier = #Config.BonusTiers == k and amount >= v.minAmount or amount >= v.minAmount and amount <= v.maxAmount
        if modifier then
            local percent = math.random(v.minBonus, v.maxBonus) / 100
            local bonus = price * percent
            price = price + bonus
            price = math.ceil(price)
        end
    end
    return price
end

local function hasCoral(src)
    local Player = QBCore.Functions.GetPlayer(src)
    AvailableCorals = {}
    for _, v in pairs(Config.CoralTypes) do
        local item = Player.Functions.GetItemByName(v.item)
        if item then AvailableCorals[#AvailableCorals + 1] = v end
    end
    return next(AvailableCorals)
end

-- Events

RegisterNetEvent('qb-diving:server:CallCops', function(coords)
    for _, Player in pairs(QBCore.Functions.GetQBPlayers()) do
        if Player then
            if Player.PlayerData.job.type == 'leo' and Player.PlayerData.job.onduty then
                local msg = Lang:t('info.cop_msg')
                TriggerClientEvent('qb-diving:client:CallCops', Player.PlayerData.source, coords, msg)
                local alertData = {
                    title = Lang:t('info.cop_title'),
                    coords = coords,
                    description = msg
                }
                TriggerClientEvent('qb-phone:client:addPoliceAlert', -1, alertData)
            end
        end
    end
end)

RegisterNetEvent('qb-diving:server:SellCorals', function(item, amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not item then return end
    amount = tonumber(amount)
    if amount == nil or amount < 1 or amount%1 ~= 0 then
        TriggerClientEvent('ox_lib:notify', src, {
            title = '数量有误',
            description = '数量应为正整数',
            type = 'error'
        })
        return
    end
    if amount > Config.maxAmountValue then
        TriggerClientEvent('ox_lib:notify', src, {
            title = '出售失败',
            description = '数量不能超过'..Config.maxAmountValue,
            type = 'error'
        })
        return
    end
    -- 找对应配置
    local coralConfig
    for _, coral in pairs(Config.CoralTypes) do
        if coral.item == item then
            coralConfig = coral
            break
        end
    end

    if not coralConfig then
        TriggerClientEvent('ox_lib:notify', src, {
            title = '出售失败',
            description = '无效的珊瑚类型。',
            type = 'error'
        })
        return
    end

    local invCount = exports.ox_inventory:Search(src, 'count', item)
    if invCount < amount then
        TriggerClientEvent('ox_lib:notify', src, {
            title = '出售失败',
            description = '你没有足够的该类型珊瑚。',
            type = 'error'
        })
        return
    end

    local price = math.random(coralConfig.priceMin, coralConfig.priceMax)
    local total = price * amount

    -- 移除物品并发钱
    exports.ox_inventory:RemoveItem(src, item, amount)
    Player.Functions.AddMoney('cash', total)

    TriggerClientEvent('ox_lib:notify', src, {
        title = '出售成功',
        description = ('你出售了 %d 个 %s，获得了 $%d'):format(amount, item, total),
        type = 'success'
    })
end)

RegisterNetEvent('qb-diving:server:TakeCoral', function(area, coral)
    local src = source
    if Config.CoralLocations[area].coords.Coral[coral].PickedUp then
        exports['external_bansystem']:SystemBanPlayer(src, "检测到作弊采摘珊瑚行为", nil)
        return
    end
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    local coralType = math.random(1, #Config.CoralTypes)
    local amount = math.random(Config.CoralTypes[coralType].minAmount, Config.CoralTypes[coralType].maxAmount)
    local ItemData = QBCore.Shared.Items[Config.CoralTypes[coralType].item]

    exports['qb-inventory']:AddItem(src, ItemData['name'], amount, false, false, 'qb-diving:server:TakeCoral')
    -- TriggerClientEvent('qb-inventory:client:ItemBox', src, ItemData, 'add')

    if (Config.CoralLocations[area].TotalCoral - 1) == 0 then
        for _, v in pairs(Config.CoralLocations[currentDivingArea].coords.Coral) do
            v.PickedUp = false
        end

        Config.CoralLocations[currentDivingArea].TotalCoral = Config.CoralLocations[currentDivingArea].DefaultCoral
        local newLocation = math.random(1, #Config.CoralLocations)
        while newLocation == currentDivingArea do
            Wait(0)
            newLocation = math.random(1, #Config.CoralLocations)
        end
        currentDivingArea = newLocation
        TriggerClientEvent('qb-diving:client:NewLocations', -1)
    else
        Config.CoralLocations[area].coords.Coral[coral].PickedUp = true
        Config.CoralLocations[area].TotalCoral = Config.CoralLocations[area].TotalCoral - 1
    end
    TriggerClientEvent('qb-diving:client:UpdateCoral', -1, area, coral, true)
end)

RegisterNetEvent('qb-diving:server:removeItemAfterFill', function()
    local src = source
    exports['qb-inventory']:RemoveItem(src, 'diving_fill', 1, false, 'qb-diving:server:removeItemAfterFill')
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['diving_fill'], 'remove')
end)

-- Callbacks

QBCore.Functions.CreateCallback('qb-diving:server:GetDivingConfig', function(_, cb)
    cb(Config.CoralLocations, currentDivingArea)
end)

-- Items

QBCore.Functions.CreateUseableItem('diving_gear', function(source)
    TriggerClientEvent('qb-diving:client:UseGear', source)
end)

QBCore.Functions.CreateUseableItem('diving_fill', function(source)
    TriggerClientEvent('qb-diving:client:SetOxygenLevel', source)
end)
