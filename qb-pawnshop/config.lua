Config = {}

Config.PawnLocation = {
    [1] = {
            coords = vector3(412.34, 314.81, 103.13),
            length = 1.5,
            width = 1.8,
            heading = 207.0,
            debugPoly = false,
            minZ = 100.97,
            maxZ = 105.42,
            distance = 3.0
        },
    }

Config.BankMoney = false -- Set to true if you want the money to go into the players bank
Config.UseTimes = false -- Set to false if you want the pawnshop open 24/7
Config.TimeOpen = 7 -- Opening Time
Config.TimeClosed = 19 -- Closing Time
Config.SendMeltingEmail = true

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

Config.PawnItems = {
    [1] = {
        item = 'goldchain',
        price = 90
    },
    [2] = {
        item = 'diamond_ring',
        price = 80
    },
    [3] = {
        item = 'rolex',
        price = 70
    },
    [4] = {
        item = 'tenkgoldchain',
        price = 110
    },
    [5] = {
        item = 'tablet',
        price = 70
    },
    [6] = {
        item = 'iphone',
        price = 70
    },
    [7] = {
        item = 'samsungphone',
        price = 70
    },
    [8] = {
        item = 'laptop',
        price = 90
    },
    [9] = {
        item = 'goldbar',
        price = 110
    },
    [10] = {
        item = 'diamond',
        price = 110
    },
}

Config.MeltingItems = { -- meltTime is amount of time in minutes per item
    [1] = {
        item = 'goldchain',
        rewards = {
            [1] = {
                item = 'goldbar',
                amount = 2
            }
        },
        meltTime = 1
    },
    [2] = {
        item = 'diamond_ring',
        rewards = {
            [1] = {
                item = 'diamond',
                amount = 1
            },
        },
        meltTime = 1
    },
    [3] = {
        item = 'rolex',
        rewards = {
            [1] = {
                item = 'diamond',
                amount = 1
            },
            [2] = {
                item = 'goldbar',
                amount = 1
            },
        },
        meltTime = 1
    },
    [4] = {
        item = 'tenkgoldchain',
        rewards = {
            [1] = {
                item = 'diamond',
                amount = 5
            },
            [2] = {
                item = 'goldbar',
                amount = 1
            }
        },
        meltTime = 1
    },
}
