local Translations = {
    error = {
        canceled = '已取消',
        max_ammo = '最大弹药容量',
        no_weapon = '你没有武器。',
        wrong_ammo = '你的弹药类型不正确。',
        no_support_attachment = '此武器不支持该附件。',
        no_weapon_in_hand = '你手上没有武器。',
        weapon_broken = '这把武器已损坏，无法使用。',
        no_damage_on_weapon = '这把武器没有损坏。',
        weapon_broken_need_repair = '你的武器已损坏，必须修理后才能再次使用。',
        attachment_already_on_weapon = '你的武器已经装有 %{value} 附件。'
    },
    success = {
        reloaded = '重新加载'
    },
    info = {
        loading_bullets = '正在加载弹药',
        repairshop_not_usable = '修理店此时 ~r~不可~w~使用。',
        weapon_will_repair = '你的武器将被修理。',
        take_weapon_back = '[E] - 取回武器',
        repair_weapon_price = '[E] 修理武器, ~g~$%{value}~w~',
        removed_attachment = '你已从武器上移除 %{value} 附件！',
        hp_of_weapon = '你的武器耐久度'
    },
    mail = {
        sender = 'Tyrone',
        subject = '修理',
        message = '你的 %{value} 已修理完成，可以在指定位置取回。<br><br> 再见，傻逼'
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
