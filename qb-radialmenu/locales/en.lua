local Translations = {
    error = {
        no_people_nearby = "附近没有玩家",
        no_vehicle_found = "未找到车辆",
        extra_deactivated = "附加 %{extra} 已被禁用",
        extra_not_present = "此车辆没有 %{extra} 附加件",
        not_driver = "你不是车辆的驾驶员",
        vehicle_driving_fast = "车辆开得太快了",
        seat_occupied = "这个座位已经被占用",
        race_harness_on = "你已经系上了赛车安全带，无法切换",
        obj_not_found = "无法创建请求的物品",
        not_near_ambulance = "你不在救护车附近",
        far_away = "你离得太远",
        stretcher_in_use = "这张担架已在使用中",
        not_kidnapped = "你没有绑架此人",
        trunk_closed = "后备箱已关闭",
        cant_enter_trunk = "你无法进入此后备箱",
        already_in_trunk = "你已经在后备箱里",
        someone_in_trunk = "后备箱里已经有人"
    },
    progress = {
        flipping_car = "翻转车辆.."
    },
    success = {
        extra_activated = "附加 %{extra} 已被激活",
        entered_trunk = "你已进入后备箱"
    },
    info = {
        no_variants = "似乎没有此项变种",
        wrong_ped = "此人物模型不允许此选项",
        nothing_to_remove = "你似乎没有需要移除的物品",
        already_wearing = "你已经穿戴了这个",
        switched_seats = "你现在坐在 %{seat} 座位"
    },
    general = {
        command_description = "打开径向菜单",
        push_stretcher_button = "[E] - 推动担架",
        stop_pushing_stretcher_button = "~g~E~w~ - 停止推动",
        lay_stretcher_button = "[G] - 躺上担架",
        push_position_drawtext = "推动此处",
        get_off_stretcher_button = "[G] - 下担架",
        get_out_trunk_button = "[E] 从后备箱出来",
        close_trunk_button = "[G] 关闭后备箱",
        open_trunk_button = "[G] 打开后备箱",
        getintrunk_command_desc = "进入后备箱",
        putintrunk_command_desc = "将玩家放入后备箱"
    },
    options = {
        emergency_button = "紧急按钮",
        driver_seat = "驾驶员座位",
        passenger_seat = "乘客座位",
        other_seats = "其他座位",
        rear_left_seat = "后左座位",
        rear_right_seat = "后右座位"
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
