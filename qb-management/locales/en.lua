-- 添加MC的翻译
local Translations = {
    headers = {
        ['bsm'] = '老板菜单 - ',
    },
    body = {
        ['manage'] = '管理员工',
        ['managed'] = '查看您的员工列表',
        ['hire'] = '雇佣员工',
        ['hired'] = '雇佣附近的市民',
        ['storage'] = '存储访问',
        ['storaged'] = '打开存储',
        ['outfits'] = '服装',
        ['outfitsd'] = '查看保存的服装',
        ['money'] = '资金管理',
        ['moneyd'] = '查看您的公司余额',
        ['mempl'] = '管理员工 - ',
        ['mngpl'] = '管理 ',
        ['grade'] = '等级: ',
        ['fireemp'] = '解雇员工',
        ['hireemp'] = '雇佣员工 - ',
        ['cid'] = '市民ID: ',
        ['balance'] = '余额: $',
        ['deposit'] = '存款',
        ['depositd'] = '存款到账户',
        ['withdraw'] = '取款',
        ['withdrawd'] = '从账户取款',
        ['depositm'] = '存款金额 <br> 可用余额: $',
        ['withdrawm'] = '取款金额 <br> 可用余额: $',
        ['submit'] = '确认',
        ['amount'] = '金额',
        ['return'] = '返回',
        ['exit'] = '退出',
    },
    drawtext = {
        ['label'] = '[E] 打开工作管理',
    },
    target = {
        ['label'] = '老板菜单',
    },
    headersgang = {
        ['bsm'] = '帮派管理 - ',
    },
    bodygang = {
        ['manage'] = '管理员工成员',
        ['managed'] = '招募或解雇帮派成员',
        ['hire'] = '招募成员',
        ['hired'] = '雇佣帮派成员',
        ['storage'] = '存储访问',
        ['storaged'] = '打开帮派仓库',
        ['outfits'] = '服装',
        ['outfitsd'] = '更换服装',
        ['money'] = '资金管理',
        ['moneyd'] = '查看您的帮派余额',
        ['mempl'] = '管理员工成员 - ',
        ['mngpl'] = '管理 ',
        ['grade'] = '等级: ',
        ['fireemp'] = '解雇',
        ['hireemp'] = '雇佣帮派成员 - ',
        ['cid'] = '市民ID: ',
        ['balance'] = '余额: $',
        ['deposit'] = '存款',
        ['depositd'] = '存款到账户',
        ['withdraw'] = '取款',
        ['withdrawd'] = '从账户取款',
        ['depositm'] = '存款金额 <br> 可用余额: $',
        ['withdrawm'] = '取款金额 <br> 可用余额: $',
        ['submit'] = '确认',
        ['amount'] = '金额',
        ['return'] = '返回',
        ['exit'] = '退出',
    },
    drawtextgang = {
        ['label'] = '[E] 打开帮派管理',
    },
    targetgang = {
        ['label'] = '帮派菜单',
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
