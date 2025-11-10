spd = 0.7 * global.spd;
maxhp = 250 * global.enemyhp;
hp = maxhp
dmg = 5;
death_coins = 10;

path_start(global.current_path,spd,0,1);

if (global.debugmode == true) {
	scr_debug_message("new enemy spawn stats. spd = " + string(spd) + "| HP = " + string(hp));
}