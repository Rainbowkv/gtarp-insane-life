local Config = {}

Config.debug = false

Config.useOxInventory = GetResourceState('ox_inventory'):find('start')

Config.clothingScript = 'fivem-appearance' -- 'illenium-appearance', 'fivem-appearance', 'core' or false -- to disable
Config.emsJobs = { "ambulance" } -- , "ems"
Config.respawnTime = 5                        -- in minutes
Config.waitTimeForNewCall = 5                 -- minutes

Config.reviveCommand = "revive"
Config.reviveAreaCommand = "revivearea"
Config.healCommand = "heal"
Config.healAreaCommand = "healarea"
Config.reviveAllCommand = "reviveall"

Config.adminGroup = "group.admin"

Config.medicBagProp = "xm_prop_x17_bag_med_01a"
Config.medicBagItem = "medicalbag"

Config.tabletItem = "emstablet"

Config.helpCommand = "911a"
Config.removeItemsOnRespawn = true
Config.keepItemsOnRespawn = { "money", "WEAPON_PISTOL" } -- items that will not be removed when respawed (works only when Config.RemoveItemsOnRespawn is true)

Config.baseInjuryReward = 50
Config.reviveReward = 300

Config.paramedicTreatmentPrice = 50
Config.shouldRevive = true
Config.allowAlways = true             -- false if you want it to work only when there are only medics online

Config.ambulanceStretchers = 0        -- how many stretchers should an ambulance have
Config.consumeItemPerUse = 20         -- every time you use an item it gets used by 10%

Config.timeToWaitForCommand = 2       -- when player dies he needs to wait 2 minutes to do the ambulance command
Config.npcReviveCommand = "ambulance" -- this will work only when there are no medics online

Config.usePedToDepositVehicle = false -- if false the vehicle will instantly despawns
Config.extraEffects = true            -- false >> disables the screen shake and the black and white screen

Config.emsVehicles = {                -- vehicles that have access to the props (cones and ecc..)
	ambulance = true,
	ambulance2 = true,
}

Config.allowOperations = {1, 2, 30, 31, 36, 199, 245, 249}

Config.animations = {
	["death_car"] = {
		dict = "veh@low@front_ps@idle_duck",
		clip = "sit"
	},
	["death_normal"] = {
		dict = "dead",
		clip = "dead_a"
	},
	["get_up"] = {
		dict = "get_up@directional@movement@from_knees@action",
		clip = "getup_r_0"
	}
}

function Config.sendDistressCall(msg)
	exports["lb-phone"]:SendCompanyMessage("ambulance", "市民求救:" .. msg, false)
end

function Config.giveVehicleKeys(vehicle, plate)
	TriggerServerEvent('ars_ambulance:server:AcquireKeys', plate)
end

function Config.removeVehicleKeys(vehicle, plate)
	TriggerServerEvent('ars_ambulance:server:ReturnKeys', plate)
end

return Config
