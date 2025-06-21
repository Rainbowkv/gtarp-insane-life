return {
	General = {
		-- name = 'Shop',
		name = '超市',
		blip = {
			id = 59, colour = 69, scale = 0.8
		}, inventory = {
			{ name = 'burger', price = 200 },
			{ name = 'water_bottle', price = 70 },
			{ name = 'kurkakola', price = 70 },
			{ name = 'bakingsoda', price = 100 },
			{ name = 'rolling_paper', price = 30 },
			{ name = 'redwcig', price = 15 },
			{ name = 'scratch_ticket', price = 230 },
			{ name = 'phone', price = 2000},
			{ name = 'radio', price = 1200},
			{ name = 'WEAPON_FIREEXTINGUISHER', price = 500}
		}, locations = {
			vec3(25.7, -1347.3, 29.49),
			vec3(-3038.71, 585.9, 7.9),
			vec3(-3241.47, 1001.14, 12.83),
			vec3(1728.66, 6414.16, 35.03),
			vec3(1697.99, 4924.4, 42.06),
			vec3(1961.48, 3739.96, 32.34),
			vec3(547.79, 2671.79, 42.15),
			vec3(2679.25, 3280.12, 55.24),
			vec3(2557.94, 382.05, 108.62),
			vec3(373.55, 325.56, 103.56),
		}, targets = {
			{ loc = vec3(25.06, -1347.32, 29.5), length = 0.7, width = 0.5, heading = 0.0, minZ = 29.5, maxZ = 29.9, distance = 1.5 },
			{ loc = vec3(-3039.18, 585.13, 7.91), length = 0.6, width = 0.5, heading = 15.0, minZ = 7.91, maxZ = 8.31, distance = 1.5 },
			{ loc = vec3(-3242.2, 1000.58, 12.83), length = 0.6, width = 0.6, heading = 175.0, minZ = 12.83, maxZ = 13.23, distance = 1.5 },
			{ loc = vec3(1728.39, 6414.95, 35.04), length = 0.6, width = 0.6, heading = 65.0, minZ = 35.04, maxZ = 35.44, distance = 1.5 },
			{ loc = vec3(1698.37, 4923.43, 42.06), length = 0.5, width = 0.5, heading = 235.0, minZ = 42.06, maxZ = 42.46, distance = 1.5 },
			{ loc = vec3(1960.54, 3740.28, 32.34), length = 0.6, width = 0.5, heading = 120.0, minZ = 32.34, maxZ = 32.74, distance = 1.5 },
			{ loc = vec3(548.5, 2671.25, 42.16), length = 0.6, width = 0.5, heading = 10.0, minZ = 42.16, maxZ = 42.56, distance = 1.5 },
			{ loc = vec3(2678.29, 3279.94, 55.24), length = 0.6, width = 0.5, heading = 330.0, minZ = 55.24, maxZ = 55.64, distance = 1.5 },
			{ loc = vec3(2557.19, 381.4, 108.62), length = 0.6, width = 0.5, heading = 0.0, minZ = 108.62, maxZ = 109.02, distance = 1.5 },
			{ loc = vec3(373.13, 326.29, 103.57), length = 0.6, width = 0.5, heading = 345.0, minZ = 103.57, maxZ = 103.97, distance = 1.5 },
		}
	},

	Liquor = {
		-- name = 'Liquor Store',
		name = '酒铺',
		blip = {
			id = 93, colour = 69, scale = 0.8
		}, inventory = {
			{ name = 'beer', price = 10 },
			{ name = 'whiskey', price = 1000 },
			{ name = 'vodka', price = 500 },
			{ name = 'wine', price = 200 },
		}, locations = {
			vec3(1135.808, -982.281, 46.415),
			vec3(-1222.915, -906.983, 12.326),
			vec3(-1487.553, -379.107, 40.163),
			vec3(-2968.243, 390.910, 15.043),
			vec3(1166.024, 2708.930, 38.157),
			vec3(1392.562, 3604.684, 34.980),
			vec3(-1393.409, -606.624, 30.319)
		}, targets = {
			{ loc = vec3(1134.9, -982.34, 46.41), length = 0.5, width = 0.5, heading = 96.0, minZ = 46.4, maxZ = 46.8, distance = 1.5 },
			{ loc = vec3(-1222.33, -907.82, 12.43), length = 0.6, width = 0.5, heading = 32.7, minZ = 12.3, maxZ = 12.7, distance = 1.5 },
			{ loc = vec3(-1486.67, -378.46, 40.26), length = 0.6, width = 0.5, heading = 133.77, minZ = 40.1, maxZ = 40.5, distance = 1.5 },
			{ loc = vec3(-2967.0, 390.9, 15.14), length = 0.7, width = 0.5, heading = 85.23, minZ = 15.0, maxZ = 15.4, distance = 1.5 },
			{ loc = vec3(1165.95, 2710.20, 38.26), length = 0.6, width = 0.5, heading = 178.84, minZ = 38.1, maxZ = 38.5, distance = 1.5 },
			{ loc = vec3(1393.0, 3605.95, 35.11), length = 0.6, width = 0.6, heading = 200.0, minZ = 35.0, maxZ = 35.4, distance = 1.5 }
		}
	},

	YouTool = {
		-- name = 'YouTool',
		name = '工具店',
		blip = {
			id = 402, colour = 69, scale = 0.8
		}, 
		inventory = {
			{ name = 'lockpick', price = 150 },
			{ name = 'trimming_scissors', price = 100},
			{ name = 'finescale', price = 200},
			{ name = 'WEAPON_WRENCH', price = 500},
			{ name = 'weapon_hammer', price = 500}
		},
		targets = {
			{ loc = vec3(2735.56, 3463.5, 55.7), length = 0.5, width = 0.5, heading = 158.72, minZ = 55.6, maxZ = 55.8, distance = 2.0 }
		},
	},

	Ammunation = {
		-- name = 'Ammunation',
		name = '售枪店',
		blip = {
			id = 110, colour = 69, scale = 0.8
		}, inventory = {
			{ name = 'ammo-9', price = 5, },
			{ name = 'WEAPON_KNIFE', price = 200 },
			{ name = 'WEAPON_BAT', price = 100 },
			{ name = 'WEAPON_VINTAGEPISTOL', price = 3000, metadata = { registered = true }, license = 'weapon' }
		}, locations = {
			vec3(-662.180, -934.961, 21.829),
			vec3(810.25, -2157.60, 29.62),
			vec3(1693.44, 3760.16, 34.71),
			vec3(-330.24, 6083.88, 31.45),
			vec3(252.63, -50.00, 69.94),
			vec3(22.56, -1109.89, 29.80),
			vec3(2567.69, 294.38, 108.73),
			vec3(-1117.58, 2698.61, 18.55),
			vec3(842.44, -1033.42, 28.19)
		}, targets = {
			{ loc = vec3(-660.92, -934.10, 21.94), length = 0.6, width = 0.5, heading = 180.0, minZ = 21.8, maxZ = 22.2, distance = 2.0 },
			{ loc = vec3(808.86, -2158.50, 29.73), length = 0.6, width = 0.5, heading = 360.0, minZ = 29.6, maxZ = 30.0, distance = 2.0 },
			{ loc = vec3(1693.57, 3761.60, 34.82), length = 0.6, width = 0.5, heading = 227.39, minZ = 34.7, maxZ = 35.1, distance = 2.0 },
			{ loc = vec3(-330.29, 6085.54, 31.57), length = 0.6, width = 0.5, heading = 225.0, minZ = 31.4, maxZ = 31.8, distance = 2.0 },
			{ loc = vec3(252.85, -51.62, 70.0), length = 0.6, width = 0.5, heading = 70.0, minZ = 69.9, maxZ = 70.3, distance = 2.0 },
			{ loc = vec3(23.68, -1106.46, 29.91), length = 0.6, width = 0.5, heading = 160.0, minZ = 29.8, maxZ = 30.2, distance = 2.0 },
			{ loc = vec3(2566.59, 293.13, 108.85), length = 0.6, width = 0.5, heading = 360.0, minZ = 108.7, maxZ = 109.1, distance = 2.0 },
			{ loc = vec3(-1117.61, 2700.26, 18.67), length = 0.6, width = 0.5, heading = 221.82, minZ = 18.5, maxZ = 18.9, distance = 2.0 },
			{ loc = vec3(841.05, -1034.76, 28.31), length = 0.6, width = 0.5, heading = 360.0, minZ = 28.2, maxZ = 28.6, distance = 2.0 }
		}
	},

	PoliceArmoury = {
		-- name = 'Police Armoury',
		name = '警用物品/枪械',
		groups = shared.police,
		blip = {
			id = 110, colour = 84, scale = 0.8
		}, inventory = {
			{ name = 'ammo-9', price = 5, },
			-- { name = 'ammo-rifle', price = 50, },
			{ name = 'WEAPON_FLASHLIGHT', price = 200 },
			{ name = 'WEAPON_NIGHTSTICK', price = 100 },
			{ name = 'at_suppressor_light', price = 1000 },
			{ name = 'at_flashlight', price = 700 },
			{ name = 'WEAPON_PISTOL', price = 1000, metadata = { registered = true, serial = 'POL' }, license = 'weapon' },
			-- { name = 'WEAPON_CARBINERIFLE', price = 10000, metadata = { registered = true, serial = 'POL' }, license = 'weapon', grade = 3 },
			{ name = 'armor', price = 300 },
			{ name = 'WEAPON_STUNGUN', price = 500, metadata = { registered = true, serial = 'POL'} },
			{ name = 'megaphone', price = 500},
			{ name = 'police_cad', price = 2000},
			{ name = 'k9', price = 200, license = 'k9'},
			{ name = 'handcuffs', price = 1000}
		}, locations = {
			vec3(484.21, -995.67, 30.69)  -- 480.82, -990.16, 30.69
		}, targets = {
			{ loc = vec3(484.21, -995.67, 30.69), length = 0.5, width = 3.0, heading = 270.0, minZ = 30.5, maxZ = 32.0, distance = 6 }
		}
	},

	Medicine = {
		-- name = 'Medicine Cabinet',
		name = '医药柜',
		groups = {
			['ambulance'] = 0
		},
		blip = {
			id = 403, colour = 69, scale = 0.8
		}, 
		inventory = {
			{ name = 'medicalbag', price = 100 },
			{ name = 'bandage', price = 10 },
			{ name = 'defibrillator', price = 200 },
			{ name = 'tweezers', price = 30 },
			{ name = 'burncream', price = 30 },
			{ name = 'suturekit', price = 20 },
			{ name = 'icepack', price = 20 },
			{ name = 'emstablet', price = 1000 },
		}, 
		targets = {
			{ loc = vec3(358.4, -603.12, 43.28), length = 2.5, width = 3.0, heading = 270.0, minZ = 28.5, maxZ = 33.0, distance = 3 }
		}
	},

	BlackMarketArms = {
		-- name = 'Black Market (Arms)',
		name = "黑商",
		inventory = {
			{ name = 'WEAPON_DAGGER', price = 700, metadata = { registered = false	}},
			{ name = 'WEAPON_CERAMICPISTOL', price = 20000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'ammo-9', price = 10, currency = 'black_money' },
			{ name = 'at_suppressor_light', price = 10000, currency = 'black_money' },
			{ name = 'methkey', price = 5000},
			{ name = 'weedkey', price = 5000},
			{ name = 'cocainekey', price = 5000},
			{ name = 'advancedlockpick', price = 300, currency = 'black_money' },
			{ name = 'drill_green2', price = 2000, currency = 'black_money' },
			{ name = 'oxy', price = 1000, currency = 'black_money' },
		},
		targets = {
            {
                ped = `a_m_y_smartcaspat_01`,
                scenario = 'WORLD_HUMAN_AA_SMOKE',
                loc = vector3(4988.11, -5127.07, 1.44),
                heading = 271.92,
            }
        }
	},

	VendingMachineDrinks = {
		-- name = 'Vending Machine',
		name = "自动贩卖机",
		inventory = {
			{ name = 'water', price = 100 },
			{ name = 'kurkakola', price = 100 },
			{ name = 'burger', price = 200},
			{ neme = 'twerks_candy', price = 150}
		},
		model = {
			`prop_vend_soda_02`, `prop_vend_fridge01`, `prop_vend_water_01`, `prop_vend_soda_01`, `prop_vend_snak_01`
		}
	},

	mechanicShop = {
		name = '高级改装件',
		groups = {
			['mechanic'] = 0
		},
		inventory = {
			{ name = 'engine_oil', price = 500, },
			{ name = 'tyre_replacement', price = 250, },
			{ name = 'clutch_replacement', price = 500 },
			{ name = 'air_filter', price = 500 },
			{ name = 'spark_plug', price = 125 },
			{ name = 'brakepad_replacement', price = 125 },
			{ name = 'suspension_parts', price = 1000 },
			-- { name = 'i4_engine', price = 1000 },
			-- { name = 'v6_engine', price = 1000 },
			-- { name = 'v8_engine', price = 1000 },
			-- { name = 'v12_engine', price = 1000},
			{ name = 'turbocharger', price = 1000},
			{ name = 'ev_motor', price = 1000},
			{ name = 'ev_battery', price = 1000},
			{ name = 'ev_coolant', price = 1000},
			{ name = 'awd_drivetrain', price = 1000},
			{ name = 'rwd_drivetrain', price = 1000},
			{ name = 'fwd_drivetrain', price = 1000},
			{ name = 'slick_tyres', price = 1000},
			{ name = 'semi_slick_tyres', price = 1000},
			{ name = 'offroad_tyres', price = 1000},
			-- { name = 'drift_tuning_kit', price = 1000},
			-- { name = 'ceramic_brakes', price = 1000},
			{ name = 'lighting_controller', price = 1000},
			{ name = 'stancing_kit', price = 1000},
			{ name = 'cosmetic_part', price = 1000},
			{ name = 'respray_kit', price = 1000},
			{ name = 'vehicle_wheels', price = 1000},
			{ name = 'tyre_smoke_kit', price = 1000},
			-- { name = 'bulletproof_tyres', price = 1000},
			{ name = 'extras_kit', price = 1000},
			-- { name = 'nitrous_bottle', price = 1000},
			{ name = 'empty_nitrous_bottle', price = 1000},
			-- { name = 'nitrous_install_kit', price = 1000},
			{ name = 'cleaning_kit', price = 1000},
			{ name = 'repair_kit', price = 1000},
			{ name = 'duct_tape', price = 1000},
			-- { name = 'performance_part', price = 1000},
			{ name = 'mechanic_tablet', price = 1000},
			-- { name = 'manual_gearbox', price = 1000},
			{ name = 'tunerlaptop', price = 400 },
            { name = 'illegaltunerlaptop', price = 900 },
		}, locations = {
			vec3(-343.79, -139.92, 39.01)  -- 480.82, -990.16, 30.69
		}, targets = {
			{ loc = vec3(-343.79, -139.92, 39.01), length = 0.5, width = 3.0, heading = 270.0, minZ = 37.5, maxZ = 41.0, distance = 6 }
		}
	},

	mechanicSelfService = {
        name = "修车厂自主服务",
        inventory = {
            { name = 'tunerlaptop', price = 1700 },
            { name = 'illegaltunerlaptop', price = 3500 },
        },
        targets = {
            {
                ped = `s_m_y_armymech_01`,
                scenario = 'WORLD_HUMAN_STAND_IMPATIENT',
                loc = vec3(-341.66, -122.99, 38.01),
                heading = 165.36,
            }
        }
    },

	seaworld = {
        name = "深水装备",
		blip = {
          id = 729,
          colour = 67,
          scale = 0.8
        },
        inventory = {
            { name = 'diving_gear', price = 500 },
            { name = 'diving_fill', price = 100 },
        },
        targets = {
            {
                ped = `a_m_y_surfer_01`,
                scenario = 'WORLD_HUMAN_STAND_IMPATIENT',
                loc = vec3(-1687.11, -1072.06, 12.15),
                heading = 52.49,
            }
        }
    },

	leisureshop = {
        name = "户外装备",
		blip = {
          id = 126,
          colour = 0,
          scale = 0.8
        },
        inventory = {
            { name = 'parachute', price = 200 },
            { name = 'binoculars', price = 1000 },
        },
        targets = {
            {
                ped = `a_m_y_surfer_01`,
                scenario = 'WORLD_HUMAN_STAND_IMPATIENT',
                loc = vector3(-1504.6, 1510.9, 114.29),
                heading = 247.01,
            }
        }
    }
}
