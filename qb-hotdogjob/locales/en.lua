local Translations = {
    error = {
        no_money = '钱不够',
        too_far = '你离热狗摊太远了',
        no_stand = '你没有热狗摊',
        cust_refused = '顾客拒绝了！',
        no_stand_found = '找不到你的热狗摊，你将无法退回押金！',
        no_more = '你在委员会前没有更多的 %{value}',
        deposit_notreturned = '你没有热狗摊',
        no_dogs = '你没有热狗',
    },
    success = {
        deposit = '你支付了 $%{deposit} 的押金！',
        deposit_returned = '你的 $%{deposit} 押金已退还！',
        sold_hotdogs = '%{value} x 热狗(已)售出，获得 $%{value2}',
        made_hotdog = '你制作了 %{value} 个热狗',
        made_luck_hotdog = '你制作了 %{value} x %{value2} 个热狗',
    },
    info = {
        command = "删除摊位（仅管理员）",
        blip_name = '热狗摊',
        start_working = '[E] 开始工作',
        start_work = '开始工作',
        stop_working = '[E] 停止工作',
        stop_work = '停止工作',
        grab_stall = '[~g~G~s~] 拿起摊位',
        drop_stall = '[~g~G~s~] 放下摊位',
        grab = '拿起摊位',
        prepare = '准备热狗',
        toggle_sell = '切换销售状态',
        selling_prep = '[~g~E~s~] 热狗准备 [销售: ~g~销售中~w~]',
        not_selling = '[~g~E~s~] 热狗准备 [销售: ~r~未销售~w~]',
        sell_dogs = '[~g~7~s~] 销售 %{value} x 热狗，价格 $%{value2} / [~g~8~s~] 拒绝',
        sell_dogs_target = '销售 %{value} x 热狗，价格 $%{value2}',
        admin_removed = "热狗摊已移除",
        label_a = "完美 (A)",
        label_b = "稀有 (B)",
        label_c = "普通 (C)"
    },
    keymapping = {
        gkey = '放下热狗摊',
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
