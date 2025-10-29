spd = 1 * global.spd
hp = 100 * global.enemyhp;
dmg = 1;

path_start(Path_level_1,spd,0,1);

scr_debug_message("new enemy spawn stats. spd = " + string(spd) + "HP = " + string(hp));