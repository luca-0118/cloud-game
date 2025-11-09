if global.gamespeed == 1 {
	global.gamespeed = 2;
}
else if global.gamespeed == 2 {
	global.gamespeed = 1;
}

if (global.debugmode == true) {
	scr_debug_message("gamespeed = " + string(global.gamespeed));
}