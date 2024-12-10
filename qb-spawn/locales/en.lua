local Translations = {
    ui = {
        last_location = "出国位置",
        confirm = "确认",
        where_would_you_like_to_start = "你想从哪里下飞机？",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
