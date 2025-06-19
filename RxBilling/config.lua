--[[
BY RX Scripts © rxscripts.xyz
--]]
Config = {}

Config.Locale = 'zh-cn'

Config.ReceiveMoney = {
    enabled = true, -- When enabled, money from paid invoices go to the sender/society account
    deductTax = 0.00, -- Tax percentage that will be deducted from the invoice amount when paid (0.05 = 5%)
}

Config.PlayerInvoices = { -- Automatic payment is disabled within this feature, so it cannot get abused
    enabled = true, -- Allow players to send invoices to other players
    maxInvoices = 5, -- Maximum number of pending invoices a player can send in total (to prevent spamming)
}

Config.JobInvoices = {
    ['police'] = {
        label = '警局',
        requiredGrade = 1, -- The minimum grade required to create & pay invoices
        presetInvoices = {
            { name = '非法停车',   amount = 300, reason = '非法停车位置' },
            { name = '超速',          amount = 300, reason = '限速: , 实际速度' },
            { name = '违法改装',  amount = 2000, reason = '具体的非法改装部位' },
            { name = '自定义',           amount = 0, reason = '具体违法行为' },
        }
    },
    ['ambulance'] = {
        label = '医院',
        requiredGrade = 1, -- The minimum grade required to create & pay invoices
        presetInvoices = {
            { name = '医疗服务', amount = 500, reason = '医疗服务' },
            { name = '户外急救',   amount = 1000, reason = '户外急救' },
        }
    },
    ['mechanic'] = {
        label = '修车厂',
        requiredGrade = 1, -- The minimum grade required to create & pay invoices
        presetInvoices = {
        }
    },
    ['taxi'] = {
        label = '出租车公司',
        requiredGrade = 0, -- The minimum grade required to create & pay invoices
        presetInvoices = {
            { name = '出行', amount = 200, reason = '公里数' },
        }
    },
}

Config.AutoPay = {
    enabled = false, -- Enable automatic payment of invoices after a certain time of pending
    hours = 24, -- Time in hours after which the invoice will be automatically paid
    feePercentagePerHour = 0.00 -- Percentage of the invoice amount that will be added as a fee for each hour of pending time (0.05 = 5%)
}

Config.Commands = {
    openBilling = 'billing', -- /billing | Open the billing menu
}

Config.Keybinds = {
    -- openBilling = 'F10', -- Opens the billing menu | Set to false to disable
    openBilling = false, -- Opens the billing menu | Set to false to disable
}

Config.UI = {
    color = {
        primary = { -- Different shades of primary color
            [50] = "#FEDDE9",
            [100] = "#FCBAD3",
            [200] = "#FA76A6",
            [300] = "#F7317A",
            [400] = "#D80955",
            [500] = "#95063B",
            [600] = "#76052E",
            [700] = "#580423",
            [800] = "#3B0217",
            [900] = "#1D010C",
            [950] = "#0F0106"
        },
    }
}

--[[
    ONLY CHANGE THIS PART IF YOU HAVE RENAMED SCRIPTS SUCH AS FRAMEWORK, TARGET, INVENTORY ETC
    RENAME THE SCRIPT NAME TO THE NEW NAME
--]]
---@type table Only change these if you have changed the name of a resource
Resources = {
    FM = { name = 'fmLib', export = 'new' },
    RX_BANKING = { name = 'RxBanking', export = 'all' },
}
IgnoreScriptFoundLogs = false
