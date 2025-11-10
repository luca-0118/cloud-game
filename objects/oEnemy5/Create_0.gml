spd = 1.2 * global.spd;
maxhp = 2000 * global.enemyhp;
hp = maxhp
dmg = 50;
death_coins = 50;

path_start(global.current_path,spd,0,1);

if (global.debugmode == true) {
	scr_debug_message("new enemy spawn stats. spd = " + string(spd) + "| HP = " + string(hp));
}