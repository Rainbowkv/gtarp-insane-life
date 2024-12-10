local Translations = {
    error = {
        smash_own = "你不能撞毁你拥有的车辆。",
        cannot_scrap = "这辆车不能被拆解。",
        not_driver = "你不是驾驶员。",
        demolish_vehicle = "你现在不能拆除车辆。",
        canceled = "已取消",
    },
    text = {
        scrapyard = '废车场',
        disassemble_vehicle = '[E] - 拆解车辆',
        disassemble_vehicle_target = '拆解车辆',
        email_list = "[E] - 发送车辆列表",
        email_list_target = "发送车辆列表",
        demolish_vehicle = "拆除车辆",
    },
    email = {
        sender = "特纳的汽车拆解",
        subject = "车辆列表",
        message = "你只能拆解一定数量的车辆。<br />只要你不打扰我，你可以保留所有拆解的东西。<br /><br /><strong>车辆列表：</strong><br />",
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
