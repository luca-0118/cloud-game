if global.gamespeed == 1 {
	global.gamespeed = 2;
}
else if global.gamespeed == 2 {
	global.gamespeed = 1;
}
scr_debug_message("gamespeed = " + string(global.gamespeed));
