Config = {}

-- Key System Settings
Config.PersistentKeys = false -- Whether keys received should be saved after server restart, or not

-- Vehicle lock settings
Config.LockToggleAnimation = {
    AnimDict = 'anim@mp_player_intmenu@key_fob@',
    Anim = 'fob_click',
    Prop = 'prop_cuff_keys_01',
    PropBone = 57005,
    WaitTime = 500,
}
Config.LockAnimSound = "keys"
Config.LockToggleSound = "lock"
Config.LockToggleDist = 8.0

-- NPC Vehicle Lock States
Config.LockNPCDrivingCars = false -- Lock state for NPC cars being driven by NPCs [true = locked, false = unlocked]
Config.LockNPCParkedCars = true -- Lock state for NPC parked cars [true = locked, false = unlocked]
Config.openMenu_threshold = 200 -- Config.UseKeyfob = true -- you can set this true if you do need ui

-- Lockpick Settings
Config.RemoveLockpickNormal = 0.5 -- Chance to remove lockpick on fail
Config.RemoveLockpickAdvanced = 0.2 -- Chance to remove advanced lockpick on fail
-- Carjack Settings
Config.CarJackEnable = true -- True allows for the ability to car jack peds.
Config.CarjackingTime = 7500 -- How long it takes to carjack
Config.DelayBetweenCarjackings = 10000 -- Time before you can carjack again
Config.CarjackChance = {
    ['2685387236'] = 0.0, -- melee
    ['416676503'] = 0.5, -- handguns
    ['-957766203'] = 0.75, -- SMG
    ['860033945'] = 0.90, -- shotgun
    ['970310034'] = 0.90, -- assault
    ['1159398588'] = 0.99, -- LMG
    ['3082541095'] = 0.99, -- sniper
    ['2725924767'] = 0.99, -- heavy
    ['1548507267'] = 0.0, -- throwable
    ['4257178988'] = 0.0, -- misc
}

-- Hotwire Settings
Config.HotwireChance = 0.5 -- Chance for successful hotwire or not
Config.TimeBetweenHotwires = 5000 -- Time in ms between hotwire attempts
Config.minHotwireTime = 20000 -- Minimum hotwire time in ms
Config.maxHotwireTime = 40000 --  Maximum hotwire time in ms

-- Police Alert Settings
Config.AlertCooldown = 10000 -- 10 seconds
Config.PoliceAlertChance = 0.75 -- Chance of alerting police during the day
Config.PoliceNightAlertChance = 0.50 -- Chance of alerting police at night (times:01-06)

-- Job Settings
Config.SharedKeys = { -- Share keys amongst employees. Employees can lock/unlock any job-listed vehicle
    ['police'] = { -- Job name
        requireOnduty = false,
        vehicles = {
	    'police', -- Vehicle model
	    'police2', -- Vehicle model
	}
    },

    ['mechanic'] = {
        requireOnduty = false,
        vehicles = {
            'towtruck',
	}
    }
}

-- These vehicles cannot be jacked
Config.ImmuneVehicles = {
    'stockade'
}

-- These vehicles will never lock
Config.NoLockVehicles = {}

-- These weapons cannot be used for carjacking
Config.NoCarjackWeapons = {
    "WEAPON_UNARMED",
    "WEAPON_Knife",
    "WEAPON_Nightstick",
    "WEAPON_HAMMER",
    "WEAPON_Bat",
    "WEAPON_Crowbar",
    "WEAPON_Golfclub",
    "WEAPON_Bottle",
    "WEAPON_Dagger",
    "WEAPON_Hatchet",
    "WEAPON_KnuckleDuster",
    "WEAPON_Machete",
    "WEAPON_Flashlight",
    "WEAPON_SwitchBlade",
    "WEAPON_Poolcue",
    "WEAPON_Wrench",
    "WEAPON_Battleaxe",
    "WEAPON_Grenade",
    "WEAPON_StickyBomb",
    "WEAPON_ProximityMine",
    "WEAPON_BZGas",
    "WEAPON_Molotov",
    "WEAPON_FireExtinguisher",
    "WEAPON_PetrolCan",
    "WEAPON_Flare",
    "WEAPON_Ball",
    "WEAPON_Snowball",
    "WEAPON_SmokeGrenade",
}

Config.donator_vehicle_mod = {
    ["760 宝马"] = "m76023",
    ["SU7 max 小米"] = "dpcsu7max",
    ["model s 特斯拉"] = "models",
    ["卫士 路虎"] = "oycdefender",
    ["RS7 奥迪"] = "rs721",
    ["揽胜 路虎"] = "rsvr16",
    ["凯雷德 凯迪拉克"] = "gmt900escalade",
    ["GTR 尼桑"] = "gtr",
    ["M4 gts 宝马"] = "rmodm4gts",
    ["AMG gt63 奔驰"] = "rmodgt63",
    ["992 gt3 保时捷"] = "992gt3",
    ["SU7 Ultra 原型 小米"] = "su7ultra",
    ["S680 奔驰"] = "22s680m",
    ["欧陆GT 宾利"] = "ikx3gtone",
    ["G63 4x4 奔驰"] = "4444",
    ["曜影 宽体敞篷 劳斯莱斯"] = "rrdawncabrio2020wb",
    ["M4 gt3 宝马"] = "m4gt3",
    ["SVJ 兰博基尼"] = "cffsvj",        
    ["Victor 阿斯顿马丁"] = "Victor",
    ["SF90 法拉利"] = "ikx3sf90custom",
    ["幻影Ⅷ 劳斯莱斯"] = "p8tempus",
}

Config.custom_vehicle_mod = {
    ["IE 特供版 阿波罗"] = "ieocen",
}