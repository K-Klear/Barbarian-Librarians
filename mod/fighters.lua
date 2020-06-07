local FIGHTER = {
	[hash("vojta_beta")] = {
		atlas = "vojta_beta",
		name = "Vojta",
		speed_forwards = 5,
		speed_backwards = 3,
		moves = {
			[hash("punch")] = {
				{
					keys_held = {hash("duck")},
					keys_sequence = {},
					state = hash("ready"),
					anim = "uppercut",
					hitbox = "#hitbox_simple",
					damage_point = 40,
					damage_pos = vmath.vector3(100, 140, 0),
					force = vmath.vector3(14000, 120000, 0),
					damage = 20,
					recovery = 90
				},
				{
					keys_held = {},
					keys_sequence = {hash("punch"), hash("forward"), hash("backward")},
					state = hash("ready"),
					anim = "spit",
					hitbox = "#hitbox_spit",
					speed = 8,
					damage_point = 60,
					damage_pos = vmath.vector3(85, 125, 0),
					force = vmath.vector3(50000, 11000, 0),
					damage = 10,
					recovery = 90
				},
				{
					keys_held = {},
					keys_sequence = {},
					state = hash("ready"),
					anim = "punch",
					hitbox = "#hitbox_simple",
					damage_point = 1,
					damage_pos = vmath.vector3(150, 150, 0),
					force = vmath.vector3(6000, 10000, 0),
					damage = 7,
					recovery = 30
				},
				{
					keys_held = {},
					keys_sequence = {},
					state = hash("jump"),
					anim = "jump_kick",
					hitbox = "#hitbox_jump",
					damage_point = 1,
					damage_pos = vmath.vector3(180, -37, 0),
					force = vmath.vector3(60000, 15000, 0),
					damage = 12,
					recovery = nil
				}
			}
		}
	},
}

return FIGHTER