Config = {}

Config.AuctionHouse = {
    Ped = {
        model = "a_m_m_business_01",
        coords = vector4(202.26, 1179.76, 227.01, 99.33),
        scenario = "WORLD_HUMAN_CLIPBOARD"
    },
    Blip = {
        sprite = 659,
        color = 5,
        scale = 0.8,
        label = "车辆拍卖会"
    },
    PreviewSpot = vector4(200.3, 1166.0, 227.0, 99.08)
}

Config.Camera = {
    defaultPos = vector3(193.26, 1164.31, 229.27),
    defaultRot = vector3(-25.0, 0.0, 90.0),
    minZoom = 2.0,
    maxZoom = 10.0,
    zoomSpeed = 0.5,
    rotationSpeed = 2.0,
    defaultFov = 50.0,
    minFov = 30.0,
    maxFov = 80.0
}
-- 186.92, 1188.78, 225.59, 180.59
Config.VehiclePool = {
    cycles = {
        { name = "Fixter", model = "fixter" },
    },
    utility = {
        { name = 'Tractor', model = "tractor"},
    },
    super = {
        { name = "Turismo3", model = "turismo3"},
        { name = "Zentorno", model = "zentorno"}
    },
    suvs = {
        { name = "Patriot2", model = "patriot2"},
    },
}

Config.EnablePreviewInAdmin = true
Config.MinimumBidIncrement = 2400
Config.BidCooldownSeconds = 5
Config.ClaimExpirationDays = 7

Config.Webhooks = {
    AuctionCreated = "https://discord.com/api/webhooks/1337837910715535430/GiOnjVE2WuMCTXxeC4p3bmawjVqlTvNQVSd2r1Shrb11BPE2PWzowqLVihZwClEBNU1K",
    BidPlaced = "https://discord.com/api/webhooks/1337837910715535430/GiOnjVE2WuMCTXxeC4p3bmawjVqlTvNQVSd2r1Shrb11BPE2PWzowqLVihZwClEBNU1K",
    AuctionCompleted = "https://discord.com/api/webhooks/1337837910715535430/GiOnjVE2WuMCTXxeC4p3bmawjVqlTvNQVSd2r1Shrb11BPE2PWzowqLVihZwClEBNU1K"
}

Config.Colors = {
    Green = 65280,
    Yellow = 16776960,
    Red = 16711680,
    Blue = 255
}

Config.defaultGrage = 'XinShouGongYu'
Config.defaultGrageUIName = '新手公寓'

Config.vehicleSpawnPoint = vector4(186.92, 1188.78, 225.59, 180.59)