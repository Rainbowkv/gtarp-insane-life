return {
	{
		coords = vec3(448.98, -997.58, 30.69),
		target = {
			loc = vec3(448.98, -997.58, 30.69),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = '警员储物室'
		},
		name = 'policelocker',
		label = '警员储物室',
		owner = true,
		slots = 70,
		weight = 100000,
		groups = shared.police
	},  
	{
		coords = vec3(306.56, -601.72, 43.28),
		target = {
			loc = vec3(306.56, -601.72, 43.28),
			length = 2.0,
			width = 5.0,
			heading = 0,
			minZ = 41.00,
			maxZ = 45.00,
			label = 'EMS人员储物柜'
		},
		name = 'emslocker',
		label = 'EMS人员储物柜',
		owner = true,
		slots = 70,
		weight = 100000,
		groups = shared.ambulance
	},
}
