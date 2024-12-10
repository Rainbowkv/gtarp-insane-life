local Translations = {
    error = {
        process_canceled = "操作已取消",
        plant_has_died = "植物已经死亡。按 ~r~ E ~w~ 移除植物。",
        cant_place_here = "无法在此放置",
        not_safe_here = "这里不安全，试试你家的地方",
        not_need_nutrition = "植物不需要营养",
        this_plant_no_longer_exists = "这棵植物不再存在？",
        house_not_found = "未找到房屋",
        you_dont_have_enough_resealable_bags = "你没有足够的可封口袋",
    },
    text = {
        sort = '排序：',
        harvest_plant = '按 ~g~ E ~w~ 收获植物。',
        nutrition = "营养：",
        health = "健康：",
        progress = "进度：",
        harvesting_plant = "正在收获植物",
        planting = "种植中",
        feeding_plant = "正在喂养植物",
        the_plant_has_been_harvested = "植物已被收获",
        removing_the_plant = "正在移除植物",
        stage = "当前阶段：",
        highestStage = "收获阶段：",
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
