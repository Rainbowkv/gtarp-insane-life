local Translations = {
    notifications = {
        ["char_deleted"] = "角色已删除！",
        ["deleted_other_char"] = "你已成功删除公民ID为 %{citizenid} 的角色。",
        ["forgot_citizenid"] = "你忘记输入公民ID了！",
    },

    commands = {
        -- /deletechar
        ["deletechar_description"] = "删除其他玩家的角色",
        ["citizenid"] = "公民ID",
        ["citizenid_help"] = "你想删除的角色的公民ID",

        -- /logout
        ["logout_description"] = "退出角色（仅限管理员）",

        -- /closeNUI
        ["closeNUI_description"] = "关闭多重NUI"
    },

    misc = {
        ["droppedplayer"] = "你已断开与《GTA 疯狂生活》的连接"
    },

    ui = {
        -- 主界面
        characters_header = "我的角色",
        emptyslot = "空槽",
        play_button = "游玩",
        create_button = "创建角色",
        delete_button = "删除角色",

        -- 角色信息
        charinfo_header = "角色信息",
        charinfo_description = "选择一个角色槽以查看该角色的所有信息。",
        name = "姓名",
        male = "男",
        female = "女",
        firstname = "名字",
        lastname = "姓氏",
        nationality = "国籍",
        gender = "性别",
        birthdate = "出生日期",
        job = "职业",
        jobgrade = "职位等级",
        cash = "现金",
        bank = "银行",
        phonenumber = "电话号码",
        accountnumber = "账户号码",

        chardel_header = "角色注册",

        -- 删除角色
        deletechar_header = "删除角色",
        deletechar_description = "你确定要删除这个角色吗？",

        -- 按钮
        cancel = "取消",
        confirm = "确认",

        -- 加载文本
        retrieving_playerdata = "正在检索玩家数据",
        validating_playerdata = "正在验证玩家数据",
        retrieving_characters = "正在检索角色",
        validating_characters = "正在验证角色",

        -- 通知
        ran_into_issue = "我们遇到了一些问题",
        profanity = "似乎你在姓名或国籍中使用了不当言辞或脏话！",
        forgotten_field = "似乎你忘记填写一个或多个字段！"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
