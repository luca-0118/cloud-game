if(hp <=0) instance_destroy();

//dit is voor als enemy  aan eht einde van pad is
if (path_position >= 1) {
	global.playerhp -= dmg;
	instance_destroy();
}