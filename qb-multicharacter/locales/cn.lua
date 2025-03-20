local Translations = {
    notifications = {
        ["char_deleted"] = "角色已删除！",
        ["deleted_other_char"] = "您已成功删除了公民编号为 %{citizenid} 的角色。",
        ["forgot_citizenid"] = "您忘记输入公民编号了！",
    },

    commands = {
        -- /deletechar
        ["deletechar_description"] = "删除其他玩家的角色",
        ["citizenid"] = "公民编号",
        ["citizenid_help"] = "您想要删除的角色的公民编号",

        -- /logout
        ["logout_description"] = "登出角色（仅限管理员）",

        -- /closeNUI
        ["closeNUI_description"] = "关闭多NUI"
    },

    misc = {
        ["droppedplayer"] = "您已从QBCore断开连接"
    },

    ui = {
        -- Main
        characters_header = "我的角色",
        emptyslot = "空槽位",
        play_button = "开始游戏",
        create_button = "创建角色",
        delete_button = "删除角色",

        -- Character Information
        charinfo_header = "角色信息",
        charinfo_description = "选择一个角色槽位以查看关于您的角色的所有信息。",
        name = "姓名",
        male = "男",
        female = "女",
        firstname = "名",
        lastname = "姓",
        nationality = "国籍",
        gender = "性别",
        birthdate = "出生日期",
        job = "工作",
        jobgrade = "职位等级",
        cash = "现金",
        bank = "银行存款",
        phonenumber = "电话号码",
        accountnumber = "账户号码",

        chardel_header = "角色注册",

        -- Delete character
        deletechar_header = "删除角色",
        deletechar_description = "您确定要删除您的角色吗？",

        -- Buttons
        cancel = "取消",
        confirm = "确认",

        -- Loading Text
        retrieving_playerdata = "正在检索玩家数据",
        validating_playerdata = "正在验证玩家数据",
        retrieving_characters = "正在检索角色",
        validating_characters = "正在验证角色",

        -- Notifications
        ran_into_issue = "我们遇到了一个问题",
        profanity = "看起来您尝试在名字或国籍中使用某种不文明/不良词汇！",
        forgotten_field = "看起来您忘记了输入一个或多个字段！"
    }
}

if GetConvar('qb_locale', 'en') == 'cn' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end

