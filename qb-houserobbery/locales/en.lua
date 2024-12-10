local Translations = {
    error = {
        ['missing_something'] = '看起来你缺少了什么...',
        ['not_enough_police'] = '警力不足...',
        ['door_open'] = '门已经是开着的...',
        ['process_cancelled'] = '操作已取消...',
        ['didnt_work'] = '操作未成功...',
        ['emty_box'] = '箱子是空的...',
        ['not_allowed_time'] = '在这个时间不能做这个。'
    },
    success = {
        ['worked'] = '操作成功！',
    },
    info = {
        ['palert'] = '试图入室盗窃',
        ['henter'] = '~g~E~w~ - 进入',
        ['hleave'] = '~g~E~w~ - 离开房屋',
        ['aint'] = '~g~E~w~ - ',
        ['hsearch'] = '正在搜索...',
        ['hsempty'] = '空的...',
    },
    searching = {
        ['search_bcabinet'] = '搜索床头柜',
        ['search_closet'] = '搜索衣柜',
        ['search_chest'] = '搜索箱子',
        ['search_drawer'] = '搜索抽屉',
        ['search_cabinet'] = '夜间柜',
        ['search_kcabinet'] = '搜索厨房柜子',
        ['search_shelves'] = '搜索架子',
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
