return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			image = 'burger_chicken.png',
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			{
				label = 'What do you call a vegan burger?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('A misteak.')
				end
			},
			{
				label = 'What do frogs like to eat with their hamburgers?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('French flies.')
				end
			},
			{
				label = 'Why were the burger and fries running?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('Because they\'re fast food.')
				end
			}
		},
		consume = 0.3
	},

	-- ['bandage'] = {
	-- 	label = '绷带',
	-- 	weight = 115,
	-- 	client = {
	-- 		anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
	-- 		prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
	-- 		disable = { move = true, car = true, combat = true },
	-- 		usetime = 2500,
	-- 	}
	-- },

	['black_money'] = {
		label = '赃款',
	},

	['burger'] = {
		label = '汉堡',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = '你吃了一个美味的汉堡'
		},
	},

	['sprunk'] = {
		label = 'Sprunk汽水',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = '你用Sprunk汽水解渴了'
		}
	},

	['parachute'] = {
		label = '降落伞',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = '垃圾',
		client = {
			image = 'garbage.png',
		}
	},

	['paperbag'] = {
		label = '纸袋',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = '身份证件',
		client = {
			image = 'card_id.png'
		}
	},

	['panties'] = {
		label = '内裤',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = '撬锁工具',
		weight = 300,
	},

	['phone'] = {
		label = '手机',
		weight = 500,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = '金钱',
	},

	['mustard'] = {
		label = '芥末',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = '你……喝了芥末'
		}
	},

	['water'] = {
		label = '水',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = '你喝了一些清爽的水'
		}
	},

	['radio'] = {
		label = '收音机',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = '防弹衣',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = '服装',
		consume = 0,
	},

	['mastercard'] = {
		label = '银行卡',
		stack = false,
		weight = 10,
		client = {
			image = 'card_bank.png'
		}
	},

	['scrapmetal'] = {
		label = '废金属',
		weight = 80,
	},

	["bank_card"] = {
		label = "银行卡",
		weight = 0,
		stack = false,
		close = true,
		description = "用于访问ATM的卡片",
		client = {
			image = "bank_card.png",
		}
	},

	["lsa"] = {
		label = "LSA",
		weight = 500,
		stack = true,
		close = false,
		description = "几乎准备好派对了...",
		client = {
			image = "lsa.png",
		}
	},

	["tunerlaptop"] = {
		label = "调谐芯片",
		weight = 2000,
		stack = false,
		close = true,
		description = "用这个调谐芯片可以让你的车变得更强……如果你知道自己在做什么的话",
		client = {
			image = "tunerchip.png",
		}
	},

	["electronickit"] = {
		label = "电子工具包",
		weight = 100,
		stack = true,
		close = true,
		description = "如果你一直想做一个机器人，或许可以从这里开始。也许你会成为下一个Elon Musk？",
		client = {
			image = "electronickit.png",
		}
	},

	["jerry_can"] = {
		label = "20L油桶",
		weight = 18000,
		stack = true,
		close = true,
		description = "装满油的油桶",
		client = {
			image = "jerry_can.png",
		}
	},

	["aluminum"] = {
		label = "铝",
		weight = 100,
		stack = true,
		close = false,
		description = "一块不错的金属，可能可以用来做点什么",
		client = {
			image = "aluminum.png",
		}
	},

	["newsmic"] = {
		label = "新闻麦克风",
		weight = 100,
		stack = false,
		close = true,
		description = "新闻用麦克风",
		client = {
			image = "newsmic.png",
		}
	},

	["rolex"] = {
		label = "金表",
		weight = 250,
		stack = true,
		close = true,
		description = "这块金表看起来像是打 Jackpot 一样！",
		client = {
			image = "rolex.png",
		}
	},

	["cryptostick"] = {
		label = "加密货币U盘",
		weight = 200,
		stack = false,
		close = true,
		description = "为什么有人会购买不存在的货币呢..它会包含多少呢..?",
		client = {
			image = "cryptostick.png",
		}
	},

	["lighter"] = {
		label = "打火机",
		weight = 0,
		stack = true,
		close = true,
		description = "在新年夜，站在火堆旁边真是太好了",
		client = {
			image = "lighter.png",
		}
	},

	["worms"] = {
		label = "虫饵",
		weight = 10,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "worms.png",
		}
	},

	["suppressor_attachment"] = {
		label = "消音器",
		weight = 1000,
		stack = true,
		close = true,
		description = "用于武器的消音器",
		client = {
			image = "suppressor_attachment.png",
		}
	},

	["weed_ak47"] = {
		label = "AK47 2克",
		weight = 200,
		stack = true,
		close = false,
		description = "名字源于著名的“AK-47”突击步枪，具有强烈的效果，因其较高的THC（四氢大麻酚）含量，通常用于放松、减压和治疗目的。",
		client = {
			image = "weed_baggy.png",
		}
	},

	["poppyresin"] = {
		label = "罂粟树脂",
		weight = 2000,
		stack = true,
		close = false,
		description = "处理时会粘在手指上。",
		client = {
			image = "poppyresin.png",
		}
	},

	["rubber"] = {
		label = "橡胶",
		weight = 100,
		stack = true,
		close = false,
		description = "橡胶，我相信你可以用它做个橡胶鸭子 :D",
		client = {
			image = "rubber.png",
		}
	},

	["grouper"] = {
		label = "石斑鱼",
		weight = 3500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "grouper.png",
		}
	},

	["repairkit"] = {
		label = "修理包",
		weight = 2500,
		stack = true,
		close = true,
		description = "一套修理工具，修理你的车辆",
		client = {
			image = "repairkit.png",
		}
	},

	["barrel_attachment"] = {
		label = "枪管",
		weight = 1000,
		stack = true,
		close = true,
		description = "用于武器的枪管",
		client = {
			image = "barrel_attachment.png",
		}
	},

	["pdbadge"] = {
		label = "警徽",
		weight = 200,
		stack = false,
		close = true,
		description = "用于展示警察身份",
		client = {
			image = "pdbadge.png",
		}
	},

	["firework4"] = {
		label = "垂柳",
		weight = 1000,
		stack = true,
		close = true,
		description = "这你没玩过",
		client = {
			image = "firework4.png",
		}
	},

	["veh_turbo"] = {
		label = "涡轮增压器",
		weight = 1000,
		stack = true,
		close = true,
		description = "安装涡轮增压器",
		client = {
			image = "veh_turbo.png",
		}
	},

	["aluminumoxide"] = {
		label = "铝粉",
		weight = 100,
		stack = true,
		close = false,
		description = "一些粉末，可以混合使用",
		client = {
			image = "aluminumoxide.png",
		}
	},

	["split_end_muzzle_brake"] = {
		label = "分体消焰器",
		weight = 1000,
		stack = true,
		close = true,
		description = "用于武器的分体消焰器",
		client = {
			image = "split_end_muzzle_brake.png",
		}
	},

	["haddock"] = {
		label = "黑线鳕",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "haddock.png",
		}
	},

	["veh_interior"] = {
		label = "车内饰",
		weight = 1000,
		stack = true,
		close = true,
		description = "升级车辆内饰",
		client = {
			image = "veh_interior.png",
		}
	},

	["whiskey"] = {
		label = "威士忌",
		weight = 500,
		stack = true,
		close = true,
		description = "给所有口渴的人",
		client = {
			image = "whiskey.png",
		}
	},

	["cleaningkit"] = {
		label = "清洁工具包",
		weight = 250,
		stack = true,
		close = true,
		description = "一块微纤维布和一些肥皂让你的车重新闪亮！",
		client = {
			image = "cleaningkit.png",
		}
	},

	["armor"] = {
		label = "护甲",
		weight = 5000,
		stack = true,
		close = true,
		description = "一些保护不会有坏处…对吧？",
		client = {
			image = "armor.png",
		}
	},

	["methkey"] = {
		label = "冰毒实验室钥匙",
		weight = 200,
		stack = true,
		close = false,
		description = "随机钥匙，背面刻有\"Walter\"...",
		client = {
			image = "keya.png",
		}
	},

	["veh_suspension"] = {
		label = "悬挂系统",
		weight = 1000,
		stack = true,
		close = true,
		description = "升级车辆悬挂系统",
		client = {
			image = "veh_suspension.png",
		}
	},

	["weed_whitewidow"] = {
		label = "白寡妇 2克",
		weight = 200,
		stack = true,
		close = false,
		description = "著名的大麻品种，以其强烈的精神效应和高产量而闻名。",
		client = {
			image = "weed_baggy.png",
		}
	},

	["laptop"] = {
		label = "笔记本电脑",
		weight = 4000,
		stack = true,
		close = true,
		description = "昂贵的笔记本电脑",
		client = {
			image = "laptop.png",
		}
	},

	["ifaks"] = {
		label = "IFAK急救包",
		weight = 200,
		stack = true,
		close = true,
		description = "IFAK急救包用于治疗，并能完全缓解压力",
		client = {
			image = "ifaks.png",
		}
	},

	["glass"] = {
		label = "玻璃",
		weight = 100,
		stack = true,
		close = false,
		description = "非常脆弱，小心处理",
		client = {
			image = "glass.png",
		}
	},

	["newscam"] = {
		label = "新闻摄像机",
		weight = 100,
		stack = false,
		close = true,
		description = "新闻用摄像机",
		client = {
			image = "newscam.png",
		}
	},

	["tuna"] = {
		label = "金枪鱼",
		weight = 10000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tuna.png",
		}
	},

	["security_card_01"] = {
		label = "安全卡 A",
		weight = 0,
		stack = true,
		close = true,
		description = "一张安全卡...我想知道它通向哪里",
		client = {
			image = "security_card_01.png",
		}
	},

	["tirerepairkit"] = {
		label = "轮胎修理包",
		weight = 1000,
		stack = true,
		close = true,
		description = "修理轮胎的工具包",
		client = {
			image = "tirerepairkit.png",
		}
	},

	["precision_muzzle_brake"] = {
		label = "精准消焰器",
		weight = 1000,
		stack = true,
		close = true,
		description = "用于武器的精准消焰器",
		client = {
			image = "precision_muzzle_brake.png",
		}
	},

	["weed_purplehaze"] = {
		label = "紫色迷雾 2克",
		weight = 200,
		stack = true,
		close = false,
		description = "闻名全球的经典大麻品种，因其紫色的花朵而得名，伴随有一些艺术感的视觉效果，紫色迷雾通常被认为是适合日间使用的品种。",
		client = {
			image = "weed_baggy.png",
		}
	},

	["trojan_usb"] = {
		label = "木马U盘",
		weight = 0,
		stack = true,
		close = true,
		description = "便捷的软件，可以关闭一些系统",
		client = {
			image = "usb_device.png",
		}
	},

	["iphone"] = {
		label = "iPhone",
		weight = 1000,
		stack = true,
		close = true,
		description = "非常昂贵的手机",
		client = {
			image = "iphone.png",
		}
	},

	["weaponlicense"] = {
		label = "武器许可证",
		weight = 0,
		stack = false,
		close = true,
		description = "武器许可证",
		client = {
			image = "weapon_license.png",
		}
	},

	["steel"] = {
		label = "钢",
		weight = 100,
		stack = true,
		close = false,
		description = "一块不错的金属，可能可以用来做点什么",
		client = {
			image = "steel.png",
		}
	},

	["casinochips"] = {
		label = "赌场筹码",
		weight = 0,
		stack = true,
		close = false,
		description = "用于赌场赌博的筹码",
		client = {
			image = "casinochips.png",
		}
	},

	["lsd"] = {
		label = "LSD",
		weight = 500,
		stack = true,
		close = false,
		description = "让我们开始这个派对吧！",
		client = {
			image = "lsd.png",
		}
	},

	["tactical_muzzle_brake"] = {
		label = "战术消焰器",
		weight = 1000,
		stack = true,
		close = true,
		description = "用于武器的战术消焰器",
		client = {
			image = "tactical_muzzle_brake.png",
		}
	},

	["diving_fill"] = {
		label = "潜水管",
		weight = 3000,
		stack = false,
		close = true,
		description = "一根氧气管和潜水呼吸器",
		client = {
			image = "diving_tube.png",
		}
	},

	["cannabis"] = {
		label = "大麻",
		weight = 2500,
		stack = true,
		close = true,
		description = "未加工的大麻",
		client = {
			image = "cannabis.png",
		}
	},

	["stickynote"] = {
		label = "便利贴",
		weight = 0,
		stack = false,
		close = false,
		description = "有时可以用来记住一些事情 :)",
		client = {
			image = "stickynote.png",
		}
	},

	["coke_brick"] = {
		label = "可卡因砖",
		weight = 1000,
		stack = false,
		close = true,
		description = "重的可卡因包，主要用于交易，占用很大空间",
		client = {
			image = "coke_brick.png",
		}
	},

	["weedkey"] = {
		label = "大麻实验室钥匙",
		weight = 200,
		stack = true,
		close = false,
		description = "随机钥匙，背面刻有\"种子\"...",
		client = {
			image = "keyc.png",
		}
	},

	["plastic"] = {
		label = "塑料",
		weight = 100,
		stack = true,
		close = false,
		description = "回收！- Greta Thunberg 2019",
		client = {
			image = "plastic.png",
		}
	},

	["holoscope_attachment"] = {
		label = "全息瞄准镜",
		weight = 1000,
		stack = true,
		close = true,
		description = "用于武器的全息瞄准镜",
		client = {
			image = "holoscope_attachment.png",
		}
	},

	["veh_tint"] = {
		label = "窗膜",
		weight = 1000,
		stack = true,
		close = true,
		description = "安装车辆窗膜",
		client = {
			image = "veh_tint.png",
		}
	},

	["drum_attachment"] = {
		label = "鼓形弹匣",
		weight = 1000,
		stack = true,
		close = true,
		description = "用于武器的鼓形弹匣",
		client = {
			image = "drum_attachment.png",
		}
	},

	["samsungphone"] = {
		label = "三星S10",
		weight = 1000,
		stack = true,
		close = true,
		description = "非常昂贵的手机",
		client = {
			image = "samsungphone.png",
		}
	},

	["goldchain"] = {
		label = "金链",
		weight = 100,
		stack = true,
		close = true,
		description = "这条金链看起来像是打 Jackpot 一样！",
		client = {
			image = "goldchain.png",
		}
	},

	["veh_exterior"] = {
		label = "车外观",
		weight = 1000,
		stack = true,
		close = true,
		description = "升级车辆外观",
		client = {
			image = "veh_exterior.png",
		}
	},

	["nitrous"] = {
		label = "氮气",
		weight = 1000,
		stack = true,
		close = true,
		description = "加速，踩下油门！:D",
		client = {
			image = "nitrous.png",
		}
	},

	["labkey"] = {
		label = "钥匙",
		weight = 500,
		stack = false,
		close = true,
		description = "一把锁的钥匙...?",
		client = {
			image = "labkey.png",
		}
	},

	["metalscrap"] = {
		label = "金属废料",
		weight = 100,
		stack = true,
		close = false,
		description = "你可能可以用它做点什么好东西",
		client = {
			image = "metalscrap.png",
		}
	},

	["veh_armor"] = {
		label = "装甲",
		weight = 1000,
		stack = true,
		close = true,
		description = "升级车辆装甲",
		client = {
			image = "veh_armor.png",
		}
	},

	["id_card"] = {
		label = "身份证",
		weight = 0,
		stack = false,
		close = false,
		description = "包含所有个人信息的卡片，用于身份识别",
		client = {
			image = "id_card.png",
		}
	},

	["gatecrack"] = {
		label = "门禁破解",
		weight = 0,
		stack = true,
		close = true,
		description = "便捷的软件，可以破解一些门禁",
		client = {
			image = "usb_device.png",
		}
	},

	["flat_muzzle_brake"] = {
		label = "平面消焰器",
		weight = 1000,
		stack = true,
		close = true,
		description = "用于武器的消焰器",
		client = {
			image = "flat_muzzle_brake.png",
		}
	},

	["liquidmix"] = {
		label = "液体化学混合物",
		weight = 1500,
		stack = true,
		close = false,
		description = "化学品，小心处理！",
		client = {
			image = "liquidmix.png",
		}
	},

	["meth"] = {
		label = "冰毒",
		weight = 100,
		stack = true,
		close = true,
		description = "一袋冰毒",
		client = {
			image = "meth_baggy.png",
		}
	},

	["veh_transmission"] = {
		label = "变速器",
		weight = 1000,
		stack = true,
		close = true,
		description = "升级车辆变速器",
		client = {
			image = "veh_transmission.png",
		}
	},

	["heavyarmor"] = {
		label = "重型护甲",
		weight = 5000,
		stack = true,
		close = true,
		description = "一些保护不会有坏处…对吧？",
		client = {
			image = "armor.png",
		}
	},

	["advancedrepairkit"] = {
		label = "高级修理包",
		weight = 4000,
		stack = true,
		close = true,
		description = "一套修理工具，修理你的车辆",
		client = {
			image = "advancedkit.png",
		}
	},

	["markedbills"] = {
		label = "标记钱币",
		weight = 1000,
		stack = false,
		close = true,
		description = "钱？",
		client = {
			image = "markedbills.png",
		}
	},

	["advscope_attachment"] = {
		label = "高级瞄准镜",
		weight = 1000,
		stack = true,
		close = true,
		description = "用于武器的高级瞄准镜",
		client = {
			image = "advscope_attachment.png",
		}
	},

	["tenkgoldchain"] = {
		label = "10k 金链",
		weight = 200,
		stack = true,
		close = true,
		description = "10 克拉金链",
		client = {
			image = "10kgoldchain.png",
		}
	},

	["veh_wheels"] = {
		label = "车轮",
		weight = 1000,
		stack = true,
		close = true,
		description = "升级车辆轮胎",
		client = {
			image = "veh_wheels.png",
		}
	},

	["firework3"] = {
		label = "摔炮",
		weight = 1000,
		stack = true,
		close = true,
		description = "这没玩过？",
		client = {
			image = "firework3.png",
		}
	},

	["perseuscamo_attachment"] = {
		label = "海神迷彩",
		weight = 1000,
		stack = true,
		close = true,
		description = "一款适用于武器的海神迷彩",
		client = {
			image = "perseuscamo_attachment.png",
		}
	},

	["leopardcamo_attachment"] = {
		label = "豹纹迷彩",
		weight = 1000,
		stack = true,
		close = true,
		description = "一款适用于武器的豹纹迷彩",
		client = {
			image = "leopardcamo_attachment.png",
		}
	},

	["weed_skunk_seed"] = {
		label = "臭鼬种子",
		weight = 0,
		stack = true,
		close = true,
		description = "非常高的THC和CBD含量，强烈且臭味浓烈的大麻品种。",
		client = {
			image = "weed_seed.png",
		}
	},

	["harness"] = {
		label = "赛车安全带",
		weight = 1000,
		stack = false,
		close = true,
		description = "赛车安全带，无论发生什么你都能留在车里",
		client = {
			image = "harness.png",
		}
	},

	["digicamo_attachment"] = {
		label = "数字迷彩",
		weight = 1000,
		stack = true,
		close = true,
		description = "用于武器的数字迷彩",
		client = {
			image = "digicamo_attachment.png",
		}
	},

	["newsbmic"] = {
		label = "新闻话筒",
		weight = 100,
		stack = false,
		close = true,
		description = "可用的新闻话筒",
		client = {
			image = "newsbmic.png",
		}
	},

	["sessantacamo_attachment"] = {
		label = "六十六迷彩",
		weight = 1000,
		stack = true,
		close = true,
		description = "一款适用于武器的六十六迷彩",
		client = {
			image = "sessantacamo_attachment.png",
		}
	},

	["grape"] = {
		label = "葡萄",
		weight = 100,
		stack = true,
		close = false,
		description = "嗯，美味的葡萄",
		client = {
			image = "grape.png",
		}
	},

	["trout"] = {
		label = "鳟鱼",
		weight = 750,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "trout.png",
		}
	},

	["thionyl_chloride"] = {
		label = "亚硫酰氯",
		weight = 1500,
		stack = true,
		close = false,
		description = "化学品，小心处理！",
		client = {
			image = "thionyl_chloride.png",
		}
	},

	["antipatharia_coral"] = {
		label = "黑珊瑚",
		weight = 1000,
		stack = true,
		close = true,
		description = "也叫黑珊瑚或刺珊瑚",
		client = {
			image = "antipatharia_coral.png",
		}
	},

	["squared_muzzle_brake"] = {
		label = "方形消焰器",
		weight = 1000,
		stack = true,
		close = true,
		description = "用于武器的方形消焰器",
		client = {
			image = "squared_muzzle_brake.png",
		}
	},

	["finescale"] = {
		label = "精密天平",
		weight = 1000,
		stack = true,
		close = false,
		description = "用于精细粉末和材料的秤。",
		client = {
			image = "finescale.png",
		}
	},

	["trimming_scissors"] = {
		label = "修剪剪刀",
		weight = 1000,
		stack = true,
		close = false,
		description = "非常锋利的修剪剪刀",
		client = {
			image = "trimming_scissors.png",
		}
	},

	["wine"] = {
		label = "葡萄酒",
		weight = 300,
		stack = true,
		close = false,
		description = "在一个美好的夜晚享受一杯好酒",
		client = {
			image = "wine.png",
		}
	},

	["weed_whitewidow_seed"] = {
		label = "白寡妇种子",
		weight = 0,
		stack = true,
		close = false,
		description = "著名的大麻品种，以其强烈的精神效应和高产量而闻名。",
		client = {
			image = "weed_seed.png",
		}
	},

	["weed_purplehaze_seed"] = {
		label = "紫色迷雾种子",
		weight = 0,
		stack = true,
		close = true,
		description = "闻名全球的经典大麻品种，因其紫色的花朵而得名，伴随有一些艺术感的视觉效果，紫色迷雾通常被认为是适合日间使用的品种。",
		client = {
			image = "weed_seed.png",
		}
	},

	["largescope_attachment"] = {
		label = "大型瞄准镜",
		weight = 1000,
		stack = true,
		close = true,
		description = "用于武器的大型瞄准镜",
		client = {
			image = "largescope_attachment.png",
		}
	},

	["bakingsoda"] = {
		label = "小苏打",
		weight = 1500,
		stack = true,
		close = false,
		description = "家用小苏打！",
		client = {
			image = "bakingsoda.png",
		}
	},

	["veh_plates"] = {
		label = "车牌",
		weight = 1000,
		stack = true,
		close = true,
		description = "安装车辆车牌",
		client = {
			image = "veh_plates.png",
		}
	},

	["printerdocument"] = {
		label = "文件",
		weight = 500,
		stack = false,
		close = true,
		description = "一份不错的文件",
		client = {
			image = "printerdocument.png",
		}
	},

	["painkillers"] = {
		label = "止痛药",
		weight = 0,
		stack = true,
		close = true,
		description = "对于无法忍受的疼痛，服用这颗药片会让你恢复活力",
		client = {
			image = "painkillers.png",
		}
	},

	["handcuffs"] = {
		label = "手铐",
		weight = 1000,
		consume = 0.25,
		stack = false,
		close = true,
		description = "在有人捣乱时派上用场。也许它可以用来做别的事情？",
		client = {
			image = "handcuffs.png",
			event = "police:client:CuffPlayerSoft"
		}
	},

	["firework2"] = {
		label = "per per",
		weight = 1000,
		stack = true,
		close = true,
		description = "烟花",
		client = {
			image = "firework2.png",
		}
	},

	["firstaid"] = {
		label = "急救包",
		weight = 2500,
		stack = true,
		close = true,
		description = "你可以使用这个急救包让别人恢复状态",
		client = {
			image = "firstaid.png",
		}
	},

	["empty_weed_bag"] = {
		label = "空大麻袋",
		weight = 0,
		stack = true,
		close = true,
		description = "一个小的空袋子",
		client = {
			image = "weed_baggy_empty.png",
		}
	},

	["veh_neons"] = {
		label = "霓虹灯",
		weight = 1000,
		stack = true,
		close = true,
		description = "升级车辆霓虹灯",
		client = {
			image = "veh_neons.png",
		}
	},

	["diamond"] = {
		label = "钻石",
		weight = 50,
		stack = true,
		close = true,
		description = "这颗钻石看起来像是打 Jackpot 一样！",
		client = {
			image = "diamond.png",
		}
	},

	["joint"] = {
		label = "大麻烟",
		weight = 20,
		stack = true,
		close = true,
		description = "Sidney 会为你感到骄傲",
		client = {
			image = "joint.png",
		}
	},

	["chemicalvapor"] = {
		label = "化学蒸汽",
		weight = 1500,
		stack = true,
		close = false,
		description = "高压化学蒸汽，爆炸危险！",
		client = {
			image = "chemicalvapor.png",
		}
	},

	["lawyerpass"] = {
		label = "律师通行证",
		weight = 0,
		stack = false,
		close = false,
		description = "仅限律师使用的通行证，表明他们可以代表嫌疑人",
		client = {
			image = "lawyerpass.png",
		}
	},

	["chemicals"] = {
		label = "化学品",
		weight = 1500,
		stack = true,
		close = false,
		description = "化学品，小心处理...",
		client = {
			image = "chemicals.png",
		}
	},

	["xtcbaggy"] = {
		label = "摇头丸袋",
		weight = 0,
		stack = true,
		close = true,
		description = "吃下这些药丸吧",
		client = {
			image = "xtc_baggy.png",
		}
	},

	["water_bottle"] = {
		label = "矿泉水",
		weight = 500,
		stack = true,
		close = true,
		description = "给所有口渴的人",
		client = {
			image = "water_bottle.png",
		}
	},

	["walkstick"] = {
		label = "拐杖",
		weight = 1000,
		stack = true,
		close = true,
		description = "给各位老奶奶准备的拐杖.. 哈哈",
		client = {
			image = "walkstick.png",
		}
	},

	["zebracamo_attachment"] = {
		label = "斑马迷彩",
		weight = 1000,
		stack = true,
		close = true,
		description = "一款适用于武器的斑马迷彩",
		client = {
			image = "zebracamo_attachment.png",
		}
	},

	["sodium_hydroxide"] = {
		label = "氢氧化钠",
		weight = 1500,
		stack = true,
		close = true,
		description = "化学品，小心处理！",
		client = {
			image = "sodium_hydroxide.png",
		}
	},

	["coca_leaf"] = {
		label = "古柯叶",
		weight = 1500,
		stack = true,
		close = false,
		description = "必须加工的古柯叶！",
		client = {
			image = "coca_leaf.png",
		}
	},

	["weed_amnesia"] = {
		label = "健忘 2克",
		weight = 200,
		stack = true,
		close = false,
		description = "强烈的头脑高涨和精神激励的体验，某些使用者可能会感到精神混乱或短暂的记忆丧失。",
		client = {
			image = "weed_baggy.png",
		}
	},

	["coke"] = {
		label = "可卡因",
		weight = 1000,
		stack = true,
		close = false,
		description = "已加工的可卡因",
		client = {
			image = "coke.png",
		}
	},

	["cocainekey"] = {
		label = "可卡因实验室钥匙",
		weight = 200,
		stack = true,
		close = false,
		description = "随机钥匙，背面刻有\"剃须刀\"...",
		client = {
			image = "keyb.png",
		}
	},

	["patriotcamo_attachment"] = {
		label = "爱国迷彩",
		weight = 1000,
		stack = true,
		close = true,
		description = "一款适用于武器的爱国迷彩",
		client = {
			image = "patriotcamo_attachment.png",
		}
	},

	["heroin"] = {
		label = "海洛因",
		weight = 500,
		stack = true,
		close = false,
		description = "非常容易成瘾的抑制剂...",
		client = {
			image = "heroin.png",
		}
	},

	["hydrochloric_acid"] = {
		label = "盐酸",
		weight = 1500,
		stack = true,
		close = true,
		description = "化学品，小心处理！",
		client = {
			image = "hydrochloric_acid.png",
		}
	},

	["diving_gear"] = {
		label = "潜水装备",
		weight = 30000,
		stack = false,
		close = true,
		description = "一套氧气瓶和潜水呼吸器",
		client = {
			image = "diving_gear.png",
		}
	},

	["diamond_ring"] = {
		label = "钻石戒指",
		weight = 20,
		stack = true,
		close = true,
		description = "这枚钻石戒指看起来像是打 Jackpot 一样！",
		client = {
			image = "diamond_ring.png",
		}
	},

	["weed_brick"] = {
		label = "大麻砖",
		weight = 1000,
		stack = true,
		close = true,
		description = "1公斤的大麻砖，用于向大客户出售",
		client = {
			image = "weed_brick.png",
		}
	},

	["smallscope_attachment"] = {
		label = "小型瞄准镜",
		weight = 1000,
		stack = true,
		close = true,
		description = "用于武器的小型瞄准镜",
		client = {
			image = "smallscope_attachment.png",
		}
	},

	["rolling_paper"] = {
		label = "卷烟纸",
		weight = 0,
		stack = true,
		close = true,
		description = "专门用来包裹和吸烟烟草或大麻的纸",
		client = {
			image = "rolling_paper.png",
		}
	},

	["binoculars"] = {
		label = "双筒望远镜",
		weight = 600,
		stack = true,
		close = true,
		description = "偷偷摸摸的...",
		client = {
			image = "binoculars.png",
		}
	},

	["empty_evidence_bag"] = {
		label = "空证据袋",
		weight = 0,
		stack = true,
		close = false,
		description = "常用于保存血液、子弹壳等的 DNA",
		client = {
			image = "evidence.png",
		}
	},

	["heavy_duty_muzzle_brake"] = {
		label = "重型消焰器",
		weight = 1000,
		stack = true,
		close = true,
		description = "用于武器的重型消焰器",
		client = {
			image = "heavy_duty_muzzle_brake.png",
		}
	},

	["twerks_candy"] = {
		label = "Twerks糖果",
		weight = 100,
		stack = true,
		close = true,
		description = "美味的糖果 :O",
		client = {
			image = "twerks_candy.png",
		}
	},

	["radioscanner"] = {
		label = "无线电扫描仪",
		weight = 1000,
		stack = true,
		close = true,
		description = "这个可以接收到一些警察的报警信息，但不是百分百有效",
		client = {
			image = "radioscanner.png",
		}
	},

	["veh_toolbox"] = {
		label = "工具箱",
		weight = 1000,
		stack = true,
		close = true,
		description = "检查车辆状态",
		client = {
			image = "veh_toolbox.png",
		}
	},

	["geocamo_attachment"] = {
		label = "几何迷彩",
		weight = 1000,
		stack = true,
		close = true,
		description = "一款适用于武器的几何迷彩",
		client = {
			image = "geocamo_attachment.png",
		}
	},

	["kurkakola"] = {
		label = "可乐",
		weight = 500,
		stack = true,
		close = true,
		description = "给所有口渴的人",
		client = {
			image = "cola.png",
		}
	},

	["pinger"] = {
		label = "定位器",
		weight = 1000,
		stack = true,
		close = true,
		description = "通过定位器和你的手机，你可以发送出你的位置信息",
		client = {
			image = "pinger.png",
		}
	},

	["crack_baggy"] = {
		label = "裂解可卡因袋",
		weight = 0,
		stack = true,
		close = true,
		description = "让你更快高兴起来",
		client = {
			image = "crack_baggy.png",
		}
	},

	["coffee"] = {
		label = "咖啡",
		weight = 200,
		stack = true,
		close = true,
		description = "给自己加点咖啡因",
		client = {
			image = "coffee.png",
		}
	},

	["dendrogyra_coral"] = {
		label = "柱状珊瑚",
		weight = 1000,
		stack = true,
		close = true,
		description = "也叫柱状珊瑚",
		client = {
			image = "dendrogyra_coral.png",
		}
	},

	["piranha"] = {
		label = "食人鱼",
		weight = 1500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "piranha.png",
		}
	},

	["shark"] = {
		label = "鲨鱼",
		weight = 7500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "shark.png",
		}
	},

	["medscope_attachment"] = {
		label = "中型瞄准镜",
		weight = 1000,
		stack = true,
		close = true,
		description = "用于武器的中型瞄准镜",
		client = {
			image = "medscope_attachment.png",
		}
	},

	["oxy"] = {
		label = "处方奥施康定",
		weight = 0,
		stack = true,
		close = true,
		description = "标签已被撕掉",
		client = {
			image = "oxy.png",
		}
	},

	["copper"] = {
		label = "铜",
		weight = 100,
		stack = true,
		close = false,
		description = "一块不错的金属，可能可以用来做点什么",
		client = {
			image = "copper.png",
		}
	},

	["veh_engine"] = {
		label = "引擎",
		weight = 1000,
		stack = true,
		close = true,
		description = "升级车辆引擎",
		client = {
			image = "veh_engine.png",
		}
	},

	["mahi_mahi"] = {
		label = "马哈马哈",
		weight = 3500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mahi_mahi.png",
		}
	},

	["titanium_rod"] = {
		label = "钛合金钓竿",
		weight = 450,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "titanium_rod.png",
		}
	},

	["artificial_bait"] = {
		label = "人工饵",
		weight = 30,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "artificial_bait.png",
		}
	},

	["weed_ogkush_seed"] = {
		label = "OG Kush种子",
		weight = 0,
		stack = true,
		close = true,
		description = "其复杂的香气（混合了柑橘、松木和香料的味道）和强烈的效果而闻名，它在加州的地下文化中非常受欢迎，是许多混合品种的祖先。",
		client = {
			image = "weed_seed.png",
		}
	},

	["anchovy"] = {
		label = "鳀鱼",
		weight = 20,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "anchovy.png",
		}
	},

	["drill"] = {
		label = "电钻",
		weight = 20000,
		stack = true,
		close = false,
		description = "真正的工具...",
		client = {
			image = "drill.png",
		}
	},

	["advancedlockpick"] = {
		label = "高级撬锁工具",
		weight = 500,
		stack = true,
		close = true,
		description = "如果你经常丢钥匙，这个非常有用...也可以用来开啤酒",
		client = {
			image = "advancedlockpick.png",
		}
	},

	["sulfuric_acid"] = {
		label = "硫酸",
		weight = 1500,
		stack = true,
		close = false,
		description = "化学品，小心处理！",
		client = {
			image = "sulfuric_acid.png",
		}
	},

	["iron"] = {
		label = "铁",
		weight = 100,
		stack = true,
		close = false,
		description = "一块很实用的金属，可能可以用来做点什么",
		client = {
			image = "iron.png",
		}
	},

	["veh_brakes"] = {
		label = "刹车",
		weight = 1000,
		stack = true,
		close = true,
		description = "升级车辆刹车系统",
		client = {
			image = "veh_brakes.png",
		}
	},

	["weed_nutrition"] = {
		label = "植物肥料",
		weight = 2000,
		stack = true,
		close = true,
		description = "植物肥料",
		client = {
			image = "weed_nutrition.png",
		}
	},

	["tosti"] = {
		label = "烤奶酪三明治",
		weight = 200,
		stack = true,
		close = true,
		description = "很好吃的食物",
		client = {
			image = "tosti.png",
		}
	},

	["grip_attachment"] = {
		label = "握把",
		weight = 1000,
		stack = true,
		close = true,
		description = "用于武器的握把",
		client = {
			image = "grip_attachment.png",
		}
	},

	["tablet"] = {
		label = "平板电脑",
		weight = 2000,
		stack = true,
		close = true,
		description = "昂贵的平板电脑",
		client = {
			image = "tablet.png",
		}
	},

	["bellend_muzzle_brake"] = {
		label = "铃形消焰器",
		weight = 1000,
		stack = true,
		close = true,
		description = "用于武器的铃形消焰器",
		client = {
			image = "bellend_muzzle_brake.png",
		}
	},

	["beer"] = {
		label = "啤酒",
		weight = 500,
		stack = true,
		close = true,
		description = "没有什么比一瓶冷啤酒更好的了！",
		client = {
			image = "beer.png",
		}
	},

	["vodka"] = {
		label = "伏特加",
		weight = 500,
		stack = true,
		close = true,
		description = "给所有口渴的人",
		client = {
			image = "vodka.png",
		}
	},

	["comp_attachment"] = {
		label = "补偿器",
		weight = 1000,
		stack = true,
		close = true,
		description = "用于武器的补偿器",
		client = {
			image = "comp_attachment.png",
		}
	},

	["marijuana"] = {
		label = "大麻花",
		weight = 500,
		stack = true,
		close = true,
		description = "一些气味芬芳的花蕊。",
		client = {
			image = "marijuana.png",
		}
	},

	["methtray"] = {
		label = "冰毒托盘",
		weight = 200,
		stack = true,
		close = false,
		description = "用来制作冰毒",
		client = {
			image = "meth_tray.png",
		}
	},

	["grapejuice"] = {
		label = "葡萄汁",
		weight = 200,
		stack = true,
		close = false,
		description = "葡萄汁被认为对健康有益",
		client = {
			image = "grapejuice.png",
		}
	},

	["driver_license"] = {
		label = "驾驶证",
		weight = 0,
		stack = false,
		close = false,
		description = "证明你可以驾驶车辆的许可证",
		client = {
			image = "driver_license.png",
		}
	},

	["weed_ak47_seed"] = {
		label = "AK47种子",
		weight = 0,
		stack = true,
		close = true,
		description = "名字源于著名的“AK-47”突击步枪，具有强烈的效果，因其较高的THC（四氢大麻酚）含量，通常用于放松、减压和治疗目的。",
		client = {
			image = "weed_seed.png",
		}
	},

	["clip_attachment"] = {
		label = "弹匣",
		weight = 1000,
		stack = true,
		close = true,
		description = "用于武器的弹匣",
		client = {
			image = "clip_attachment.png",
		}
	},

	["luxuryfinish_attachment"] = {
		label = "奢华外观",
		weight = 1000,
		stack = true,
		close = true,
		description = "用于武器的奢华外观",
		client = {
			image = "luxuryfinish_attachment.png",
		}
	},

	["security_card_02"] = {
		label = "安全卡 B",
		weight = 0,
		stack = true,
		close = true,
		description = "一张安全卡...我想知道它通向哪里",
		client = {
			image = "security_card_02.png",
		}
	},

	["coke_small_brick"] = {
		label = "小可卡因包",
		weight = 350,
		stack = true,
		close = true,
		description = "小型的可卡因包，主要用于交易，占用很大空间",
		client = {
			image = "coke_small_brick.png",
		}
	},

	["woodcamo_attachment"] = {
		label = "丛林迷彩",
		weight = 1000,
		stack = true,
		close = true,
		description = "用于武器的丛林迷彩",
		client = {
			image = "woodcamo_attachment.png",
		}
	},

	["weed_skunk"] = {
		label = "臭鼬 2克",
		weight = 200,
		stack = true,
		close = false,
		description = "非常高的THC和CBD含量，强烈且臭味浓烈的大麻品种。",
		client = {
			image = "weed_baggy.png",
		}
	},

	["graphite_rod"] = {
		label = "石墨钓竿",
		weight = 350,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "graphite_rod.png",
		}
	},

	["brushcamo_attachment"] = {
		label = "笔触迷彩",
		weight = 1000,
		stack = true,
		close = true,
		description = "用于武器的笔触迷彩",
		client = {
			image = "brushcamo_attachment.png",
		}
	},

	["thermite"] = {
		label = "热焰",
		weight = 1000,
		stack = true,
		close = true,
		description = "有时候你会希望一切都能燃烧起来",
		client = {
			image = "thermite.png",
		}
	},

	["veh_xenons"] = {
		label = "氙气灯",
		weight = 1000,
		stack = true,
		close = true,
		description = "升级车辆氙气灯",
		client = {
			image = "veh_xenons.png",
		}
	},

	["cokebaggy"] = {
		label = "可卡因袋",
		weight = 0,
		stack = true,
		close = true,
		description = "快速让你高兴起来",
		client = {
			image = "cocaine_baggy.png",
		}
	},

	["firework1"] = {
		label = "双兄弟",
		weight = 1000,
		stack = true,
		close = true,
		description = "响得很",
		client = {
			image = "firework1.png",
		}
	},

	["fitbit"] = {
		label = "Fitbit手环",
		weight = 500,
		stack = false,
		close = true,
		description = "我喜欢Fitbit",
		client = {
			image = "fitbit.png",
		}
	},

	["moneybag"] = {
		label = "钱袋",
		weight = 0,
		stack = false,
		close = true,
		description = "装有现金的袋子",
		client = {
			image = "moneybag.png",
		}
	},

	["goldbar"] = {
		label = "金条",
		weight = 300,
		stack = true,
		close = true,
		description = "看起来相当贵重",
		client = {
			image = "goldbar.png",
		}
	},

	["flashlight_attachment"] = {
		label = "手电筒",
		weight = 1000,
		stack = true,
		close = true,
		description = "用于武器的手电筒",
		client = {
			image = "flashlight_attachment.png",
		}
	},

	["police_stormram"] = {
		label = "冲击锤",
		weight = 18000,
		stack = true,
		close = true,
		description = "一个不错的工具，用来砸开门",
		client = {
			image = "police_stormram.png",
		}
	},

	["wet_weed"] = {
		label = "湿大麻",
		weight = 3000,
		stack = true,
		close = false,
		description = "需要处理的湿大麻！",
		client = {
			image = "wet_weed.png",
		}
	},

	["red_snapper"] = {
		label = "红鲷鱼",
		weight = 2500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "red_snapper.png",
		}
	},

	["weed_ogkush"] = {
		label = "OG Kush 2克",
		weight = 200,
		stack = true,
		close = false,
		description = "其复杂的香气（混合了柑橘、松木和香料的味道）和强烈的效果而闻名，它在加州的地下文化中非常受欢迎，是许多混合品种的祖先。",
		client = {
			image = "weed_baggy.png",
		}
	},

	["salmon"] = {
		label = "鲑鱼",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "salmon.png",
		}
	},

	["basic_rod"] = {
		label = "基础钓竿",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "basic_rod.png",
		}
	},

	["filled_evidence_bag"] = {
		label = "证据袋",
		weight = 200,
		stack = false,
		close = false,
		description = "一个装满证据的袋子，用来调查是谁犯下了罪行 >:(",
		client = {
			image = "evidence.png",
		}
	},

	["sandwich"] = {
		label = "三明治",
		weight = 200,
		stack = true,
		close = true,
		description = "好吃的面包，适合你的胃",
		client = {
			image = "sandwich.png",
		}
	},

	["snikkel_candy"] = {
		label = "Snikkel糖果",
		weight = 100,
		stack = true,
		close = true,
		description = "美味的糖果 :O",
		client = {
			image = "snikkel_candy.png",
		}
	},

	["thermalscope_attachment"] = {
		label = "热成像瞄准镜",
		weight = 1000,
		stack = true,
		close = true,
		description = "用于武器的热成像瞄准镜",
		client = {
			image = "thermalscope_attachment.png",
		}
	},

	["certificate"] = {
		label = "证书",
		weight = 0,
		stack = true,
		close = true,
		description = "证明你拥有某些物品的证书",
		client = {
			image = "certificate.png",
		}
	},

	["screwdriverset"] = {
		label = "螺丝刀套装",
		weight = 1000,
		stack = true,
		close = false,
		description = "非常有用来拧螺丝…",
		client = {
			image = "screwdriverset.png",
		}
	},

	["slanted_muzzle_brake"] = {
		label = "斜角消焰器",
		weight = 1000,
		stack = true,
		close = true,
		description = "用于武器的斜角消焰器",
		client = {
			image = "slanted_muzzle_brake.png",
		}
	},

	["skullcamo_attachment"] = {
		label = "骷髅迷彩",
		weight = 1000,
		stack = true,
		close = true,
		description = "骷髅哦~~~",
		client = {
			image = "skullcamo_attachment.png",
		}
	},

	["weed_amnesia_seed"] = {
		label = "健忘种子",
		weight = 0,
		stack = true,
		close = true,
		description = "强烈的头脑高涨和精神激励的体验，某些使用者可能会感到精神混乱或短暂的记忆丧失。",
		client = {
			image = "weed_seed.png",
		}
	},

	["ironoxide"] = {
		label = "铁粉",
		weight = 100,
		stack = true,
		close = false,
		description = "一些粉末，可以混合使用",
		client = {
			image = "ironoxide.png",
		}
	},

	["fat_end_muzzle_brake"] = {
		label = "粗端消焰器",
		weight = 1000,
		stack = true,
		close = true,
		description = "用于武器的粗端消焰器",
		client = {
			image = "fat_end_muzzle_brake.png",
		}
	},

	["nvscope_attachment"] = {
		label = "夜视瞄准镜",
		weight = 1000,
		stack = true,
		close = true,
		description = "用于武器的夜视瞄准镜",
		client = {
			image = "nvscope_attachment.png",
		}
	},

	["boomcamo_attachment"] = {
		label = "爆炸迷彩",
		weight = 1000,
		stack = true,
		close = true,
		description = "一款适用于武器的爆炸迷彩",
		client = {
			image = "boomcamo_attachment.png",
		}
	},

	['medicalbag'] = {
		label = '医疗包',
		weight = 220,
		stack = true,
		description = "一个用于治疗伤害和疾病的综合医疗箱。",
	},
	
	['bandage'] = {
		label = '绷带',
		weight = 100,
		stack = true,
		description = "用于覆盖和保护伤口的简单绷带。",
	},
	
	['defibrillator'] = {
		label = '除颤器',
		weight = 100,
		stack = true,
		description = "用于复苏患者的设备。",
	},
	
	['tweezers'] = {
		label = '镊子',
		weight = 100,
		stack = true,
		description = "用于安全移除伤口中的异物（如子弹）的精密镊子。",
	},
	
	['burncream'] = {
		label = '烫伤膏',
		weight = 100,
		stack = true,
		description = "专门用于治疗和舒缓轻微烧伤和皮肤刺激的药膏。",
	},
	
	['suturekit'] = {
		label = '缝合工具包',
		weight = 100,
		stack = true,
		description = "包含用于缝合和闭合伤口的外科工具和材料的工具包。",
	},
	
	['icepack'] = {
		label = '冰袋',
		weight = 200,
		stack = true,
		description = "用于减轻肿胀并缓解疼痛和炎症的冰袋。",
	},
	
	['stretcher'] = {
		label = '担架',
		weight = 200,
		stack = true,
		description = "用于搬运需要医疗护理的患者的担架。",
	},
	
	['emstablet'] = {
		label = '急救平板',
		weight = 1000,
		stack = true,
	},

	["evidence_b"] = {
		label = "车辆证据",
		weight = 0,
		stack = false,
		close = false,
		description = "从犯罪现场获取的证据",
		client = {
			image = "evidence_b.png",
		}
	},

	["report_evidence"] = {
		label = "证据报告",
		weight = 0,
		stack = false,
		close = false,
		description = "最多可以收集4件证据的报告",
		client = {
			image = "report_evidence.png",
		}
	},

	["lspd_badge"] = {
		label = "警察徽章",
		weight = 0,
		stack = false,
		close = false,
		description = "您作为警察的身份标识，包含您的职级和徽章编号",
		client = {
			image = "lspd_badge.png",
		}
	},

	["evidence_az"] = {
		label = "通用证据",
		weight = 0,
		stack = false,
		close = false,
		description = "从犯罪现场获取的证据",
		client = {
			image = "evidence_az.png",
		}
	},

	["evidence_n"] = {
		label = "撞击证据",
		weight = 0,
		stack = false,
		close = false,
		description = "从犯罪现场获取的证据",
		client = {
			image = "evidence_n.png",
		}
	},

	["evidence_r"] = {
		label = "血迹证据",
		weight = 0,
		stack = false,
		close = false,
		description = "从犯罪现场获取的证据",
		client = {
			image = "evidence_r.png",
		}
	},

	["evidence_ro"] = {
		label = "通用证据",
		weight = 0,
		stack = false,
		close = false,
		description = "从犯罪现场获取的证据",
		client = {
			image = "evidence_ro.png",
		}
	},

	["bcsd_badge"] = {
		label = "治安官徽章",
		weight = 0,
		stack = false,
		close = false,
		description = "您作为治安官的身份标识，包含您的职级和徽章编号",
		client = {
			image = "bcsd_badge.png",
		}
	},

	["megaphone"] = {
		label = "扩音器",
		weight = 500,
		stack = false,
		close = false,
		description = "一个可以让您的声音被听到的扩音器",
		client = {
			image = "megaphone.png",
		}
	},

	["k9"] = {
		label = "警犬哨子",
		weight = 0,
		stack = false,
		close = false,
		description = "使用哨子召唤警犬单位",
		client = {
			image = "whistle.png",
		}
	},

	["police_cad"] = {
		label = "警务平板",
		weight = 1000,
		stack = false,
		close = false,
		description = "您的个人平板电脑, 包含LSPD警察的所有信息",
		client = {
			image = "police_cad.png",
		}
	},

	["photo"] = {
		label = "照片",
		weight = 0,
		stack = false,
		close = false,
		description = "一张图像",
		client = {
			image = "photos.png",
		}
	},

	["fib_badge"] = {
		label = "联邦调查局徽章",
		weight = 0,
		stack = false,
		close = false,
		description = "您作为联邦探员的身份标识，包含您的职级和徽章编号",
		client = {
			image = "fib_badge.png",
		}
	},

	["evidence_a"] = {
		label = "弹道证据",
		weight = 0,
		stack = false,
		close = false,
		description = "从犯罪现场获取的证据",
		client = {
			image = "evidence_a.png",
		}
	},

	["evidence_ne"] = {
		label = "脚印证据",
		weight = 0,
		stack = false,
		close = false,
		description = "从犯罪现场获取的证据",
		client = {
			image = "evidence_ne.png",
		}
	},

	["evidence_v"] = {
		label = "毒品证据",
		weight = 0,
		stack = false,
		close = false,
		description = "从犯罪现场获取的证据",
		client = {
			image = "evidence_v.png",
		}
	},

	["instant_camera"] = {
		label = "即时相机",
		weight = 0,
		stack = false,
		close = false,
		description = "一台专为犯罪现场拍摄照片设计的简易相机",
		client = {
			image = "polaroid.png",
		}
	},	
	["redwcig"] = {
		label = "香烟",
		weight = 10,
		stack = true,
		close = true,
	},

	["spraycan"] = {
		label = "Spray Can",
		weight = 1000,
		stack = false,
		close = true,
		description = "Spray Can",
		client = {
			image = "spraycan.png",
		}
	},

	["sprayremover"] = {
		label = "Spray Remover",
		weight = 100,
		stack = false,
		close = true,
		description = "Spray Remover",
		client = {
			image = "sprayremover.png",
		}
	},

	["scratch_ticket"] = {
		label = "刮刮乐",
		weight = 25,
		stack = true,
		close = true,
		description = "先天刮奖圣体~~",
		client = {
			image = "scratch_ticket.png",
		}
	},
	["specialcar_license"] = {
		label = "特殊车辆购买许可",
		weight = 0,
		stack = true,
		close = true,
		description = "用于公职人员购买特殊车辆",
		client = {
			image = "specialcar_license.png",
		}
	},
	-- jg-mechanic
	-- Servicing Items
	["engine_oil"] = {
		label = "机油",
		weight = 1000,
	},
	["tyre_replacement"] = {
	label = "轮胎更换",
	weight = 1000,
	},
	["clutch_replacement"] = {
	label = "离合器更换",
	weight = 1000,
	},
	["air_filter"] = {
	label = "空气滤清器",
	weight = 100,
	},
	["spark_plug"] = {
	label = "火花塞",
	weight = 1000,
	},
	["brakepad_replacement"] = {
	label = "刹车片更换",
	weight = 1000,
	},
	["suspension_parts"] = {
	label = "悬挂部件",
	weight = 1000,
	},
	-- 发动机部件
	["i4_engine"] = {
	label = "I4发动机",
	weight = 1000,
	},
	["v6_engine"] = {
	label = "V6发动机",
	weight = 1000,
	},
	["v8_engine"] = {
	label = "V8发动机",
	weight = 1000,
	},
	["v12_engine"] = {
	label = "V12发动机",
	weight = 1000,
	},
	["turbocharger"] = {
	label = "涡轮增压器",
	weight = 1000,
	},
	-- 电动发动机
	["ev_motor"] = {
	label = "电动车电机",
	weight = 1000,
	},
	["ev_battery"] = {
	label = "电动车电池",
	weight = 1000,
	},
	["ev_coolant"] = {
	label = "电动车冷却液",
	weight = 1000,
	},
	-- 传动系统部件
	["awd_drivetrain"] = {
	label = "全轮驱动系统",
	weight = 1000,
	},
	["rwd_drivetrain"] = {
	label = "后轮驱动系统",
	weight = 1000,
	},
	["fwd_drivetrain"] = {
	label = "前轮驱动系统",
	weight = 1000,
	},
	-- 改装配件
	["slick_tyres"] = {
	label = "光头胎",
	weight = 1000,
	},
	["semi_slick_tyres"] = {
	label = "半光头胎",
	weight = 1000,
	},
	["offroad_tyres"] = {
	label = "越野胎",
	weight = 1000,
	},
	["drift_tuning_kit"] = {
	label = "漂移调校套件",
	weight = 1000,
	},
	["ceramic_brakes"] = {
	label = "陶瓷刹车",
	weight = 1000,
	},
	-- 外观配件
	["lighting_controller"] = {
	label = "灯光控制器",
	weight = 100,
	client = {
		event = "jg-mechanic:client:show-lighting-controller",
	}
	},
	["stancing_kit"] = {
	label = "姿态套件",
	weight = 100,
	client = {
		event = "jg-mechanic:client:show-stancer-kit",
	}
	},
	["cosmetic_part"] = {
	label = "外观部件",
	weight = 100,
	},
	["respray_kit"] = {
	label = "喷漆套件",
	weight = 1000,
	},
	["vehicle_wheels"] = {
	label = "车辆轮毂套装",
	weight = 1000,
	},
	["tyre_smoke_kit"] = {
	label = "轮胎烟雾套件",
	weight = 1000,
	},
	["bulletproof_tyres"] = {
	label = "防弹轮胎",
	weight = 1000,
	},
	["extras_kit"] = {
	label = "额外套件",
	weight = 1000,
	},
	-- 氮气和清洁用品
	["nitrous_bottle"] = {
	label = "氮气瓶",
	weight = 1000,
	client = {
		event = "jg-mechanic:client:use-nitrous-bottle",
	}
	},
	["empty_nitrous_bottle"] = {
	label = "空氮气瓶",
	weight = 1000,
	},
	["nitrous_install_kit"] = {
	label = "氮气安装套件",
	weight = 1000,
	},
	["cleaning_kit"] = {
	label = "清洁套件",
	weight = 1000,
	client = {
		event = "jg-mechanic:client:clean-vehicle",
	}
	},
	["repair_kit"] = {
	label = "维修套件",
	weight = 1000,
	client = {
		event = "jg-mechanic:client:repair-vehicle",
	}
	},
	["duct_tape"] = {
	label = "强力胶带",
	weight = 1000,
	client = {
		event = "jg-mechanic:client:use-duct-tape",
	}
	},
	-- 性能部件
	["performance_part"] = {
	label = "性能部件",
	weight = 1000,
	},
	-- 机械师平板
	["mechanic_tablet"] = {
	label = "机械师平板",
	weight = 1000,
	client = {
		event = "jg-mechanic:client:use-tablet",
	}
	},
	-- 变速箱
	["manual_gearbox"] = {
	label = "手动变速箱",
	weight = 1000,
	},
}