local Translations = {
    error = {
        ["no_keys"] = "你没有这座房子的钥匙...",
        ["not_in_house"] = "你不在房子里!",
        ["out_range"] = "你已经超出范围",
        ["no_key_holders"] = "没有找到钥匙持有者..",
        ["invalid_tier"] = "无效的房屋等级",
        ["no_house"] = "你周围没有房子",
        ["no_door"] = "你离门太远..",
        ["locked"] = "房子已锁定!",
        ["no_one_near"] = "周围没有人!",
        ["not_owner"] = "你不是这座房子的主人。",
        ["no_police"] = "没有警察在场..",
        ["already_open"] = "这座房子已经打开..",
        ["failed_invasion"] = "入侵失败，请重试",
        ["inprogress_invasion"] = "有人已经在处理门..",
        ["no_invasion"] = "这扇门没有被撬开..",
        ["realestate_only"] = "只有房地产可以使用这个命令",
        ["emergency_services"] = "只有紧急服务才能执行此操作!",
        ["already_owned"] = "这座房子已经被拥有!",
        ["not_enough_money"] = "你没有足够的钱..",
        ["remove_key_from"] = "钥匙已从 %{firstname} %{lastname} 移除",
        ["already_keys"] = "此人已经拥有这座房子的钥匙!",
        ["something_wrong"] = "出了点问题，请重试!",
        ["nobody_at_door"] = "门口没有人..."
    },
    success = {
        ["unlocked"] = "房子已解锁!",
        ["home_invasion"] = "门已经打开。",
        ["lock_invasion"] = "你再次锁上了房子..",
        ["recieved_key"] = "你已收到 %{value} 的钥匙!",
        ["house_purchased"] = "你已经成功购买了这座房子!"
    },
    info = {
        ["door_ringing"] = "有人在按门铃!",
        ["speed"] = "速度是 %{value}",
        ["added_house"] = "你已添加一座房子: %{value}",
        ["added_garage"] = "你已添加一个车库: %{value}",
        ["exit_camera"] = "退出摄像头",
        ["house_for_sale"] = "房子待售",
        ["decorate_interior"] = "装饰室内",
        ["create_house"] = "创建房子 (仅限房地产)",
        ["price_of_house"] = "房子的价格",
        ["tier_number"] = "房屋等级编号",
        ["add_garage"] = "添加房屋车库 (仅限房地产)",
        ["ring_doorbell"] = "按门铃"
    },
    menu = {
        ["house_options"] = "房屋选项",
        ["close_menu"] = "⬅ 关闭菜单",
        ["enter_house"] = "进入你的房子",
        ["give_house_key"] = "给房子钥匙",
        ["exit_property"] = "退出财产",
        ["front_camera"] = "前摄像头",
        ["back"] = "返回",
        ["remove_key"] = "移除钥匙",
        ["open_door"] = "打开门",
        ["view_house"] = "查看房子",
        ["ring_door"] = "按门铃",
        ["exit_door"] = "退出财产",
        ["open_stash"] = "打开储物箱",
        ["stash"] = "储物箱",
        ["change_outfit"] = "更换服装",
        ["outfits"] = "服装",
        ["change_character"] = "更换角色",
        ["characters"] = "角色",
        ["enter_unlocked_house"] = "进入已解锁的房子",
        ["lock_door_police"] = "锁门"
    },
    target = {
        ["open_stash"] = "[E] 打开储物箱",
        ["outfits"] = "[E] 更换服装",
        ["change_character"] = "[E] 更换角色",
    },
    log = {
        ["house_created"] = "房子创建:",
        ["house_address"] = "**地址**: %{label}\n\n**挂牌价格**: %{price}\n\n**等级**: %{tier}\n\n**挂牌代理**: %{agent}",
        ["house_purchased"] = "房子已购买:",
        ["house_purchased_by"] = "**地址**: %{house}\n\n**购买价格**: %{price}\n\n**购买者**: %{firstname} %{lastname}"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
