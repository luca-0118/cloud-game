spd = 1.4 * global.spd;
maxhp = 13000 * global.enemyhp;
hp = maxhp
dmg = 10000;
death_coins = 100;
path_start(global.current_path,spd,0,1);

if (global.debugmode == true) {
	scr_debug_message("new enemy spawn stats. spd = " + string(spd) + "| HP = " + string(hp));
}