Config = {}

Config.reward = 5000

Config.ped = {
    model = 'a_m_y_business_01',
    coords = vector4(-1418.47, -214.79, 46.5, 31.13)
}

Config.WhitelistCenter = vector3(-1422.15, -208.89, 46.5)
Config.WhitelistRadius = 10.0

Config.WhitelistQuestions = {
    -- ic问题，主要是为了规范玩家的扮演，15个左右
    {
        question = "角色扮演中的无前置是什么意思？",
        options = {"对方与我没有前置扮演剧情", "对方与我无过往矛盾", "对方与我无过往交情"},
        answer = 1
    },
    {
        question = "当你单方面看一个人很不爽时，你可以做的最出格的行为是什么？",
        options = {"给他一枪", "言语挑衅他", "用拳头打他"},
        answer = 2
    },
    {
        question = "你在街上看到有人挑衅你，你不能？",
        options = {"立刻开枪或辱骂对方", "回应他的挑衅", "根据自身IC性格和职业后做出合理反应"},
        answer = 1
    },
    {
        question = "你扮演的角色刚刚出狱，不能干什么？",
        options = {"去银行取钱", "打车离开监狱", "立刻找警察进行无前置复仇"},
        answer = 3
    },
    {
        question = "你可以在相对或绝对安全区开枪吗？",
        options = {"无前置的情况下不能", "有前置的情况下可以", "任何情况都不行"},
        answer = 3
    },
    {
        question = "你扮演的角色是一名医生，你看到某人枪伤严重，你该？",
        options = {"无视他", "尽力抢救，并进行相关的语言交流", "直接扔进垃圾桶"},
        answer = 2
    },
    {
        question = "你在城市初来乍到，应该？",
        options = {"结交朋友，了解城市", "马上抢劫银行", "收集武器打架"},
        answer = 1
    },
    {
        question = "你被人持枪指着，对方想要打劫你，你应该？",
        options = {"立刻掏出手机报警", "配合扮演", "立刻掏出武器反击"},
        answer = 2
    },
    {
        question = "RP中死亡后你应该？",
        options = {"忘记死亡前的事", "继续记得仇人是谁", "找机会复仇"},
        answer = 1
    },
    {
        question = "你被警察抓捕后关押回地牢，你应该？",
        options = {"合理扮演被抓", "直接逃跑", "坐飞机出国"},
        answer = 1
    },
    {
        question = "你角色的行为应该建立在？",
        options = {"您OOC的真实想法", "角色性格和背景设定", "想干嘛就干嘛"},
        answer = 2
    },
    {
        question = "什么是 Power Gaming（PG）？",
        options = {
            "使用超能力杀人",
            "利用游戏机制强迫他人配合自己",
            "使用警察职业"
        },
        answer = 2
    },
    {
        question = "什么是 Metagaming（MG）？",
        options = {
            "使用游戏外信息影响RP行为",
            "在城市内认识人",
            "扮演一个医生"
        },
        answer = 1
    },
    {
        question = "你可以同时扮演多个性格完全不同的角色吗？",
        options = {"可以，只要不冲突", "不可以", "随意切换"},
        answer = 2
    },
    {
        question = "警察抓到你后怀疑你有非法物品，你应该？",
        options = {"配合扮演/适当狡辩周旋", "死不承认即便人赃俱获", "坐飞机出国"},
        answer = 1
    },
    {
        question = "你在公共场合随意开枪属于？",
        options = {"高质量RP（奖励）", "非RP行为（封禁相应时长）", "正常行为"},
        answer = 2
    },
    -- ooc问题，游玩游戏时遇到的问题，10个左右
    {
        question = "游玩过程中遇到BUG怎么办？",
        options = {"举报", "利用", "告诉朋友"},
        answer = 1
    },
    {
        question = "如果你断线重连，应该？",
        options = {"当作什么都没发生", "躲起来", "立刻回到原RP情境"},
        answer = 3
    },
    {
        question = "如果你发现有人开挂，你应该？",
        options = {"立刻报告管理员（获取奖励）", "无视", "加入/追随他"},
        answer = 1
    },
    {
        question = "如果你被他人OOC辱骂，你应该？",
        options = {"回骂回去", "录屏并举报", "线下解决"},
        answer = 2
    },
    {
        question = "你在扮演角色时应遵守什么？",
        options = {"本服务器RP规则与守则", "自己的想法", "其他国家习惯的规则与守则"},
        answer = 1
    },
    {
        question = "IC世界中什么情况下您可以脱离扮演？",
        options = {"仅和自己的OC朋友交流时", "我跟对方达成口头约定", "任何情况都不行"},
        answer = 3
    },
}