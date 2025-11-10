spd = 1.5 * global.spd;
maxhp = 1000 * global.enemyhp;
hp = maxhp
dmg = 20;
death_coins = 20;
path_start(global.current_path,spd,0,1);

if (global.debugmode == true) {
	scr_debug_message("new enemy spawn stats. spd = " + string(spd) + "| HP = " + string(hp));
}