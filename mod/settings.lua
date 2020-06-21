return {
	base_y = 225,
	starting_x = {980, 300},
	min_x = 80,
	max_x = 1200,
	shadow_y = 40,
	shadow_alpha = function(y) return (y - 800) / -1000 end,
	shadow_x_scale = function(rot)
		local rotation = math.abs(rot)
		if rotation > 270 then
			rotation = 360 - rotation
		elseif rotation > 180 then
			rotation = rotation - 180
		elseif rotation > 90 then
			rotation = rotation - 2 * (rotation - 90)
		end
		return ((18 * rotation) / 90) + 12
	end,
	shadow_y_scale = 4.8,

	mirror_tint = vmath.vector4(0.7, 0.3, 0.1, 1),

	fighters_min_distance = 100,

	high_pain_threshold = 120,
	sound_pain_threshold = 9,

	jump_force = vmath.vector3(65000, 170000, 0),

	hook_delay = 60,
	hook_stun = 108,

	bike_speed = 13,

	input_history_length = 5,
	combo_input_delay = 60,
	
	recovery_threshold = 0.1,
	recovery_speed = 0.3,

	hurt_bar_delay = 0.5,
	hurt_bar_speed = 0.5,

	round_end_delay = 1.5,
	next_round_delay = 1,

	damage_multiplier = {1, 1},

	lang = 1,
	language_list = {english = 1, czech = 2},
	volume = {music = 0.3, voice = 0.9, sound = 1},

	slider_sensitivity = 5,
}
