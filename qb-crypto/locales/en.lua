local Translations = {
    error = {
        you_dont_have_a_cryptostick = '你没有加密棒',
        cryptostick_malfunctioned = '加密棒故障'
    },
    success = {
        you_have_exchanged_your_cryptostick_for = '你已将加密棒兑换为: %{amount} QBit'
    },
    credit = {
        there_are_amount_credited = '你已获得 %{amount} Qbit!',
        you_have_qbit_purchased = '你已购买 %{dataCoins} Qbit!'
    },
    debit = {
        you_have_sold = '你已出售 %{dataCoins} Qbit!'
    },
    text = {
        enter_usb = '[E] - 插入USB',
        system_is_rebooting = '系统正在重启 - %{rebootInfoPercentage} %',
        you_have_not_given_a_new_value = '你没有提供新值... 当前值: %{crypto}',
        this_crypto_does_not_exist = '此加密货币不存在，现有加密货币：Qbit',
        you_have_not_provided_crypto_available_qbit = '你没有提供加密货币，现有加密货币：Qbit',
        the_qbit_has_a_value_of = 'Qbit的价值为: %{crypto}',
        you_have_with_a_value_of = '你有 %{playerPlayerDataMoneyCrypto} QBit，价值为: %{mypocket},-'
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
