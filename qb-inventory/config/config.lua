Config = {
    UseTarget = GetConvar('UseTarget', 'false') == 'true',

    MaxWeight = 50000,
    MaxSlots = 30,

    StashSize = {
        maxweight = 120000,
        slots = 50
    },

    DropSize = {
        maxweight = 200000,
        slots = 30
    },

    Keybinds = {
        Open = 'TAB',
        Hotbar = 'Z',
    },

    CleanupDropTime = 5,    -- clear Interval in minutes
    CleanupDropInterval = 1, -- check Interval in minutes

    ItemDropObject = `bkr_prop_duffel_bag_01a`,
    ItemDropObjectBone = 28422,
    ItemDropObjectOffset = {
        vector3(0.260000, 0.040000, 0.000000),
        vector3(90.000000, 0.000000, -78.989998),
    },

    VendingObjects = {
        'prop_vend_soda_01',
        'prop_vend_soda_02',
        'prop_vend_water_01',
        'prop_vend_coffe_01',
    },

    VendingItems = {
        { name = 'kurkakola',    price = 4, amount = 50 },
        { name = 'water_bottle', price = 4, amount = 50 },
    },
}
