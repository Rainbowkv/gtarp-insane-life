local Translations = {
    error = {
        already_driving_bus = '您已经在驾驶公交车了',
        not_in_bus = '您不在公交车上',
        one_bus_active = '一次只能有一辆活跃的公交车',
        drop_off_passengers = '请在停止工作前把乘客放下',
        exploit = "尝试利用漏洞"
    },
    success = {
        dropped_off = '乘客已下车',
    },
    info = {
        bus = '标准公交车',
        goto_busstop = '前往公交车站',
        busstop_text = '[E] 公交车站',
        bus_plate = 'BUS', -- 可以是3或4个字符（使用随机的4位数字）
        bus_depot = '公交车库',
        bus_stop_work = '[E] 停止工作',
        bus_job_vehicles = '[E] 工作车辆'
    },
    menu = {
        bus_header = '公交车辆',
        bus_close = '⬅ 关闭菜单'
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
