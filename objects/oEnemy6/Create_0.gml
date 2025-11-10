spd = 2.8 * global.spd;
maxhp = 300 * global.enemyhp;
hp = maxhp
dmg = 10;
death_coins = 20;

path_start(global.current_path,spd,0,1);

if (global.debugmode == true) {
	scr_debug_message("new enemy spawn stats. spd = " + string(spd) + "| HP = " + string(hp));
}