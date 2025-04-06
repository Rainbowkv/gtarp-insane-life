local Translations = {
    afk = {
        will_kick = '您处于AFK状态，您将在 ',
        time_seconds = ' 秒后被踢出！',
        time_minutes = ' 分钟后被踢出！',
        kick_message = '您因长时间未操作而被踢出'
    },
    wash = {
        in_progress = "车辆正在清洗中...",
        wash_vehicle = "[E] 清洗车辆",
        wash_vehicle_target = "清洗车辆",
        dirty = "车辆不脏",
        cancel = "清洗已取消..."
    },
    consumables = {
        eat_progress = "正在吃东西...",
        drink_progress = "正在喝水...",
        liqour_progress = "正在喝酒...",
        coke_progress = "快速吸食...",
        crack_progress = "吸食冰毒...",
        ecstasy_progress = "服用摇头丸...",
        healing_progress = "正在治疗",
        meth_progress = "吸食冰毒...",
        joint_progress = "吸食大麻...",
        use_parachute_progress = "穿上降落伞...",
        pack_parachute_progress = "收起降落伞...",
        no_parachute = "您没有降落伞！",
        armor_full = "您已经穿戴足够的护甲！",
        armor_empty = "您没有穿护甲...",
        armor_progress = "正在穿戴护甲...",
        heavy_armor_progress = "正在穿戴重型护甲...",
        remove_armor_progress = "正在移除护甲...",
        canceled = "已取消..."
    },
    cruise = {
        unavailable = "巡航控制不可用",
        activated = "巡航控制已启用",
        deactivated = "巡航控制已禁用",
        reset = "巡航速度更改为"
    },
    editor = {
        started = "开始录制！",
        save = "已保存录制！",
        delete = "已删除录制！",
        editor = "再见了！"
    },
    firework = {
        place_progress = "正在放置烟花...",
        canceled = "已取消...",
        time_left = "烟花将在 ~r~"
    },
    seatbelt = {
        use_harness_progress = "正在绑赛车安全带",
        remove_harness_progress = "正在移除赛车安全带",
        no_car = "您没有在车内。"
    },
    teleport = {
        teleport_default = '使用电梯'
    },
    pushcar = {
        stop_push = "[E] 停止推动"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
