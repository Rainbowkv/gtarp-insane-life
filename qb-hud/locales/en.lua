local Translations = {
    notify = {
        ["hud_settings_loaded"] = "HUD 设置已加载！",
        ["hud_restart"] = "HUD 正在重启！",
        ["hud_start"] = "HUD 已启动！",
        ["hud_command_info"] = "此命令重置当前的 HUD 设置！",
        ["load_square_map"] = "方形地图加载中...",
        ["loaded_square_map"] = "方形地图已加载！",
        ["load_circle_map"] = "圆形地图加载中...",
        ["loaded_circle_map"] = "圆形地图已加载！",
        ["cinematic_on"] = "电影模式已开启！",
        ["cinematic_off"] = "电影模式已关闭！",
        ["engine_on"] = "引擎已启动！",
        ["engine_off"] = "引擎已关闭！",
        ["low_fuel"] = "燃油量低！",
        ["access_denied"] = "你没有权限！",
        ["stress_gain"] = "感觉更加紧张！",
        ["stress_removed"] = "感觉更加放松！"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
