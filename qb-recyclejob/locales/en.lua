local Translations = {
    success = {
        you_have_been_clocked_in = "你已经打卡了",
    },
    text = {
        point_enter_warehouse = "[E] 进入仓库",
        enter_warehouse = "进入仓库",
        exit_warehouse = "退出仓库",
        point_exit_warehouse = "[E] 退出仓库",
        clock_out = "[E] 打卡离开",
        clock_in = "[E] 打卡进入",
        hand_in_package = "交付包裹",
        point_hand_in_package = "[E] 交付包裹",
        get_package = "获取包裹",
        point_get_package = "[E] 获取包裹",
        picking_up_the_package = "正在取包裹",
        unpacking_the_package = "正在拆包裹",
    },
    error = {
        you_have_clocked_out = "你已经打卡离开",
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
