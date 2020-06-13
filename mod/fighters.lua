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
	[hash("bohous")] = {
		atlas = "bohous",
		name = "Bohous",
		speed_forwards = 5,
		speed_backwards = 3,
		moves = {
			
			[hash("punch")] = {


				-- JUMPING ATTACKS
				{
					keys_held = {},
					keys_sequence = {},
					state = hash("jump"),
					anim = "punch_jump",
					hitbox = "#hitbox_jump",
					damage_point = 1,
					damage_pos = vmath.vector3(180, -37, 0),
					force = vmath.vector3(60000, 15000, 0),
					damage = 12,
					recovery = nil
				},



				-- CROUCHED ATTACKS
				{
					keys_held = {hash("duck"), "backward"},
					keys_sequence = {},
					state = hash("ready"),
					anim = "punch_duck_3",
					hitbox = "#hitbox_simple",
					damage_point = 1,
					damage_pos = vmath.vector3(150, 150, 0),
					force = vmath.vector3(6000, 10000, 0),
					damage = 7,
					recovery = 140,
					recovery_type = hash("attack_recovery")
				},
				{
					keys_held = {hash("duck"), "forward"},
					keys_sequence = {},
					state = hash("ready"),
					anim = "punch_duck_1",
					hitbox = "#hitbox_simple",
					damage_point = 1,
					damage_pos = vmath.vector3(150, 150, 0),
					force = vmath.vector3(6000, 10000, 0),
					damage = 7,
					recovery = 30,
					recovery_type = hash("attack_recovery_duck")
				},
				{
					keys_held = {hash("duck")},
					keys_sequence = {},
					state = hash("ready"),
					anim = "punch_duck_2",
					hitbox = "#hitbox_simple",
					damage_point = 1,
					damage_pos = vmath.vector3(150, 150, 0),
					force = vmath.vector3(6000, 10000, 0),
					damage = 7,
					recovery = 60,
					recovery_type = hash("attack_recovery_duck")
				},



				-- NORMAL ATTACKS

				{
					keys_held = {},
					keys_sequence = {hash("punch"), hash("forward"), hash("backward")},
					state = hash("ready"),
					anim = "throw",
					hitbox = "#hitbox_spit",
					speed = 8,
					damage_point = 60,
					damage_pos = vmath.vector3(85, 125, 0),
					force = vmath.vector3(50000, 11000, 0),
					damage = 10,
					recovery = 90,
					recovery_type = hash("attack_recovery")
				},
				{
					keys_held = {},
					keys_sequence = {hash("punch"), hash("forward"), hash("duck")},
					state = hash("ready"),
					anim = "smash",
					hitbox = "#hitbox_simple",
					damage_point = 60,
					damage_pos = vmath.vector3(85, 125, 0),
					force = vmath.vector3(50000, 11000, 0),
					damage = 10,
					recovery = 200,
					recovery_type = hash("attack_recovery")
				},
				{
					keys_held = {},
					keys_sequence = {hash("punch"), hash("backward"), hash("duck")},
					state = hash("ready"),
					anim = "hook",
					hitbox = "#hitbox_simple",
					damage_point = 60,
					damage_pos = vmath.vector3(85, 125, 0),
					force = vmath.vector3(50000, 11000, 0),
					damage = 10,
					recovery = 200,
					recovery_type = hash("attack_recovery")
				},
				
				{
					keys_held = {"backward"},
					keys_sequence = {},
					state = hash("ready"),
					anim = "punch_1",
					hitbox = "#hitbox_simple",
					damage_point = 1,
					damage_pos = vmath.vector3(150, 150, 0),
					force = vmath.vector3(6000, 10000, 0),
					damage = 7,
					recovery = 75,
					recovery_type = hash("attack_recovery")
				},
				{
					keys_held = {"forward"},
					keys_sequence = {},
					state = hash("ready"),
					anim = "punch_2",
					hitbox = "#hitbox_simple",
					damage_point = 1,
					damage_pos = vmath.vector3(150, 150, 0),
					force = vmath.vector3(6000, 10000, 0),
					damage = 7,
					recovery = 30,
					recovery_type = hash("attack_recovery")
				},
				{
					keys_held = {},
					keys_sequence = {},
					state = hash("ready"),
					anim = "punch_3",
					hitbox = "#hitbox_simple",
					damage_point = 1,
					damage_pos = vmath.vector3(150, 150, 0),
					force = vmath.vector3(6000, 10000, 0),
					damage = 7,
					recovery = 60,
					recovery_type = hash("attack_recovery")
				},
			},


			
			[hash("kick")] = {

				-- JUMPING KICKS
				{
					keys_held = {},
					keys_sequence = {},
					state = hash("jump"),
					anim = "kick_jump",
					hitbox = "#hitbox_jump",
					damage_point = 1,
					damage_pos = vmath.vector3(180, -37, 0),
					force = vmath.vector3(60000, 15000, 0),
					damage = 12,
					recovery = nil
				},
				

				-- CROUCHED KICKS
				{
					keys_held = {hash("duck"), "forward"},
					keys_sequence = {},
					state = hash("ready"),
					anim = "kick_duck_2",
					hitbox = "#hitbox_simple",
					damage_point = 1,
					damage_pos = vmath.vector3(150, 150, 0),
					force = vmath.vector3(6000, 10000, 0),
					damage = 7,
					recovery = 30,
					recovery_type = hash("attack_recovery_duck")
				},
				{
					keys_held = {hash("duck")},
					keys_sequence = {},
					state = hash("ready"),
					anim = "kick_duck_1",
					hitbox = "#hitbox_simple",
					damage_point = 1,
					damage_pos = vmath.vector3(150, 150, 0),
					force = vmath.vector3(6000, 10000, 0),
					damage = 7,
					recovery = 55,
					recovery_type = hash("attack_recovery_duck")
				},



				-- NORMAL KICKS
				{
					keys_held = {"backward"},
					keys_sequence = {},
					state = hash("ready"),
					anim = "kick_1",
					hitbox = "#hitbox_simple",
					damage_point = 1,
					damage_pos = vmath.vector3(150, 150, 0),
					force = vmath.vector3(6000, 10000, 0),
					damage = 7,
					recovery = 150,
					recovery_type = hash("attack_recovery")
				},
				{
					keys_held = {"forward"},
					keys_sequence = {},
					state = hash("ready"),
					anim = "kick_2",
					hitbox = "#hitbox_simple",
					damage_point = 1,
					damage_pos = vmath.vector3(150, 150, 0),
					force = vmath.vector3(6000, 10000, 0),
					damage = 7,
					recovery = 30,
					recovery_type = hash("attack_recovery")
				},
				{
					keys_held = {},
					keys_sequence = {},
					state = hash("ready"),
					anim = "kick_3",
					hitbox = "#hitbox_simple",
					damage_point = 1,
					damage_pos = vmath.vector3(150, 150, 0),
					force = vmath.vector3(6000, 10000, 0),
					damage = 7,
					recovery = 60,
					recovery_type = hash("attack_recovery")
				},

				
			}
		}
	},
}

return FIGHTER