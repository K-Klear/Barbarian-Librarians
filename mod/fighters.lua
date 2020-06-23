--local FIGHTER = {

global_var = global_var or {}
local FIGHTER = global_var

FIGHTER[hash("lukas")] = {
		atlas = "lukas",
		hitbox_list = {"stand", "duck", "ragdoll", "jump_up", "jump_rotate"},
		name = "Lukas",
		speed_forwards = 5,
		speed_backwards = 3,
		sounds = {
			pain_low = {"lu_pain_low_01", "lu_pain_low_02"},
			pain_high = {"lu_pain_high_01", "lu_pain_high_02"}
		},
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
					force = vmath.vector3(9200, 18000, 0),
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
					damage_pos = vmath.vector3(150, -70, 0),
					force = vmath.vector3(8500, 8200, 0),
					damage = 2,
					recovery = 17,
					recovery_type = hash("attack_recovery_duck")
				},


				-- SPECIAL ATTACKS
				{
					keys_held = {},
					keys_sequence = {hash("punch"), hash("backward"), hash("duck")},
					state = hash("ready"),
					anim = "throw",
					playback_rate = 7/60,
					hitbox = "#hitbox_helmet",
					hitbox_scale = 2,
					damage_point = 35,
					damage_pos = vmath.vector3(225, 150, 0),
					force = vmath.vector3(79500, 6000, 0),
					damage = 11,
					recovery = 120,
					recovery_type = hash("attack_recovery")
				},
				
				{
					keys_held = {},
					keys_sequence = {hash("punch"), hash("backward"), hash("backward")},
					state = hash("ready"),
					anim = "smash",
					playback_rate = 4/60,
					hitbox = "#hitbox_long",
					hitbox_rotation = -45,
					hitbox_scale = 6.4,
					damage_point = 68,
					damage_pos = vmath.vector3(104, 156, 0),
					force = vmath.vector3(20000, 140000, 0),
					damage = 20,
					recovery = 112,
					recovery_type = hash("attack_recovery")
				},



				-- NORMAL ATTACKS
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
					damage_point = 14,
					damage_pos = vmath.vector3(170, -90, 0),
					force = vmath.vector3(11000, 8000, 0),
					damage = 6,
					recovery = 37,
					recovery_type = hash("attack_recovery_duck")
				},

				-- SPECIAL KICKS

				{
					keys_held = {},
					keys_sequence = {hash("kick"), hash("backward"), hash("forward"), hash("duck")},
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
	}
FIGHTER[hash("bohous")] = {
		atlas = "bohous",
		hitbox_list = {"stand", "duck", "ragdoll", "jump_up", "jump_rotate"},
		name = "Bohous",
		speed_forwards = 5,
		speed_backwards = 3,
		sounds = {
			pain_low = {"bo_pain_low_01", "bo_pain_low_02", "bo_pain_low_03", "bo_pain_low_04"},
			pain_high = {"bo_pain_high_01", "bo_pain_high_02", "bo_pain_high_03", "bo_pain_high_04"},
			get_over_here = {"get_over_here"}
		},
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
					hitbox_scale = 2,
					damage_point = 1,
					damage_pos = vmath.vector3(190, -15, 0),
					force = vmath.vector3(8000, 19000, 0),
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
					recovery = 100,
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
	}
FIGHTER[hash("vojta")] = {
		atlas = "vojta",
		hitbox_list = {"stand", "duck", "ragdoll", "jump_up", "jump_rotate"},
		name = "Vojta",
		speed_forwards = 5,
		speed_backwards = 3,
		sounds = {
			pain_low = {"vo_pain_low_01", "vo_pain_low_02", "vo_pain_low_03", "vo_pain_low_04"},
			pain_high = {"vo_pain_high_01", "vo_pain_high_02", "vo_pain_high_03"},
			coffee_splash = {"vo_coffee_splash_01"}
		},
		moves = {
			[hash("jump")] = {
				{
					keys_held = {},
					keys_sequence = {hash("jump"), hash("duck")},
					state = hash("ready"),
					anim = "teleport",
					start = 30,
					duration = 45,
					distance = 122,
					playback_rate = 10/60,
					recovery_type = hash("attack_recovery")
				},
			},
			
			[hash("punch")] = {

				-- JUMPING ATTACKS
				{
					keys_held = {},
					keys_sequence = {},
					state = hash("jump"),
					anim = "punch_jump",
					hitbox = "#hitbox_jump",
					hitbox_rotation = 0,
					hitbox_scale = 1.5,
					damage_point = 1,
					damage_pos = vmath.vector3(146, -40, 0),
					force = vmath.vector3(7200, 18000, 0),
					damage = 8,
					recovery = nil
				},


				-- CROUCHED ATTACKS

				{
					keys_held = {hash("duck"), "backward"},
					keys_sequence = {},
					state = hash("ready"),
					anim = "punch_duck_slow",
					playback_rate = 6/60,
					hitbox = "#hitbox_long",
					hitbox_rotation = -81,
					damage_point = 33,
					damage_pos = vmath.vector3(100, 10, 0),
					force = vmath.vector3(50000, 7000, 0),
					damage = 6,
					recovery = 52,
					recovery_type = hash("attack_recovery_duck")
				},
				{
					keys_held = {hash("duck"), "forward"},
					keys_sequence = {},
					state = hash("ready"),
					anim = "punch_duck_fast",
					hitbox = "#hitbox_long",
					hitbox_rotation = -80,
					damage_point = 1,
					damage_pos = vmath.vector3(100, 0, 0),
					force = vmath.vector3(8000, 8000, 0),
					damage = 3,
					recovery = 25,
					recovery_type = hash("attack_recovery_duck")
				},
				{
					keys_held = {hash("duck")},
					keys_sequence = {},
					state = hash("ready"),
					anim = "punch_duck_medium",
					playback_rate = 8/60,
					hitbox = "#hitbox_long",
					hitbox_rotation = -80,
					damage_point = 15,
					damage_pos = vmath.vector3(100, 0, 0),
					force = vmath.vector3(9000, 11000, 0),
					damage = 5,
					recovery = 45,
					recovery_type = hash("attack_recovery_duck")
				},

				-- FAST PUNCH

				{
					keys_held = {"forward"},
					keys_sequence = {},
					state = hash("ready"),
					anim = "punch_fast",
					hitbox = "#hitbox_long",
					hitbox_rotation = 70,
					hitbox_scale = 1.5,
					damage_point = 2,
					damage_pos = vmath.vector3(157, 112, 0),
					force = vmath.vector3(7000, 11000, 0),
					damage = 5,
					recovery = 35,
					recovery_type = hash("attack_recovery")
				},


				-- SPECIAL ATTACKS
				{
					keys_held = {},
					keys_sequence = {hash("punch"), hash("forward"), hash("backward")},
					state = hash("ready"),
					anim = "spit",
					playback_rate = 8/60,
					hitbox = "#hitbox_spit",
					hitbox_scale = 1.5,
					speed = 7.5,
					damage_point = 60,
					damage_pos = vmath.vector3(160, 140, 0),
					hit_sound = "vo_spit_hit",
					force = vmath.vector3(14700, 5000, 0),
					damage = 9,
					recovery = 140,
					recovery_type = hash("attack_recovery")
				},

				{
					keys_held = {},
					keys_sequence = {hash("punch"), hash("backward"), hash("duck"), hash("forward")},
					state = hash("ready"),
					anim = "throw",
					playback_rate = 5/60,
					hitbox = "#hitbox_coffee",
					hitbox_rotation = -65,
					hitbox_scale = 1.5,
					hitbox_life = 30,
					hitbox_anim = 0.2,
					damage_point = 48,
					damage_pos = vmath.vector3(330, 60, 0),
					damage_sound = "coffee_splash",
					hit_sound = "vo_coffee_hit",
					force = vmath.vector3(21000, 15000, 0),
					damage = 22,
					recovery = 130,
					recovery_type = hash("attack_recovery")
				},
				
				
				
				-- NORMAL ATTACKS

				{
					keys_held = {"backward"},
					keys_sequence = {},
					state = hash("ready"),
					anim = "punch_slow",
					playback_rate = 5/60,
					hitbox = "#hitbox_long",
					hitbox_rotation = -85,
					hitbox_scale = 1.5,
					damage_point = 48,
					damage_pos = vmath.vector3(150, 163, 0),
					force = vmath.vector3(20000, 11000, 0),
					damage = 15,
					recovery = 65,
					recovery_type = hash("attack_recovery")
				},

				{
					keys_held = {},
					keys_sequence = {},
					state = hash("ready"),
					anim = "punch_medium",
					playback_rate = 6/60,
					hitbox = "#hitbox_long",
					hitbox_rotation = -70,
					hitbox_scale = 1.5,
					damage_point = 18,
					damage_pos = vmath.vector3(150, 168, 0),
					force = vmath.vector3(8000, 12000, 0),
					damage = 6,
					recovery = 58,
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
					hitbox_scale = 2,
					damage_point = 1,
					damage_pos = vmath.vector3(130, -120, 0),
					force = vmath.vector3(63000, 12000, 0),
					damage = 11,
					recovery = nil
				},
				



				-- CROUCHED KICKS
				{
					keys_held = {hash("duck"), "forward"},
					keys_sequence = {},
					state = hash("ready"),
					anim = "kick_duck_fast",
					hitbox = "#hitbox_long",
					hitbox_rotation = 80,
					hitbox_scale = 1.5,
					damage_point = 1,
					damage_pos = vmath.vector3(160, -80, 0),
					force = vmath.vector3(14000, 18000, 0),
					damage = 2.5,
					recovery = 25,
					recovery_type = hash("attack_recovery_duck")
				},
				{
					keys_held = {hash("duck"), "backward"},
					keys_sequence = {},
					state = hash("ready"),
					anim = "kick_duck_slow",
					playback_rate = 6/60,
					hitbox = "#hitbox_simple",
					hitbox_scale = 3,
					damage_point = 22,
					damage_pos = vmath.vector3(150, -10, 0),
					force = vmath.vector3(28000, 41000, 0),
					damage = 7,
					recovery = 60,
					recovery_type = hash("attack_recovery_duck")
				},
				{
					keys_held = {hash("duck")},
					keys_sequence = {},
					state = hash("ready"),
					anim = "kick_duck_medium",
					playback_rate = 8/60,
					hitbox = "#hitbox_long",
					hitbox_rotation = 80,
					hitbox_scale = 1.5,
					damage_point = 20,
					damage_pos = vmath.vector3(160, -80, 0),
					force = vmath.vector3(17000, 19000, 0),
					damage = 6,
					recovery = 35,
					recovery_type = hash("attack_recovery_duck")
				},


				
				-- NORMAL KICKS
				{
					keys_held = {"backward"},
					keys_sequence = {},
					state = hash("ready"),
					anim = "kick_slow",
					playback_rate = 5/60,
					hitbox = "#hitbox_simple",
					hitbox_scale = 2.5,
					damage_point = 62,
					damage_pos = vmath.vector3(190, 180, 0),
					force = vmath.vector3(35000, 100000, 0),
					damage = 16,
					recovery = 80,
					recovery_type = hash("attack_recovery")
				},
				{
					keys_held = {"forward"},
					keys_sequence = {},
					state = hash("ready"),
					anim = "kick_fast",
					hitbox = "#hitbox_simple",
					hitbox_scale = 3,
					damage_point = 1,
					damage_pos = vmath.vector3(81, 58, 0),
					force = vmath.vector3(8000, 22000, 0),
					damage = 2,
					recovery = 50,
					recovery_type = hash("attack_recovery")
				},
				{
					keys_held = {},
					keys_sequence = {},
					state = hash("ready"),
					anim = "kick_medium",
					playback_rate = 4/60,
					hitbox = "#hitbox_simple",
					hitbox_scale = 2,
					damage_point = 30,
					damage_pos = vmath.vector3(180, -40, 0),
					force = vmath.vector3(5000, 30000, 0),
					damage = 8,
					recovery = 85,
					recovery_type = hash("attack_recovery")
				},
			}
		}
	}

return FIGHTER