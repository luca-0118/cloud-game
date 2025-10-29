spd = 1 * global.spd;
hp = 100 * global.enemyhp;
dmg = 1;

path_start(global.current_path,spd,0,1);

if (global.debugmode == true) {
	scr_debug_message("new enemy spawn stats. spd = " + string(spd) + "| HP = " + string(hp));
}