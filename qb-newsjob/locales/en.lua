local Translations = {
    text = {
        weazle_overlay = "Weazle 覆盖 ~INPUT_PICKUP~ \n电影覆盖: ~INPUT_INTERACTION_MENU~",
        weazel_news_vehicles = "Weazel 新闻车辆",
        close_menu = "⬅ 关闭菜单",
        weazel_news_helicopters = "Weazel 新闻直升机",
        store_vehicle = "~g~E~w~ - 存车",
        vehicles = "~g~E~w~ - 车辆",
        store_helicopters = "~g~E~w~ - 存直升机",
        helicopters = "~g~E~w~ - 直升机",
        enter = "~g~E~w~ - 进入",
        go_outside = "~g~E~w~ - 出去",
        breaking_news = "突发新闻",
        title_breaking_news = "早上7:00 / 今天 Weazel 新闻独家报道",
        bottom_breaking_news = "我们将为您带来最新新闻，实时播报"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
