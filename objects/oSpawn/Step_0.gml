rounds = global.rounds;
spawn_timer -= global.gamespeed;


if (!wave_active) {
	var prev_wave_done = true;
	if (current_wave > 0) {
		var prev_wave_data = waves[current_wave - 1];
		for (var j = 0; j < array_length(prev_wave_data); j++) {
			var enemy_obj = prev_wave_data[j][0];
			if (instance_number(enemy_obj) > 0) {
				prev_wave_done = false;
				break;
			}
		}
	}

	if (current_wave < array_length(waves) && prev_wave_done) {
		wave_data = waves[current_wave];
		enemy_group_index = 0;
		spawn_count = 0;
		spawn_timer = 0;
		wave_active = true;
	} else if (current_wave >= array_length(waves)) {
		Level_clear();
	}
}

if (wave_active) {
	if (enemy_group_index < array_length(wave_data)) {
		var e = wave_data[enemy_group_index];
		var obj = e[0];
		var amount = e[1];
		var delay = e[2];

		if (spawn_timer <= 0 && spawn_count < amount) {
			instance_create_depth(x, y, -1, obj);
			spawn_count++;
			spawn_timer = delay;
		}

		spawn_timer -= global.gamespeed;

		if (spawn_count >= amount) {
			enemy_group_index++;
			spawn_count = 0;
			spawn_timer = 0;
		}
	} else {
		var wave_done = true;
		for (var j = 0; j < array_length(wave_data); j++) {
			if (instance_number(wave_data[j][0]) > 0) {
				wave_done = false;
				break;
			}
		}

		if (wave_done) {
			current_wave++;
			global.rounds++;
			wave_active = false;
		}
	}
}

	if (rounds = 50)
	{
	Level_clear();
	}

if (rounds = round_check[i])
	{
		Trivia();
		i++;
	}

if (global.level == 0) {
	Trivia();
	global.level++;
}
