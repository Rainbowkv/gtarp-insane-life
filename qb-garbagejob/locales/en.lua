local Translations = {
    error = {
        ["cancled"] = "已取消",
        ["no_truck"] = "你没有卡车！",
        ["not_enough"] = "钱不够（需要 %{value}）",
        ["too_far"] = "你离投放点太远了",
        ["early_finish"] = "由于提前完成（已完成: %{completed} 总数: %{total}），你的押金将不退还。",
        ["never_clocked_on"] = "你从未打卡！",
        ["all_occupied"] = "所有停车位已满",
        ["job"] = "你必须从工作中心领取工作",
    },
    success = {
        ["clear_routes"] = "清除了用户的路线，他们保存了 %{value} 条路线",
        ["pay_slip"] = "你得到了 $%{total}，你的工资单 %{deposit} 已经支付到你的银行账户！",
    },
    target = {
        ["talk"] = '与垃圾收集员对话',
        ["grab_garbage"] = "拿起垃圾袋",
        ["dispose_garbage"] = "丢弃垃圾袋",
    },
    menu = {
        ["header"] = "垃圾工作主菜单",
        ["collect"] = "领取工资",
        ["return_collect"] = "返回卡车并领取工资！",
        ["route"] = "请求路线",
        ["request_route"] = "请求一条垃圾收集路线",
    },
    info = {
        ["payslip_collect"] = "[E] - 工资单",
        ["payslip"] = "工资单",
        ["not_enough"] = "你的钱不够支付押金.. 押金费用是 $%{value}",
        ["deposit_paid"] = "你已经支付了 $%{value} 的押金！",
        ["no_deposit"] = "你没有为这辆车支付押金..",
        ["truck_returned"] = "卡车已归还，领取你的工资单来领取你的工资和押金！",
        ["bags_left"] = "还有 %{value} 个垃圾袋！",
        ["bags_still"] = "还有 %{value} 个垃圾袋在那里！",
        ["all_bags"] = "所有垃圾袋已经完成，继续前往下一个地点！",
        ["depot_issue"] = "仓库出现问题，请立即返回！",
        ["done_working"] = "你已经完成工作！返回仓库。",
        ["started"] = "你已经开始工作，地点已标记在GPS上！",
        ["grab_garbage"] = "[E] 拿一个垃圾袋",
        ["stand_grab_garbage"] = "站在这里拿垃圾袋。",
        ["dispose_garbage"] = "[E] 丢弃垃圾袋",
        ["progressbar"] = "将垃圾袋放入垃圾车中 ..",
        ["garbage_in_truck"] = "把垃圾袋放入卡车中..",
        ["stand_here"] = "站在这里..",
        ["found_crypto"] = "你在地上发现了一个加密棒",
        ["payout_deposit"] = "(+ $%{value} 押金)",
        ["store_truck"] =  "[E] - 存放垃圾车",
        ["get_truck"] =  "[E] - 垃圾车",
        ["picking_bag"] = "正在抓取垃圾袋..",
        ["talk"] = "[E] 与垃圾收集员对话",
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
