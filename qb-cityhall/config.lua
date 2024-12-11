Config = Config or {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.AvailableJobs = {                                     -- Only used when not using qb-jobs.
    ['trucker'] = { ['label'] = '卡车司机', ['isManaged'] = false },
    ['taxi'] = { ['label'] = '出租车司机', ['isManaged'] = false },
    ['tow'] = { ['label'] = '拖吊车', ['isManaged'] = false },
    ['reporter'] = { ['label'] = '新闻记者', ['isManaged'] = false },
    ['garbage'] = { ['label'] = '清洁工', ['isManaged'] = false },
    ['bus'] = { ['label'] = '公交司机', ['isManaged'] = false },
    ['hotdog'] = { ['label'] = '热狗摊摊主', ['isManaged'] = false }
}

Config.Cityhalls = {
    { -- Cityhall 1
        coords = vec3(-265.0, -963.6, 31.2),
        showBlip = true,
        blipData = {
            sprite = 487,
            display = 4,
            scale = 0.65,
            colour = 0,
            title = '市政厅服务'
        },
        licenses = {
            ['id_card'] = {
                label = '身份证 - 1000$',
                cost = 1000,
            },
            ['driver_license'] = {
                label = '驾照 - 3000$',
                cost = 3000,
                metadata = 'driver'
            },
            ['weaponlicense'] = {
                label = '武器执照 - 8000$',
                cost = 8000,
                metadata = 'weapon'
            }
        }
    },
}

Config.DrivingSchools = {
    { -- Driving School 1
        coords = vec3(240.3, -1379.89, 33.74),
        showBlip = true,
        blipData = {
            sprite = 225,
            display = 4,
            scale = 0.65,
            colour = 3,
            title = '驾校'
        },
        instructors = {
            'DJD56142',
            'DXT09752',
            'SRI85140',
        }
    },
}

Config.Peds = {
    -- Cityhall Ped
    {
        model = 'a_m_m_hasjew_01',
        coords = vec4(-262.79, -964.18, 30.22, 181.71),
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        cityhall = true,
        zoneOptions = { -- Used for when UseTarget is false
            length = 3.0,
            width = 3.0,
            debugPoly = false
        }
    },
    -- Driving School Ped
    {
        model = 'a_m_m_eastsa_02',
        coords = vec4(240.91, -1379.2, 32.74, 138.96),
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        drivingschool = true,
        zoneOptions = { -- Used for when UseTarget is false
            length = 3.0,
            width = 3.0
        }
    }
}
