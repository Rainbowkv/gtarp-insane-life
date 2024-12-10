local Translations = {
    error = {
        not_in_range = '距离市政厅太远'
    },
    success = {
        recived_license = '你已获得 %{value}，费用为50美元'
    },
    info = {
        new_job_app = '你的申请已提交给 (%{job}) 的老板',
        bilp_text = '城市服务',
        city_services_menu = '~g~E~w~ - 城市服务菜单',
        id_card = '身份证',
        driver_license = '驾驶执照',
        weaponlicense = '枪械执照',
        new_job = '祝贺你获得新工作！ (%{job})',
    },
    email = {
        jobAppSender = "%{job}",
        jobAppSub = "感谢你申请加入%(job)。",
        jobAppMsg = "你好 %{gender} %{lastname}<br /><br />%{job} 已收到你的申请。<br /><br />老板正在审核你的请求，并将在尽快安排面试时与你联系。<br /><br />再次感谢你的申请。",
        mr = '先生',
        mrs = '女士',
        sender = '市镇',
        subject = '驾驶课程请求',
        message = '你好 %{gender} %{lastname}<br /><br />我们刚收到消息，有人希望参加驾驶课程<br />如果你愿意教授，请联系以下信息：<br />姓名: <strong>%{firstname} %{lastname}</strong><br />电话号码: <strong>%{phone}</strong><br/><br/>此致敬礼，<br />市镇洛杉矶'
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
