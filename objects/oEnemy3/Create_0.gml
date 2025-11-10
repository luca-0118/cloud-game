spd = 2.2 * global.spd;
maxhp = 100 * global.enemyhp;
hp = maxhp
dmg = 2;
death_coins = 5;

path_start(global.current_path,spd,0,1);

if (global.debugmode == true) {
	scr_debug_message("new enemy spawn stats. spd = " + string(spd) + "| HP = " + string(hp));
}