local Translations = {
    success = {
        withdraw = '取款成功',
        deposit = '存款成功',
        transfer = '转账成功',
        account = '账户创建成功',
        rename = '账户重命名成功',
        delete = '账户已删除',
        userAdd = '用户已添加',
        userRemove = '用户已移除',
        card = '银行卡已创建',
        give = '$%s 现金已发放',
        receive = '$%s 现金已接收',
    },
    error = {
        error = '发生错误',
        access = '未授权访问',
        account = '未找到账户',
        accounts = '已创建最大账户数',
        user = '用户已添加',
        noUser = '未找到用户',
        money = '余额不足',
        pin = '无效的PIN码',
        card = '未找到银行卡',
        amount = '无效的金额',
        toofar = '你离得太远了',
    },
    progress = {
        atm = '正在访问ATM',
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})