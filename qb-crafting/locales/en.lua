local Translations = {
    menus = {
        header = '制作菜单',
        pickupworkBench = '捡起工作台',
        entercraftAmount = '输入制作数量:',
    },
    notifications = {
        pickupBench = '你已捡起工作台。',
        invalidAmount = '输入的数量无效',
        invalidInput = '输入无效',
        notenoughMaterials = '你的材料不足！',
        craftingCancelled = '你取消了制作',
        tablePlace = '你的制作台已放置',
        craftMessage = '你已制作了一个 %s',
        xpGain = '你在 %s 中获得了 %d XP',
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
