if (global.is_in_MP) {
	global.is_in_MP = false;
} else {
	global.is_in_MP = true;
	host_game();
}
