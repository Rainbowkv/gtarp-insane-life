local Translations = {
    error = {
        minimum_store_robbery_police = "警察数量不足 (%{MinimumStoreRobberyPolice} 警察所需)",
        not_driver = "您不是司机",
        demolish_vehicle = "现在不允许拆解车辆",
        process_canceled = "过程已取消..",
        you_broke_the_lock_pick = "您弄坏了撬锁工具",
    },
    text = {
        the_cash_register_is_empty = "收银机是空的",
        try_combination = "~g~E~w~ - 尝试组合",
        safe_opened = "保险箱已打开",
        emptying_the_register = "正在清空收银机..",
        safe_code = "保险箱密码："
    },
    email = {
        shop_robbery = "10-31 | 商店抢劫",
        someone_is_trying_to_rob_a_store = "有人正在抢劫 %{street} 的商店 (摄像头ID: %{cameraId1})",
        storerobbery_progress = "商店抢劫进行中"
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
