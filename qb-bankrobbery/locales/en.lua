local Translations = {
    success = {
        success_message = "成功",
        fuses_are_blown = "保险丝已熔断",
        door_has_opened = "门已打开"
    },
    error = {
        cancel_message = "已取消",
        safe_too_strong = "看起来保险箱锁太强了...",
        missing_item = "缺少物品...",
        bank_already_open = "银行已经打开了...",
        minimum_police_required = "需要至少 %{police} 名警察",
        security_lock_active = "安全锁处于激活状态，当前无法打开门",
        wrong_type = "%{receiver} 没有接收到正确类型的参数 '%{argument}'\n接收到的类型: %{receivedType}\n接收到的值: %{receivedValue}\n 期望的类型: %{expected}",
        fuses_already_blown = "保险丝已经熔断...",
        event_trigger_wrong = "%{event}%{extraInfo} 在未满足某些条件的情况下被触发，来源: %{source}",
        missing_ignition_source = "缺少点火源"
    },
    general = {
        breaking_open_safe = "正在破坏保险箱...",
        connecting_hacking_device = "正在连接黑客设备...",
        fleeca_robbery_alert = "Fleeca银行抢劫尝试",
        paleto_robbery_alert = "Blain县储蓄银行抢劫尝试",
        pacific_robbery_alert = "Pacific Standard银行抢劫尝试",
        break_safe_open_option_target = "破开保险箱",
        break_safe_open_option_drawtext = "[E] 破开保险箱",
        validating_bankcard = "正在验证银行卡...",
        thermite_detonating_in_seconds = "热切割剂将在 %{time} 秒后引爆",
        bank_robbery_police_call = "10-90: 银行抢劫"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
