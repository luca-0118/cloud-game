if(instance_number(oEnemy) <= 0)
{
	if (rounds = 50)
	{
	Level_clear();
	}
	if (rounds = round_check[i])
	{
		//Trivia();
		i++;
	}
	else
	{
	spawn_count = 0;
	spawn_amount++;
	global.level++;
	// global.hp +=10; //idk als dit enemy hp hoort te zijn of player hp. dus het crashed nu.
	global.spd += 0.1;
	spawn_rate -= 2.5;
	alarm[0] = spawn_rate;
	global.rounds += 1;
	}
}
alarm[1] = room_speed * 5;