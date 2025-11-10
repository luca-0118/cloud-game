spd = 1.5 * global.spd;
maxhp = 3000 * global.enemyhp;
hp = maxhp
dmg = 20;
death_coins = 200;
path_start(global.current_path,spd,0,1);

if (global.debugmode == true) {
	scr_debug_message("new enemy spawn stats. spd = " + string(spd) + "| HP = " + string(hp));
}