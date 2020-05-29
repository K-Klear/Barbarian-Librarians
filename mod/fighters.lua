local FIGHTER = {
	[hash("stick")] = {
		speed_forwards = 5,
		speed_backwards = 3,
		moves = {
			[hash("punch")] = {
				{
					keys_held = {"backward"},
					keys_sequence = {},
					anim = "uppercut",
					hitbox = "#hitbox_simple",
					damage_point = 60,
					damage_pos = vmath.vector3(150, 150, 0),
					force = vmath.vector3(40000, 110000, 0),
					damage = 15,
					recovery = 90
				},
				{
					keys_held = {},
					keys_sequence = {},
					anim = "punch",
					hitbox = "#hitbox_simple",
					damage_point = 1,
					damage_pos = vmath.vector3(150, 150, 0),
					force = vmath.vector3(10000, 10000, 0),
					damage = 7,
					recovery = 30
				}
			}
		}
	},
	[hash("red")] = {
		speed_forwards = 6,
		speed_backwards = 2,
		moves = {
			[hash("punch")] = {
				{
					keys_held = {"backward"},
					keys_sequence = {},
					anim = "uppercut",
					hitbox = "#hitbox_simple",
					damage_point = 60,
					damage_pos = vmath.vector3(16, 23, 0),
					force = vmath.vector3(30000, 50000, 0),
					damage = 15,
					recovery = 90
				},
				{
					keys_held = {},
					keys_sequence = {},
					anim = "punch",
					hitbox = "#hitbox_simple",
					damage_point = 1,
					damage_pos = vmath.vector3(13, 13, 0),
					force = vmath.vector3(10000, 10000, 0),
					damage = 7,
					recovery = 30
				}
			}
		}
	},
	[hash("vojta_beta")] = {
		speed_forwards = 5,
		speed_backwards = 3,
		moves = {
			[hash("punch")] = {
				{
					keys_held = {hash("duck")},
					keys_sequence = {},
					anim = "uppercut",
					hitbox = "#hitbox_simple",
					damage_point = 60,
					damage_pos = vmath.vector3(100, 140, 0),
					force = vmath.vector3(14000, 120000, 0),
					damage = 15,
					recovery = 90
				},
				{
					keys_held = {"backward"},
					keys_sequence = {},
					anim = "spit",
					hitbox = "#hitbox_spit",
					speed = 7,
					damage_point = 60,
					damage_pos = vmath.vector3(85, 125, 0),
					force = vmath.vector3(50000, 11000, 0),
					damage = 15,
					recovery = 90
				},
				{
					keys_held = {},
					keys_sequence = {},
					anim = "punch",
					hitbox = "#hitbox_simple",
					damage_point = 1,
					damage_pos = vmath.vector3(150, 150, 0),
					force = vmath.vector3(30000, 10000, 0),
					damage = 7,
					recovery = 30
				}
			}
		}
	},
}

return FIGHTER