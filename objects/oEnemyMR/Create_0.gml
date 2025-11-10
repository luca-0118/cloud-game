spd = 1.4 * global.spd;
maxhp = 7000 * global.enemyhp;
hp = maxhp
dmg = 1;
death_coins = 1000000;

audio_play_sound(Snd_MRBEAST, 1, false)

path_start(global.current_path,spd,0,1);

if (global.debugmode == true) {
	scr_debug_message("new enemy spawn stats. spd = " + string(spd) + "| HP = " + string(hp));
}