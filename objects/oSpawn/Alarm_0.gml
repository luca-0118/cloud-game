if(spawn_count < spawn_amount){
	instance_create_depth(x,y,-1,oEnemy);
	instance_create_depth(x,y,-1,oEnemy2test); //ik ga waarschijnlijk het hele spawn systeem beetje aanpassen (mukdembu)
	spawn_count++;
	alarm[0] = spawn_rate;
	
} 