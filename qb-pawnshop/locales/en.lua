local Translations = {
    error = {
        negative = '尝试卖出负数量的物品？',
        no_melt = '你没有给我任何需要熔炼的物品...',
        no_items = '物品不足',
        inventory_full = '背包太满，无法接收所有物品。请确保背包没有满。丢失物品：%{value}'
    },
    success = {
        sold = '你已卖出 %{value} x %{value2} 获得 $%{value3}',
        items_received = '你已收到 %{value} x %{value2}',
    },
    info = {
        title = '典当铺',
        subject = '熔炼物品',
        message = '我们已完成熔炼你的物品。你可以随时来取。',
        open_pawn = '打开典当铺',
        sell = '卖物品',
        sell_pawn = '将物品卖给典当铺',
        melt = '熔炼物品',
        melt_pawn = '打开熔炼铺',
        melt_pickup = '取回熔炼后的物品',
        pawn_closed = '典当铺已关闭。请在 %{value}:00 AM - %{value2}:00 PM 之间回来。',
        sell_items = '出售价格 $%{value}',
        back = '⬅ 返回',
        melt_item = '熔炼 %{value}',
        max = '最大数量 %{value}',
        submit = '熔炼',
        melt_wait = '给我 %{value} 分钟，我就能熔炼好你的物品',
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
