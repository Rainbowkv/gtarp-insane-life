local Translations = {
    error = {
        ["missing_something"] = "看起来你少了点什么...",
        ["not_enough_police"] = "警力不足...",
        ["door_open"] = "门已经打开了...",
        ["cancelled"] = "操作已取消...",
        ["didnt_work"] = "操作失败...",
        ["emty_box"] = "箱子是空的...",
        ["injail"] = "你被关进监狱，刑期 %{Time} 个月...",
        ["item_missing"] = "你缺少一个物品...",
        ["escaped"] = "你逃脱了...赶快离开这里！",
        ["do_some_work"] = "做些工作来减刑，当前任务：%{currentjob}",
        ["security_activated"] = "最高安全等级已激活，请留在监区！"
    },
    success = {
        ["found_phone"] = "你找到了一部手机...",
        ["time_cut"] = "你减掉了一些刑期。",
        ["free_"] = "你自由了！好好享受吧！ :)",
        ["timesup"] = "你的时间到期了！请到访客中心检查自己。",
    },
    info = {
        ["timeleft"] = "你还需要服刑 %{JAILTIME} 个月",
        ["lost_job"] = "你现在没有工作",
        ["job_interaction"] = "[E] 电力工作",
        ["job_interaction_target"] = "做 %{job} 工作",
        ["received_property"] = "你收回了你的财物...",
        ["seized_property"] = "你的财物已被扣押，等你刑期结束后会归还给你...",
        ["cells_blip"] = "监舍",
        ["freedom_blip"] = "监狱前台",
        ["canteen_blip"] = "食堂",
        ["work_blip"] = "监狱工作",
        ["target_freedom_option"] = "检查时间",
        ["target_canteen_option"] = "领取食物",
        ["police_alert_title"] = "新报警",
        ["police_alert_description"] = "监狱暴动",
        ["connecting_device"] = "连接设备",
        ["working_electricity"] = "连接电线"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
