Config = {}
Config.Keybind = 'F1'          -- FiveM Keyboard, this is registered keymapping, so needs changed in keybindings if player already has this mapped.
Config.Toggle = true            -- use toggle mode. False requires hold of key
Config.UseWhilstWalking = true  -- use whilst walking
Config.EnableExtraMenu = false
Config.ExtrasEnabled = true
Config.CommandsEnable = false
Config.Fliptime = 15000
local bags = { [40] = true, [41] = true, [44] = true, [45] = true }

Config.MenuItems = {
    {
        id = 'citizen',
        title = '市民',
        icon = 'user',
        items = {
            {
                id = 'jobinfo',
                title = '工作',
                icon = 'briefcase',
                type = 'client',
                event = 'qb-radialmenu:jobinfo',
                shouldClose = true
            }, 
            {
                id = 'ganginfo',
                title = '帮派',
                icon = 'mask',
                type = 'client',
                event = 'qb-radialmenu:ganginfo',
                shouldClose = true
            }, 
        },
    },
    {
        id = 'interactions',
        title = '互动',
        icon = 'triangle-exclamation',
        items = {
            {
                id = 'escort2',
                title = '拖动',
                icon = 'user-group',
                type = 'client',
                event = 'ars_ambulancejob:client:MenuEscortPlayer',
                shouldClose = true
            }, 
            -- {
            --     id = 'playerinvehicle',
            --     title = '放入车内',
            --     icon = 'car-side',
            --     type = 'client',
            --     event = 'police:client:PutPlayerInVehicle',
            --     shouldClose = true
            -- }, 
            -- {
            --     id = 'playeroutvehicle',
            --     title = '放出车外',
            --     icon = 'car-side',
            --     type = 'client',
            --     event = 'police:client:SetPlayerOutVehicle',
            --     shouldClose = true
            -- }, 
            -- {
            --     id = 'stealplayer',
            --     title = '抢劫',
            --     icon = 'mask',
            --     type = 'client',
            --     event = 'police:client:RobPlayer',
            --     shouldClose = true
            -- }, 
            -- {
            --     id = 'escort',
            --     title = '绑架',
            --     icon = 'user-group',
            --     type = 'client',
            --     event = 'police:client:KidnapPlayer',
            --     shouldClose = true
            -- }, 
            -- {
            --     id = 'escort554',
            --     title = '人质',
            --     icon = 'child',
            --     type = 'client',
            --     event = 'A5:Client:TakeHostage',
            --     shouldClose = true
            -- }
        }
    },     
}

Config.VehicleDoors = {
    id = 'vehicledoors',
    title = '车门',
    icon = 'car-side',
    items = {
        {
            id = 'door0',
            title = '主驾门',
            icon = 'car-side',
            type = 'client',
            event = 'qb-radialmenu:client:openDoor',
            shouldClose = false
        }, {
        id = 'door4',
        title = '引擎盖',
        icon = 'car',
        type = 'client',
        event = 'qb-radialmenu:client:openDoor',
        shouldClose = false
    }, {
        id = 'door1',
        title = '副驾门',
        icon = 'car-side',
        type = 'client',
        event = 'qb-radialmenu:client:openDoor',
        shouldClose = false
    }, {
        id = 'door3',
        title = '右后门',
        icon = 'car-side',
        type = 'client',
        event = 'qb-radialmenu:client:openDoor',
        shouldClose = false
    }, {
        id = 'door5',
        title = '后备箱',
        icon = 'car',
        type = 'client',
        event = 'qb-radialmenu:client:openDoor',
        shouldClose = false
    }, {
        id = 'door2',
        title = '左后门',
        icon = 'car-side',
        type = 'client',
        event = 'qb-radialmenu:client:openDoor',
        shouldClose = false
    }
    }
}

Config.VehicleExtras = {
    id = 'vehicleextras',
    title = '车辆附加功能',
    icon = 'plus',
    items = {
        {
            id = 'extra1',
            title = '附加功能 1',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
        id = 'extra2',
        title = '附加功能 2',
        icon = 'box-open',
        type = 'client',
        event = 'qb-radialmenu:client:setExtra',
        shouldClose = false
    }, {
        id = 'extra3',
        title = '附加功能 3',
        icon = 'box-open',
        type = 'client',
        event = 'qb-radialmenu:client:setExtra',
        shouldClose = false
    }, {
        id = 'extra4',
        title = '附加功能 4',
        icon = 'box-open',
        type = 'client',
        event = 'qb-radialmenu:client:setExtra',
        shouldClose = false
    }, {
        id = 'extra5',
        title = '附加功能 5',
        icon = 'box-open',
        type = 'client',
        event = 'qb-radialmenu:client:setExtra',
        shouldClose = false
    }, {
        id = 'extra6',
        title = '附加功能 6',
        icon = 'box-open',
        type = 'client',
        event = 'qb-radialmenu:client:setExtra',
        shouldClose = false
    }, {
        id = 'extra7',
        title = '附加功能 7',
        icon = 'box-open',
        type = 'client',
        event = 'qb-radialmenu:client:setExtra',
        shouldClose = false
    }, {
        id = 'extra8',
        title = '附加功能 8',
        icon = 'box-open',
        type = 'client',
        event = 'qb-radialmenu:client:setExtra',
        shouldClose = false
    }, {
        id = 'extra9',
        title = '附加功能 9',
        icon = 'box-open',
        type = 'client',
        event = 'qb-radialmenu:client:setExtra',
        shouldClose = false
    }, {
        id = 'extra10',
        title = '附加功能 10',
        icon = 'box-open',
        type = 'client',
        event = 'qb-radialmenu:client:setExtra',
        shouldClose = false
    }, {
        id = 'extra11',
        title = '附加功能 11',
        icon = 'box-open',
        type = 'client',
        event = 'qb-radialmenu:client:setExtra',
        shouldClose = false
    }, {
        id = 'extra12',
        title = '附加功能 12',
        icon = 'box-open',
        type = 'client',
        event = 'qb-radialmenu:client:setExtra',
        shouldClose = false
    }, {
        id = 'extra13',
        title = '附加功能 13',
        icon = 'box-open',
        type = 'client',
        event = 'qb-radialmenu:client:setExtra',
        shouldClose = false
    }
    }
}

Config.VehicleSeats = {
    id = 'vehicleseats',
    title = '载具座位',
    icon = 'chair',
    items = {}
}

Config.JobInteractions = {
    ['taxi'] = {
        {
            id = 'togglemeter',
            title = '显示/隐藏计价器',
            icon = 'eye-slash',
            type = 'client',
            event = 'qb-taxi:client:toggleMeter',
            shouldClose = false
        }, {
        id = 'togglemouse',
        title = '开始/停止计价器',
        icon = 'hourglass-start',
        type = 'client',
        event = 'qb-taxi:client:enableMeter',
        shouldClose = true
        }, {
            id = 'npc_mission',
            title = 'NPC任务',
            icon = 'taxi',
            type = 'client',
            event = 'qb-taxi:client:DoTaxiNpc',
            shouldClose = true
        }
    },
    ['tow'] = {
        {
            id = 'togglenpc',
            title = '切换NPC',
            icon = 'toggle-on',
            type = 'client',
            event = 'jobs:client:ToggleNpc',
            shouldClose = true
        }, {
        id = 'towvehicle',
        title = '拖车',
        icon = 'truck-pickup',
        type = 'client',
        event = 'qb-tow:client:TowVehicle',
        shouldClose = true
    }
    },
    ['mechanic'] = {
        {
            id = 'towvehicle',
            title = '拖车',
            icon = 'truck-pickup',
            type = 'client',
            event = 'qb-tow:client:TowVehicle',
            shouldClose = true
        }
    },
    ['hotdog'] = {
        {
            id = 'togglesell',
            title = '切换销售',
            icon = 'hotdog',
            type = 'client',
            event = 'qb-hotdogjob:client:ToggleSell',
            shouldClose = true
        }
    }
}

Config.TrunkClasses = {
    [0] = { allowed = true, x = 0.0, y = -1.5, z = 0.0 },   -- Coupes
    [1] = { allowed = true, x = 0.0, y = -2.0, z = 0.0 },   -- Sedans
    [2] = { allowed = true, x = 0.0, y = -1.0, z = 0.25 },  -- SUVs
    [3] = { allowed = true, x = 0.0, y = -1.5, z = 0.0 },   -- Coupes
    [4] = { allowed = true, x = 0.0, y = -2.0, z = 0.0 },   -- Muscle
    [5] = { allowed = true, x = 0.0, y = -2.0, z = 0.0 },   -- Sports Classics
    [6] = { allowed = true, x = 0.0, y = -2.0, z = 0.0 },   -- Sports
    [7] = { allowed = true, x = 0.0, y = -2.0, z = 0.0 },   -- Super
    [8] = { allowed = false, x = 0.0, y = -1.0, z = 0.25 }, -- Motorcycles
    [9] = { allowed = true, x = 0.0, y = -1.0, z = 0.25 },  -- Off-road
    [10] = { allowed = true, x = 0.0, y = -1.0, z = 0.25 }, -- Industrial
    [11] = { allowed = true, x = 0.0, y = -1.0, z = 0.25 }, -- Utility
    [12] = { allowed = true, x = 0.0, y = -1.0, z = 0.25 }, -- Vans
    [13] = { allowed = true, x = 0.0, y = -1.0, z = 0.25 }, -- Cycles
    [14] = { allowed = true, x = 0.0, y = -1.0, z = 0.25 }, -- Boats
    [15] = { allowed = true, x = 0.0, y = -1.0, z = 0.25 }, -- Helicopters
    [16] = { allowed = true, x = 0.0, y = -1.0, z = 0.25 }, -- Planes
    [17] = { allowed = true, x = 0.0, y = -1.0, z = 0.25 }, -- Service
    [18] = { allowed = true, x = 0.0, y = -1.0, z = 0.25 }, -- Emergency
    [19] = { allowed = true, x = 0.0, y = -1.0, z = 0.25 }, -- Military
    [20] = { allowed = true, x = 0.0, y = -1.0, z = 0.25 }, -- Commercial
    [21] = { allowed = true, x = 0.0, y = -1.0, z = 0.25 }  -- Trains
}

Config.ExtraCommands = {
    ['pants'] = {
        Func = function() ToggleClothing('Pants', true) end,
        Sprite = 'pants',
        Desc = 'Take your pants off/on',
        Name = 'Pants',
        OffsetX = -0.04,
        OffsetY = 0.0
    },
    ['shirt'] = {
        Func = function() ToggleClothing('Shirt', true) end,
        Sprite = 'shirt',
        Desc = 'Take your shirt off/on',
        Name = 'shirt',
        OffsetX = 0.04,
        OffsetY = 0.0
    },
    ['reset'] = {
        Func = function()
            if not ResetClothing(true) then
                Notify('Nothing To Reset', 'error')
            end
        end,
        Sprite = 'reset',
        Desc = 'Revert everything back to normal',
        Name = 'reset',
        OffsetX = 0.12,
        OffsetY = 0.2,
        Rotate = true
    },
    ['bagoff'] = {
        Func = function() ToggleClothing('Bagoff', true) end,
        Sprite = 'bagoff',
        SpriteFunc = function()
            local Bag = GetPedDrawableVariation(PlayerPedId(), 5)
            local BagOff = LastEquipped['Bagoff']
            if LastEquipped['Bagoff'] then
                if bags[BagOff.Drawable] then
                    return 'bagoff'
                else
                    return 'paraoff'
                end
            end
            if Bag ~= 0 then
                if bags[Bag] then
                    return 'bagoff'
                else
                    return 'paraoff'
                end
            else
                return false
            end
        end,
        Desc = 'Take your bag off/on',
        Name = 'bagoff',
        OffsetX = -0.12,
        OffsetY = 0.2
    }
}

Config.Commands = {
    ['top'] = {
        Func = function() ToggleClothing('Top') end,
        Sprite = 'top',
        Desc = 'Take your shirt off/on',
        Button = 1,
        Name = 'Torso'
    },
    ['gloves'] = {
        Func = function() ToggleClothing('gloves') end,
        Sprite = 'gloves',
        Desc = 'Take your gloves off/on',
        Button = 2,
        Name = 'Gloves'
    },
    ['visor'] = {
        Func = function() ToggleProps('visor') end,
        Sprite = 'visor',
        Desc = 'Toggle hat variation',
        Button = 3,
        Name = 'Visor'
    },
    ['bag'] = {
        Func = function() ToggleClothing('Bag') end,
        Sprite = 'bag',
        Desc = 'Opens or closes your bag',
        Button = 8,
        Name = 'Bag'
    },
    ['shoes'] = {
        Func = function() ToggleClothing('Shoes') end,
        Sprite = 'shoes',
        Desc = 'Take your shoes off/on',
        Button = 5,
        Name = 'Shoes'
    },
    ['vest'] = {
        Func = function() ToggleClothing('Vest') end,
        Sprite = 'vest',
        Desc = 'Take your vest off/on',
        Button = 14,
        Name = 'Vest'
    },
    ['hair'] = {
        Func = function() ToggleClothing('hair') end,
        Sprite = 'hair',
        Desc = 'Put your hair up/down/in a bun/ponytail.',
        Button = 7,
        Name = 'Hair'
    },
    ['hat'] = {
        Func = function() ToggleProps('Hat') end,
        Sprite = 'hat',
        Desc = 'Take your hat off/on',
        Button = 4,
        Name = 'Hat'
    },
    ['glasses'] = {
        Func = function() ToggleProps('Glasses') end,
        Sprite = 'glasses',
        Desc = 'Take your glasses off/on',
        Button = 9,
        Name = 'Glasses'
    },
    ['ear'] = {
        Func = function() ToggleProps('Ear') end,
        Sprite = 'ear',
        Desc = 'Take your ear accessory off/on',
        Button = 10,
        Name = 'Ear'
    },
    ['neck'] = {
        Func = function() ToggleClothing('Neck') end,
        Sprite = 'neck',
        Desc = 'Take your neck accessory off/on',
        Button = 11,
        Name = 'Neck'
    },
    ['watch'] = {
        Func = function() ToggleProps('Watch') end,
        Sprite = 'watch',
        Desc = 'Take your watch off/on',
        Button = 12,
        Name = 'Watch',
        Rotation = 5.0
    },
    ['bracelet'] = {
        Func = function() ToggleProps('Bracelet') end,
        Sprite = 'bracelet',
        Desc = 'Take your bracelet off/on',
        Button = 13,
        Name = 'Bracelet'
    },
    ['mask'] = {
        Func = function() ToggleClothing('Mask') end,
        Sprite = 'mask',
        Desc = 'Take your mask off/on',
        Button = 6,
        Name = 'Mask'
    }
}