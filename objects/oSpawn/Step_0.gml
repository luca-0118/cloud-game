rounds = global.rounds;

spawn_timer -= global.gamespeed;

if (spawn_timer <= 0 && spawn_count < spawn_amount) {
	instance_create_depth(x, y, -1, oEnemy);
	spawn_count++;
	spawn_timer = spawn_rate;
}

if (global.level = 0)
{
	Trivia();
	instance_deactivate_object(oSpawn);
	global.level++;
}