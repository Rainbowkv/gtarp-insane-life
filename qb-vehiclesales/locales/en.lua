local Translations = {
    error = {
        not_your_vehicle = '这不是你的车辆..',
        vehicle_does_not_exist = '车辆不存在',
        not_enough_money = '你没有足够的资金',
        finish_payments = '你必须先支付完这辆车，才能出售它..',
        no_space_on_lot = '停车场没有足够的空间放置你的车！',
        not_in_veh = '你不在车辆内！',
        not_for_sale = '这辆车不出售！',
    },
    menu = {
        view_contract = '查看合同',
        view_contract_int = '[E] 查看合同',
        sell_vehicle = '出售车辆',
        sell_vehicle_help = '将车辆出售给其他市民！',
        sell_back = '回购车辆！',
        sell_back_help = '以较低的价格将你的车回购！',
        interaction = '[E] 出售车辆',
    },
    success = {
        sold_car_for_price = '你已经以 $%{value} 的价格卖掉了你的车',
        car_up_for_sale = '你的车已上架出售！价格 - $%{value}',
        vehicle_bought = '车辆已购买',
    },
    info = {
        confirm_cancel = '~g~Y~w~ - 确认 / ~r~N~w~ - 取消 ~g~',
        vehicle_returned = '你的车辆已返回',
        used_vehicle_lot = '二手车市场',
        sell_vehicle_to_dealer = '[~g~E~w~] - 卖车给经销商，价格 ~g~$%{value}',
        view_contract = '[~g~E~w~] - 查看车辆合同',
        cancel_sale = '[~r~G~w~] - 取消车辆出售',
        model_price = '%{value}, 价格: ~g~$%{value2}',
        are_you_sure = '你确定不再出售这辆车吗？',
        yes_no = '[~g~7~w~] - 是 | [~r~8~w~] - 否',
        place_vehicle_for_sale = '[~g~E~w~] - 将车辆上架出售给车主',
    },
    charinfo = {
        firstname = '未知',
        lastname = '未知',
        account = '账户未知..',
        phone = '电话号码未知..',
    },
    mail = {
        sender = '瑞文斯二手车交易中心',
        subject = '你已售出一辆车！',
        message = '你通过出售你的%{value2}赚了$%{value}。',
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
