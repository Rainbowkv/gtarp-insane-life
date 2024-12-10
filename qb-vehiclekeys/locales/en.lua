local Translations = {
    notify = {
        ydhk = '你没有这辆车的钥匙。',
        nonear = '附近没有人可以交钥匙给。',
        vlock = '车辆已锁定！',
        vunlock = '车辆已解锁！',
        vlockpick = '你成功撬开了车门锁！',
        fvlockpick = '你未能找到钥匙，感到沮丧。',
        vgkeys = '你交出了钥匙。',
        vgetkeys = '你获得了这辆车的钥匙！',
        fpid = '请填写玩家ID和车牌号。',
        cjackfail = '劫车失败！',
        vehclose = '附近没有车辆！',
    },
    progress = {
        takekeys = '从尸体上取钥匙...',
        hskeys = '寻找车钥匙...',
        acjack = '正在尝试劫车...',
    },
    info = {
        skeys = '~g~[H]~w~ - 搜索车钥匙',
        tlock = '切换车辆锁',
        palert = '正在进行盗车，类型：',
        engine = '切换引擎',
    },
    addcom = {
        givekeys = '将钥匙交给某人。如果没有ID，会交给最近的人或车内的所有人。',
        givekeys_id = 'id',
        givekeys_id_help = '玩家ID',
        addkeys = '为某辆车添加钥匙给某人。',
        addkeys_id = 'id',
        addkeys_id_help = '玩家ID',
        addkeys_plate = '车牌',
        addkeys_plate_help = '车牌号',
        rkeys = '为某辆车移除某人的钥匙。',
        rkeys_id = 'id',
        rkeys_id_help = '玩家ID',
        rkeys_plate = '车牌',
        rkeys_plate_help = '车牌号',
    }
    
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
