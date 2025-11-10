spd = 1 * global.spd;
maxhp = 100 * global.enemyhp;
hp = maxhp
dmg = 1;
death_coins = 10;
path_start(global.current_path,spd,0,1);

if (global.debugmode == true) {
	scr_debug_message("new enemy spawn stats. spd = " + string(spd) + "| HP = " + string(hp));
}