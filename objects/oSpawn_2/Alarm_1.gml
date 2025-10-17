if(instance_number(oEnemy_lvl2) <= 0)
{
	if (rounds = 1)
	{
		Trivia();
	}
	else
	{
	spawn_count = 0;
	spawn_amount++;
	global.level++;
	global.hp +=10;
	global.spd += 0.1;
	spawn_rate -= 2.5;
	alarm[0] = spawn_rate;
	global.rounds += 1;
	}
}
alarm[1] = room_speed * 5;