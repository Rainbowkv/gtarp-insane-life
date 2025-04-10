Config = {}

Config.PoliceOnDutyRequired = 0           -- amount of police required to be on duty to rob a house
Config.LimitTime = true                   -- Use in-game clock hours to set the time the houses can be robbed
Config.MinimumTime = 6                    -- only needed if LimitTime is true
Config.MaximumTime = 21                   -- only needed if LimitTime is true
Config.TimeToCloseDoors = 30              -- in minutes (only start counting after one person enters the house)
Config.RequireScrewdriver = true          -- if true, you need a screwdriver to rob a house when not using advanced lockpick
Config.ChanceToBreakLockPick = 30         -- chance in percent to break a normal lockpick if failed
Config.ChanceToBreakAdvancedLockPick = 15 -- chance in percent to break a advanced lockpick if failed
Config.ChanceToAlertPolice = 100           -- chance in percent to call the police if a house robbery is in progress
Config.MinZOffset = 45
-- rb_code
Config.difficulty = 'medium'
Config.UseClockHours = true

Config.Rewards = {
    { -- house tier
        ['cabin'] = {
            { item = 'plastic',         min = 1, max = 3 },
            { item = 'diamond_ring',    min = 1, max = 1 },
            { item = 'goldchain',       min = 1, max = 1 },
            { item = 'weed_skunk',      min = 1, max = 3 },
            { item = 'thermite',        min = 1, max = 1 },
            { item = 'cryptostick',     min = 1, max = 1 },
            { item = 'weapon_golfclub', min = 1, max = 1 },
        },
        ['kitchen'] = {
            { item = 'tosti',     min = 1, max = 3 },
            { item = 'sandwich',  min = 1, max = 2 },
            { item = 'goldchain', min = 1, max = 1 }
        },
        ['chest'] = {
            { item = 'plastic',             min = 1, max = 4 },
            { item = 'rolex',               min = 1, max = 2 },
            { item = 'diamond_ring',        min = 1, max = 1 },
            { item = 'goldchain',           min = 1, max = 1 },
            { item = 'weed_skunk',          min = 1, max = 5 },
            { item = 'thermite',            min = 1, max = 1 },
            { item = 'cryptostick',         min = 1, max = 1 },
            { item = 'weapon_combatpistol', min = 1, max = 1 }
        },
        ['livingroom'] = {
            { item = 'plastic',      min = 1, max = 4 },
            { item = 'rolex',        min = 1, max = 1 },
            { item = 'diamond_ring', min = 1, max = 1 },
            { item = 'goldchain',    min = 1, max = 1 },
            { item = 'thermite',     min = 1, max = 1 },
            { item = 'cryptostick',  min = 1, max = 1 },
            { item = 'tablet',       min = 1, max = 1 },
            { item = 'pistol_ammo',  min = 1, max = 3 }
        }
    }
}

Config.Houses = {
    ['perfectdrive1'] = {
        ['coords'] = vector4(-784.72, 459.77, 100.39, 34.89),
        ['opened'] = false,
        ['tier'] = 1,
        ['furniture'] = {
            { ['type'] = 'cabin',      ['coords'] = vector3(4.15, 7.82, 1.0),   ['searched'] = false, ['isBusy'] = false, ['text'] = Lang:t('searching.search_bcabinet') },
            { ['type'] = 'cabin',      ['coords'] = vector3(5.95, 9.34, 1.0),   ['searched'] = false, ['isBusy'] = false, ['text'] = Lang:t('searching.search_closet') },
            { ['type'] = 'kitchen',    ['coords'] = vector3(-1.03, 0.78, 1.0),  ['searched'] = false, ['isBusy'] = false, ['text'] = Lang:t('searching.search_kcabinet') },
            { ['type'] = 'chest',      ['coords'] = vector3(6.904, 3.987, 1.0), ['searched'] = false, ['isBusy'] = false, ['text'] = Lang:t('searching.search_chest') },
            { ['type'] = 'cabin',      ['coords'] = vector3(0.933, 1.254, 1.0), ['searched'] = false, ['isBusy'] = false, ['text'] = Lang:t('searching.search_chest') },
            { ['type'] = 'cabin',      ['coords'] = vector3(6.19, 3.35, 1.0),   ['searched'] = false, ['isBusy'] = false, ['text'] = Lang:t('searching.search_cabinet') },
            { ['type'] = 'kitchen',    ['coords'] = vector3(-2.20, -0.30, 1.0), ['searched'] = false, ['isBusy'] = false, ['text'] = Lang:t('searching.search_kcabinet') },
            { ['type'] = 'kitchen',    ['coords'] = vector3(-4.35, -0.64, 1.0), ['searched'] = false, ['isBusy'] = false, ['text'] = Lang:t('searching.search_shelves') },
            { ['type'] = 'livingroom', ['coords'] = vector3(-6.90, 4.42, 1.0),  ['searched'] = false, ['isBusy'] = false, ['text'] = Lang:t('searching.search_shelves') },
            { ['type'] = 'livingroom', ['coords'] = vector3(-6.98, 7.91, 1.0),  ['searched'] = false, ['isBusy'] = false, ['text'] = Lang:t('searching.search_shelves') },
        }
    },
}
