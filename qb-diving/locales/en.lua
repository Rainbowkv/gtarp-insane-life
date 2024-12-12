local Translations = {
    error = {
        ["canceled"] = "已取消",
        ["911_chatmessage"] = "911 消息",
        ["take_off"] = "/divingsuit 脱下你的潜水服",
        ["not_wearing"] = "你没有穿潜水装备 ..",
        ["no_coral"] = "你没有珊瑚可以出售 ..",
        ["not_standing_up"] = "你需要站起来才能穿上/脱下潜水装备",
        ["need_otube"] = "你需要一个氧气管才能给潜水装备加氧",
        ["oxygenlevel"] = '潜水装备的氧气水平是 %{oxygenlevel}，必须为 0%',
    },
    success = {
        ["took_out"] = "你脱下了潜水服",
        ["tube_filled"] = "氧气管已成功加满",
    },
    info = {
        ["collecting_coral"] = "正在收集珊瑚",
        ["diving_area"] = "潜水区",
        ["collect_coral"] = "收集珊瑚",
        ["collect_coral_dt"] = "[E] - 收集珊瑚",
        ["checking_pockets"] = "检查口袋以出售珊瑚",
        ["sell_coral"] = "出售珊瑚",
        ["sell_coral_dt"] = "[E] - 出售珊瑚",
        ["blip_text"] = "911 - 潜水点",
        ["put_suit"] = "穿上潜水服",
        ["pullout_suit"] = "拉出潜水服 ..",
        ["cop_msg"] = "这些珊瑚可能是偷来的",
        ["cop_title"] = "非法潜水",
        ["command_diving"] = "脱下潜水服",
    },
    warning = {
        ["oxygen_one_minute"] = "你的氧气剩余不到 1 分钟",
        ["oxygen_running_out"] = "你的潜水装备氧气快用完了",
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
