local Translations = {
    error = {
        ['already_mission'] = '你已经在执行一个NPC任务',
        ['already_take'] = '您已经取走过一辆出租车',
        ['not_take'] = '您没有租过车辆',
        ['not_in_taxi'] = '你不在出租车内',
        ['missing_meter'] = '这辆车没有出租车计价器',
        ['no_vehicle'] = '你不在任何车辆内',
        ['not_active_meter'] = '出租车计价器没有激活',
        ['ride_canceled'] = '你已经撞车太多次，乘客取消了行程！',
        ['broken_taxi'] = '你的出租车需要修理才能继续工作！',
        ['crash_warning'] = '如果你再撞车 %d 次 %s，顾客将会停止行程，并且你将不会获得报酬！',
        ['time'] = '时间',
        ['times'] = '次',
    },
    success = {
        ['mission_cancelled'] = '任务已成功取消',
    },
    info = {
        ['person_was_dropped_off'] = '乘客已被送达！',
        ['npc_on_gps'] = 'NPC 已显示在你的GPS上',
        ['go_to_location'] = '将NPC送到指定地点',
        ['vehicle_parking'] = '[E] 停放车辆',
        ['job_vehicles'] = '[E] 工作用车',
        ['drop_off_npc'] = '[E] 送下NPC',
        ['call_npc'] = '[E] 呼叫NPC',
        ['blip_name'] = '市中心出租车',
        ['taxi_label_1'] = '标准出租车',
        ['no_spawn_point'] = '无法找到可以停车的地点',
        ['taxi_returned'] = '出租车已停车',
        ['on_duty'] = '[E] - 上班',
        ['off_duty'] = '[E] - 下班',
        ['tip_received'] = '你已因安全驾驶获得 $%d 小费',
        ['tip_not_received'] = '如果你不想撞车，就别指望以后能收到小费',
    },
    menu = {
        ['taxi_menu_header'] = '出租车车辆',
        ['close_menu'] = '⬅ 关闭菜单',
        ['boss_menu'] = '老板菜单'
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
