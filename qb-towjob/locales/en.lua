local Translations = {
    error = {
        finish_work = "请先完成所有工作",
        vehicle_not_correct = "这不是正确的车辆",
        failed = "你失败了",
        not_towing_vehicle = "你必须在你的拖车车辆内",
        too_far_away = "你离得太远了",
        no_work_done = "你还没有做任何工作",
        no_deposit = "$%{value} 的押金是必需的",
        has_spawn = "您已经取过拖车了",
    },
    success = {
        paid_with_cash = "$%{value} 押金已通过现金支付",
        paid_with_bank = "$%{value} 押金已通过银行支付",
        refund_to_cash = "$%{value} 押金已退还到现金",
        you_earned = "你赚了 $%{value}",
    },
    menu = {
        header = "可用卡车",
        close_menu = "⬅ 关闭菜单",
    },
    mission = {
        delivered_vehicle = "你已交付一辆车辆",
        get_new_vehicle = "可以取走一辆新车辆",
        towing_vehicle = "正在拖车...",
        goto_depot = "将车辆送往Hayes车库",
        vehicle_towed = "车辆已被拖走",
        untowing_vehicle = "正在移除车辆",
        vehicle_takenoff = "车辆已被移除",
    },
    info = {
        tow = "将一辆车放到你的平板车上",
        toggle_npc = "切换NPC任务",
        skick = "尝试滥用漏洞",
    },
    label = {
        payslip = "工资单",
        vehicle = "车辆",
        npcz = "NPC区",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
