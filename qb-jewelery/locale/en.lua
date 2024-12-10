local Translations = {
    error = {
        fingerprints = '你在玻璃上留下了指纹',
        minimum_police = '需要至少 %{value} 名警察',
        wrong_weapon = '你的武器不够强力..',
        to_much = '你的口袋里东西太多了'
    },
    success = {},
    info = {
        progressbar = '正在砸破展示柜',
    },
    general = {
        target_label = '砸破展示柜',
        drawtextui_grab = '[E] 砸破展示柜',
        drawtextui_broken = '展示柜已破损'
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
