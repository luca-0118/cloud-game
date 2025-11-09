spd = 0.7 * global.spd;
hp = 250 * global.enemyhp;
dmg = 5;
death_coins = 15;

path_start(global.current_path,spd,0,1);

if (global.debugmode == true) {
	scr_debug_message("new enemy spawn stats. spd = " + string(spd) + "| HP = " + string(hp));
}