local Translations = {
    error = {
        no_vehicles = '该位置没有车辆！',
        not_depot = '你的车辆不在仓库里',
        not_owned = '该车辆不能存储',
        not_correct_type = '你不能把这种类型的车辆存放在这里',
        not_enough = '余额不足',
        no_garage = '无',
        vehicle_occupied = '不能存放该车辆，因为它不是空的',
        vehicle_not_tracked = '无法追踪该车辆',
        no_spawn = '区域太拥挤'
    },
    success = {
        vehicle_parked = '车辆已存放',
        vehicle_tracked = '车辆已追踪',
    },
    status = {
        out = '外面',
        garaged = '已存放',
        impound = '已被警察扣押',
        house = '房子',
    },
    info = {
        car_e = 'E - 车库',
        sea_e = 'E - 船屋',
        air_e = 'E - 飞机库',
        rig_e = 'E - 钻井平台',
        depot_e = 'E - 仓库',
        house_garage = 'E - 房屋车库',
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
