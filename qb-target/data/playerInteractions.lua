local PlayerInteractions = {Options = {}, Player = {'anywhere'}}
if Config.EnableDefaultOptions then

    PlayerInteractions.Options['anywhere'] = {
        ["give_cash"] = {
            icon = "fas fa-door-open",
            label = "给予现金",
            canInteract = function(entity)
                return true  -- 给予现金暂时属于玩家间无条件的交互
            end,
            action = function(entity)
                TriggerEvent('qb-target:client:openGiveCashInput', entity)
            end,
            distance = 1.2
        },
        ["escort"] = {
            icon = "fas fa-door-open",
            label = "拖动",
            canInteract = function(entity)
                return true
            end,
            action = function(entity)
                TriggerEvent('qb-police:client:EscortPlayer-forQbTarget', entity)
            end,
            distance = 1.2
        },
    }
end

return PlayerInteractions