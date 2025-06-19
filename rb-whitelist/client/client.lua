local showing = false
local outWhitelist = false
local monitoring = false

local function showNotify(text, pType)
    lib.notify({
        title = '白名单系统',
        description = text,
        type = pType
    })
end

local function StartWhitelistMonitor()
    if monitoring then return end -- 避免重复创建线程
    monitoring = true

    CreateThread(function()
        local whitelistCenter = Config.WhitelistCenter
        local whitelistRadius = Config.WhitelistRadius
        while outWhitelist do
            local ped = PlayerPedId()
            local pos = GetEntityCoords(ped)
            local dist = #(pos - whitelistCenter)

            if dist > whitelistRadius then
                SetEntityCoords(ped, whitelistCenter.x, whitelistCenter.y, whitelistCenter.z, false, false, false, false)
                SetEntityHeading(ped, 215.0)
                showNotify('未通过白名单，不能离开白名单区域', 'error')
            end

            Wait(500) -- 检测间隔，防止太频繁
        end

        monitoring = false
    end)
end

RegisterNUICallback('rb-whitelist:nui:submitAnswers', function(data, cb)
    for i, v in ipairs(data) do
        if v == 0 or v == nil then
            showNotify('请完成所有题目后再提交', 'error')
            return
        end
    end
    TriggerServerEvent('rb-whitelist:server:submitAnswers', data)
    SetNuiFocus(false, false)
    cb({})
end)

RegisterNUICallback("rb-whitelist:nui:focus", function(data, cb)
    SetNuiFocus(data.focus, data.focus)
    if not data.focus then
        showing = false
    end
    cb({})
end)

RegisterNetEvent('rb-whitelist:client:openMenu', function()
    SetNuiFocus(true, true)
    showing = true
    SendNUIMessage({
        type = 'open',
        questions = Config.WhitelistQuestions
    })
end)

RegisterNetEvent('rb-whitelist:client:startWhitelistMonitor', function()
    outWhitelist = true
    StartWhitelistMonitor()
end)

RegisterNetEvent('rb-whitelist:client:endWhitelistMonitor', function()
    outWhitelist = false
end)

RegisterNetEvent('rb-whitelist:client:notify', function(text, pType)
    showNotify(text, pType)
end)

RegisterNetEvent('rb-whitelist:client:showPendingList', function(list)
    local options = {}

    for _, row in ipairs(list) do
        table.insert(options, {
            title = row.player_name,
            description = row.license,
            icon = 'user-check',
            onSelect = function()
                lib.registerContext({
                    menu = 'pending_whitelist_list',
                    id = 'review_whitelist_' .. row.player_name,
                    title = '审核白名单 - ' .. row.player_name,
                    options = {
                        {
                            title = '✅ 通过',
                            icon = 'check',
                            onSelect = function()
                                TriggerServerEvent('rb-whitelist:server:setStatus', row.license, row.player_name, 'approved')
                            end
                        },
                        {
                            title = '❌ 拒绝',
                            icon = 'x',
                            onSelect = function()
                                TriggerServerEvent('rb-whitelist:server:setStatus', row.license, row.player_name, 'denied')
                            end
                        }
                    }
                })
                lib.showContext('review_whitelist_' .. row.player_name)
            end
        })
    end

    lib.registerContext({
        id = 'pending_whitelist_list',
        title = '待审核白名单列表',
        options = options
    })

    lib.showContext('pending_whitelist_list')
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    CreateThread(function()
        Wait(3000)
        TriggerServerEvent('rb-whitelist:server:checkPlayerStatus')
        local pedModel = Config.ped.model
        RequestModel(pedModel)
        while not HasModelLoaded(pedModel) do Wait(100) end

        local pedCoords = Config.ped.coords
        local ped = CreatePed(0, pedModel, pedCoords.x, pedCoords.y, pedCoords.z - 1, pedCoords.w, false, true)
        SetEntityInvincible(ped, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        exports.ox_target:addLocalEntity(ped, {
            {
                label = '白名单考试(新市民)',
                icon = 'fas fa-id-badge',
                onSelect = function()
                    TriggerServerEvent('rb-whitelist:server:checkPlayerStatus')
                end,
                distance = 1.5
            },
            {
                label = '审核白名单(管理员)',
                icon = 'fas fa-id-badge',
                onSelect = function()
                    TriggerServerEvent('rb-whitelist:server:reviewWhitelist')
                end,
                distance = 1.5
            },
        })
    end)
end)