local FIGHTER = {

	[hash("lukas")] = {
		atlas = "lukas",
		name = "Lukas",
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
					hitbox_rotation = 0,
					damage_point = 1,
					damage_pos = vmath.vector3(186, -100, 0),
					force = vmath.vector3(9200, 13000, 0),
					damage = 11,
					recovery = nil
				},



				-- CROUCHED ATTACKS
				{
					keys_held = {hash("duck")},
					keys_sequence = {},
					state = hash("ready"),
					anim = "punch_duck_1",
					hitbox = "#hitbox_long",
					hitbox_rotation = -80,
					damage_point = 2,
					damage_pos = vmath.vector3(150, 34, 0),
					force = vmath.vector3(8500, 8200, 0),
					damage = 2,
					recovery = 17,
					recovery_type = hash("attack_recovery_duck")
				},


				-- SPECIAL ATTACKS

				{
					keys_held = {},
					keys_sequence = {hash("punch"), hash("backward"), hash("backward")},
					state = hash("ready"),
					anim = "throw",
					playback_rate = 7/60,
					hitbox = "#hitbox_book",
					hitbox_scale = 2,
					damage_point = 35,
					damage_pos = vmath.vector3(100, 128, 0),
					force = vmath.vector3(75000, 10000, 0),
					damage = 9,
					recovery = 90,
					recovery_type = hash("attack_recovery")
				},
				{
					keys_held = {},
					keys_sequence = {hash("punch"), hash("forward"), hash("duck"), hash("backward")},
					state = hash("ready"),
					anim = "smash",
					playback_rate = 3.5/60,
					hitbox = "#hitbox_simple",
					hitbox_rotation = 35,
					hitbox_scale = 6,
					damage_point = 110,
					damage_pos = vmath.vector3(220, 160, 0),
					force = vmath.vector3(100000, 70000, 0),
					damage = 22,
					recovery = 140,
					recovery_type = hash("attack_recovery")
				},
				{
					keys_held = {},
					keys_sequence = {hash("punch"), hash("backward"), hash("duck")},
					state = hash("ready"),
					anim = "hook",
					playback_rate = 5/60,
					hitbox = "#hitbox_long",
					damage_point = 50,
					damage_pos = vmath.vector3(300, 100, 0),
					hitbox_rotation = 90,
					hitbox_scale = 4,
					force = vmath.vector3(1, 1, 0),
					damage = 4,
					recovery = 80,
					recovery_type = hash("attack_recovery")
				},


				-- NOMRAL ATTACKS
				{
					keys_held = {"backward"},
					keys_sequence = {},
					state = hash("ready"),
					anim = "punch_1",
					playback_rate = 5/60,
					hitbox = "#hitbox_long",
					hitbox_rotation = -65,
					hitbox_scale = 1.5,
					damage_point = 48,
					damage_pos = vmath.vector3(206, 163, 0),
					force = vmath.vector3(20000, 11000, 0),
					damage = 15,
					recovery = 64,
					recovery_type = hash("attack_recovery")
				},
				{
					keys_held = {"forward"},
					keys_sequence = {},
					state = hash("ready"),
					anim = "punch_2",
					hitbox = "#hitbox_long",
					hitbox_rotation = -70,
					hitbox_scale = 1.5,
					damage_point = 1,
					damage_pos = vmath.vector3(187, 142, 0),
					force = vmath.vector3(7000, 11000, 0),
					damage = 3,
					recovery = 16,
					recovery_type = hash("attack_recovery")
				},
				{
					keys_held = {},
					keys_sequence = {},
					state = hash("ready"),
					anim = "punch_3",
					playback_rate = 6/60,
					hitbox = "#hitbox_long",
					hitbox_rotation = -70,
					hitbox_scale = 1.5,
					damage_point = 18,
					damage_pos = vmath.vector3(187, 142, 0),
					force = vmath.vector3(8000, 12000, 0),
					damage = 6,
					recovery = 30,
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
					damage_pos = vmath.vector3(100, -65, 0),
					force = vmath.vector3(50000, 17000, 0),
					damage = 11,
					recovery = nil
				},


				-- CROUCHED KICKS
				{
					keys_held = {hash("duck"), "forward"},
					keys_sequence = {},
					state = hash("ready"),
					anim = "kick_duck_2",
					hitbox = "#hitbox_simple",
					damage_point = 2,
					damage_pos = vmath.vector3(170, -90, 0),
					force = vmath.vector3(5000, 7000, 0),
					damage = 3,
					recovery = 30,
					recovery_type = hash("attack_recovery_duck")
				},
				{
					keys_held = {hash("duck")},
					keys_sequence = {},
					state = hash("ready"),
					anim = "kick_duck_1",
					playback_rate = 3/60,
					hitbox = "#hitbox_simple",
					damage_point = 19,
					damage_pos = vmath.vector3(170, -90, 0),
					force = vmath.vector3(11000, 8000, 0),
					damage = 7,
					recovery = 37,
					recovery_type = hash("attack_recovery_duck")
				},

				-- SPECIAL KICKS

				{
					keys_held = {},
					keys_sequence = {hash("kick"), hash("forward"), hash("backward"), hash("backward")},
					state = hash("ready"),
					anim = "bike",
					bike_ready = 85,
					playback_rate = 3.5/60,
					damage_pos = vmath.vector3(500, -100, 0),
					force = vmath.vector3(-5000, 120000, 0),
					damage = 22,
					recovery = 5000,
					recovery_type = hash("attack_recovery")
				},
					


				-- NORMAL KICKS
				{
					keys_held = {"backward"},
					keys_sequence = {},
					state = hash("ready"),
					anim = "kick_1",
					playback_rate = 4/60,
					hitbox = "#hitbox_simple",
					hitbox_scale = 3,
					damage_point = 62,
					damage_pos = vmath.vector3(166, 102, 0),
					force = vmath.vector3(16000, 115000, 0),
					damage = 17,
					recovery = 94,
					recovery_type = hash("attack_recovery")
				},
				{
					keys_held = {"forward"},
					keys_sequence = {},
					state = hash("ready"),
					anim = "kick_2",
					hitbox = "#hitbox_simple",
					hitbox_scale = 3,
					damage_point = 1,
					damage_pos = vmath.vector3(197, -38, 0),
					force = vmath.vector3(2000, 30000, 0),
					damage = 2,
					recovery = 16,
					recovery_type = hash("attack_recovery")
				},
				{
					keys_held = {},
					keys_sequence = {},
					state = hash("ready"),
					anim = "kick_3",
					playback_rate = 4/60,
					hitbox = "#hitbox_simple",
					hitbox_scale = 3,
					damage_point = 26,
					damage_pos = vmath.vector3(182, -14, 0),
					force = vmath.vector3(5000, 30000, 0),
					damage = 8,
					recovery = 50,
					recovery_type = hash("attack_recovery")
				},
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
					hitbox_rotation = 0,
					damage_point = 1,
					damage_pos = vmath.vector3(190, -15, 0),
					force = vmath.vector3(8000, 17000, 0),
					damage = 10,
					recovery = nil
				},



				-- CROUCHED ATTACKS
				{
					keys_held = {hash("duck"), "backward"},
					keys_sequence = {},
					state = hash("ready"),
					anim = "punch_duck_3",
					playback_rate = 6/60,
					hitbox = "#hitbox_long",
					damage_point = 35,
					damage_pos = vmath.vector3(100, 155, 0),
					force = vmath.vector3(50000, 100000, 0),
					damage = 18,
					recovery = 90,
					recovery_type = hash("attack_recovery")
				},
				{
					keys_held = {hash("duck"), "forward"},
					keys_sequence = {},
					state = hash("ready"),
					anim = "punch_duck_1",
					hitbox = "#hitbox_long",
					hitbox_rotation = -80,
					damage_point = 2,
					damage_pos = vmath.vector3(150, 34, 0),
					force = vmath.vector3(8000, 8000, 0),
					damage = 3,
					recovery = 20,
					recovery_type = hash("attack_recovery_duck")
				},
				{
					keys_held = {hash("duck")},
					keys_sequence = {},
					state = hash("ready"),
					anim = "punch_duck_2",
					playback_rate = 8/60,
					hitbox = "#hitbox_long",
					hitbox_rotation = 90,
					damage_point = 5,
					damage_pos = vmath.vector3(160, 31, 0),
					force = vmath.vector3(9000, 11000, 0),
					damage = 5,
					recovery = 25,
					recovery_type = hash("attack_recovery_duck")
				},



				-- SPECIAL ATTACKS

				{
					keys_held = {},
					keys_sequence = {hash("punch"), hash("backward"), hash("backward")},
					state = hash("ready"),
					anim = "throw",
					playback_rate = 7/60,
					hitbox = "#hitbox_book",
					hitbox_scale = 2,
					damage_point = 35,
					damage_pos = vmath.vector3(100, 128, 0),
					force = vmath.vector3(75000, 10000, 0),
					damage = 9,
					recovery = 90,
					recovery_type = hash("attack_recovery")
				},
				{
					keys_held = {},
					keys_sequence = {hash("punch"), hash("forward"), hash("duck"), hash("backward")},
					state = hash("ready"),
					anim = "smash",
					playback_rate = 3.5/60,
					hitbox = "#hitbox_simple",
					hitbox_rotation = 35,
					hitbox_scale = 6,
					damage_point = 110,
					damage_pos = vmath.vector3(220, 160, 0),
					force = vmath.vector3(100000, 70000, 0),
					damage = 22,
					recovery = 140,
					recovery_type = hash("attack_recovery")
				},
				{
					keys_held = {},
					keys_sequence = {hash("punch"), hash("backward"), hash("duck")},
					state = hash("ready"),
					anim = "hook",
					playback_rate = 5/60,
					hitbox = "#hitbox_long",
					damage_point = 50,
					damage_pos = vmath.vector3(300, 100, 0),
					hitbox_rotation = 90,
					hitbox_scale = 4,
					force = vmath.vector3(1, 1, 0),
					damage = 4,
					recovery = 80,
					recovery_type = hash("attack_recovery")
				},


				-- NOMRAL ATTACKS
				{
					keys_held = {"backward"},
					keys_sequence = {},
					state = hash("ready"),
					anim = "punch_1",
					playback_rate = 4/60,
					hitbox = "#hitbox_long",
					hitbox_rotation = -80,
					damage_point = 25,
					damage_pos = vmath.vector3(107, 170, 0),
					force = vmath.vector3(10000, 10000, 0),
					damage = 14,
					recovery = 45,
					recovery_type = hash("attack_recovery")
				},
				{
					keys_held = {"forward"},
					keys_sequence = {},
					state = hash("ready"),
					anim = "punch_2",
					hitbox = "#hitbox_simple",
					damage_point = 3,
					damage_pos = vmath.vector3(140, 175, 0),
					force = vmath.vector3(6000, 10000, 0),
					damage = 4,
					recovery = 25,
					recovery_type = hash("attack_recovery")
				},
				{
					keys_held = {},
					keys_sequence = {},
					state = hash("ready"),
					anim = "punch_3",
					playback_rate = 6/60,
					hitbox = "#hitbox_simple",
					damage_point = 18,
					damage_pos = vmath.vector3(120, 165, 0),
					force = vmath.vector3(8000, 12000, 0),
					damage = 7,
					recovery = 30,
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
					damage_pos = vmath.vector3(200, -55, 0),
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
					damage_point = 2,
					damage_pos = vmath.vector3(170, -90, 0),
					force = vmath.vector3(5000, 7000, 0),
					damage = 3,
					recovery = 30,
					recovery_type = hash("attack_recovery_duck")
				},
				{
					keys_held = {hash("duck")},
					keys_sequence = {},
					state = hash("ready"),
					anim = "kick_duck_1",
					playback_rate = 6/60,
					hitbox = "#hitbox_simple",
					damage_point = 23,
					damage_pos = vmath.vector3(170, -90, 0),
					force = vmath.vector3(11000, 8000, 0),
					damage = 7,
					recovery = 35,
					recovery_type = hash("attack_recovery_duck")
				},



				-- NORMAL KICKS
				{
					keys_held = {"backward"},
					keys_sequence = {},
					state = hash("ready"),
					anim = "kick_1",
					playback_rate = 4/60,
					hitbox = "#hitbox_simple",
					hitbox_scale = 2,
					damage_point = 60,
					damage_pos = vmath.vector3(190, 20, 0),
					force = vmath.vector3(15000, 100000, 0),
					damage = 15,
					recovery = 90,
					recovery_type = hash("attack_recovery")
				},
				{
					keys_held = {"forward"},
					keys_sequence = {},
					state = hash("ready"),
					anim = "kick_2",
					hitbox = "#hitbox_simple",
					hitbox_scale = 2,
					damage_point = 1,
					damage_pos = vmath.vector3(91, 38, 0),
					force = vmath.vector3(2000, 30000, 0),
					damage = 2,
					recovery = 16,
					recovery_type = hash("attack_recovery")
				},
				{
					keys_held = {},
					keys_sequence = {},
					state = hash("ready"),
					anim = "kick_3",
					playback_rate = 4/60,
					hitbox = "#hitbox_simple",
					hitbox_scale = 2,
					damage_point = 26,
					damage_pos = vmath.vector3(170, 10, 0),
					force = vmath.vector3(5000, 30000, 0),
					damage = 8,
					recovery = 50,
					recovery_type = hash("attack_recovery")
				},


			}
		}
	},

	
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