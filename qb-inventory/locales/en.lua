local Translations = {
    progress = {
        ['snowballs'] = '正在收集雪球..',
    },
    notify = {
        ['failed'] = '失败',
        ['canceled'] = '已取消',
        ['vlocked'] = '车辆被锁定',
        ['notowned'] = '你不拥有这个物品！',
        ['missitem'] = '你没有这个物品！',
        ['nonb'] = '附近没有人！',
        ['noaccess'] = '无法访问',
        ['nosell'] = '你不能卖掉这个物品..',
        ['itemexist'] = '物品不存在',
        ['notencash'] = '你没有足够的现金..',
        ['noitem'] = '你没有正确的物品..',
        ['gsitem'] = '你不能给自己物品？',
        ['tftgitem'] = '你离给物品太远了！',
        ['infound'] = '你尝试赠送的物品未找到！',
        ['iifound'] = '找到错误的物品，请再试一次！',
        ['gitemrec'] = '你收到了 ',
        ['gitemfrom'] = ' 来自 ',
        ['gitemyg'] = '你给了 ',
        ['gitinvfull'] = '对方的背包已满！',
        ['giymif'] = '你的背包已满！',
        ['gitydhei'] = '你没有足够的物品',
        ['gitydhitt'] = '你没有足够的物品进行转移',
        ['navt'] = '不是有效的类型..',
        ['anfoc'] = '参数未正确填写..',
        ['yhg'] = '你已赠送 ',
        ['cgitem'] = '不能赠送物品！',
        ['idne'] = '物品不存在',
        ['pdne'] = '玩家不在线',
    },
    inf_mapping = {
        ['opn_inv'] = '打开背包',
        ['tog_slots'] = '切换快捷键插槽',
        ['use_item'] = '使用插槽中的物品 ',
    },
    menu = {
        ['vending'] = '自动售货机',
        ['bin'] = '打开垃圾桶',
        ['craft'] = '制作',
        ['o_bag'] = '打开包裹',
    },
    interaction = {
        ['craft'] = '~g~E~w~ - 制作',
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
