local Translations = {
    error = {
        to_far_from_door = '你离门铃太远了',
        nobody_home = '家里没有人..',
        nobody_at_door = '门外没有人...',
    },
    success = {
        receive_apart = '你得到了一个公寓',
        changed_apart = '你换了公寓',
    },
    info = {
        at_the_door = '有人在门口！',
    },
    text = {
        options = '[E] 公寓选项',
        enter = '进入公寓',
        ring_doorbell = '按门铃',
        logout = '登出角色',
        change_outfit = '更换服装',
        open_stash = '打开储物箱',
        move_here = '搬到这里',
        open_door = '开门',
        leave = '离开公寓',
        close_menu = '⬅ 关闭菜单',
        tennants = '租户',
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})