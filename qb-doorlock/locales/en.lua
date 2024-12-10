local Translations = {
    error = {
        lockpick_fail = "失败",
        door_not_found = "未接收到模型哈希值，如果门是透明的，请确保瞄准门的框架",
        same_entity = "两个门不能是同一实体",
        door_registered = "此门已经被注册",
        door_identifier_exists = "配置中已存在此标识符的门 (%s)",
    },
    success = {
        lockpick_success = "成功"
    },
    general = {
        locked = "已锁定",
        unlocked = "已解锁",
        locked_button = "[E] - 锁定",
        unlocked_button = "[E] - 解锁",
        keymapping_description = "与门锁交互",
        keymapping_remotetriggerdoor = "远程触发门",
        locked_menu = "已锁定",
        pickable_menu = "可撬锁",
        cantunlock_menu = "无法解锁",
        hidelabel_menu = "隐藏门标签",
        distance_menu = "最大距离",
        item_authorisation_menu = "物品授权",
        citizenid_authorisation_menu = "公民ID授权",
        gang_authorisation_menu = "帮派授权",
        job_authorisation_menu = "职位授权",
        doortype_title = "门类型",
        doortype_door = "单扇门",
        doortype_double = "双扇门",
        doortype_sliding = "单滑动门",
        doortype_doublesliding = "双滑动门",
        doortype_garage = "车库门",
        dooridentifier_title = "唯一标识符",
        doorlabel_title = "门标签",
        configfile_title = "配置文件名",
        submit_text = "提交",
        newdoor_menu_title = "添加新门",
        newdoor_command_description = "将新门添加到门锁系统",
        doordebug_command_description = "切换调试模式",
        warning = "警告",
        created_by = "创建者",
        warn_no_permission_newdoor = "%{player} (%{license}) 尝试在没有权限的情况下添加新门 (来源: %{source})",
        warn_no_authorisation = "%{player} (%{license}) 尝试在没有授权的情况下打开门 (发送: %{doorID})",
        warn_wrong_doorid = "%{player} (%{license}) 尝试更新无效门 (发送: %{doorID})",
        warn_wrong_state = "%{player} (%{license}) 尝试更新到无效状态 (发送: %{state})",
        warn_wrong_doorid_type = "%{player} (%{license}) 没有发送适当的门ID (发送: %{doorID})",
        warn_admin_privilege_used = "%{player} (%{license}) 使用管理员权限打开了门"
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
