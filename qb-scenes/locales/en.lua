local Translations = {
    notify = {
        ["laser_error"] = "激光没有探测到场景文字",
        ["scene_delete"] = "场景文字成功删除",
        ["scene_error"] = "场景文字太远.",
    }
}
Lang = Locale:new({phrases = Translations, warnOnMissing = true})
