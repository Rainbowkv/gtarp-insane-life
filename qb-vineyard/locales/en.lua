local Translations = {
    error = {
        ["invalid_job"] = "我想我不是这里的员工...",
        ["invalid_items"] = "你没有正确的物品！",
        ["no_items"] = "你没有任何物品！",
    },
    progress = {
        ["pick_grapes"] = "正在采摘葡萄 ..",
        ["process_grapes"] = "正在处理葡萄 ..",
    },
    task = {
        ["start_task"] = "[E] 开始任务",
        ["load_ingrediants"] = "[E] 装载原料",
        ["wine_process"] = "[E] 开始酿酒过程",
        ["get_wine"] = "[E] 获取葡萄酒",
        ["make_grape_juice"] = "[E] 制作葡萄汁",
        ["countdown"] = "剩余时间 %{time}s",
        ['cancel_task'] = "你已取消任务"
    },
    text = {
        ["start_shift"] = "你已开始在葡萄园的工作！",
        ["end_shift"] = "你在葡萄园的工作已结束！",
        ["valid_zone"] = "有效区域！",
        ["invalid_zone"] = "无效区域！",
        ["zone_entered"] = "已进入 %{zone} 区域",
        ["zone_exited"] = "已离开 %{zone} 区域",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
