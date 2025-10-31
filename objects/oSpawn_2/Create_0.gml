global.current_path = Path_level_2 //bruh
global.gamespeed = 1;

//Laat deze difficulty spul zitten, want anders is er een error
//Difficulty is nu 0 (easy) dus als je iets wilt aanpassen doe het voor nu alleen in TD_difficulty 0
if (global.TD_difficulty == 0) {
    global.spd = 1;
    global.enemyhp = 1;
	global.playerhp = 200;
	startcoins = 125
}
//if (global.TD_difficulty == 1) {
//    global.spd = 1.5;
//    global.enemyhp = 1.5;
//	global.playerhp = 150;
//	startcoins = 100
//}
//if (global.TD_difficulty == 2) {
//    global.spd = 20;
//    global.enemyhp = 2;
//	global.playerhp = 100;
//	startcoins = 75;
//}

global.level = 1;
global.rounds = 1;
global.coins = startcoins;
global.paused = false;

spawn_amount = 5;
spawn_count = 0;
spawn_rate = room_speed;
spawn_timer = spawn_rate;
alarm[1] = room_speed * 5;

if (global.debugmode == true) {
scr_debug_message("Tower defence difficulty = " + string(global.TD_difficulty));
scr_debug_message("Trivia difficulty = " + string(global.Trivia_difficulty));
scr_debug_message("enemy speed = " + string(global.spd));
scr_debug_message("enemy hp mult = " + string(global.enemyhp));
scr_debug_message("gamespeed = " + string(global.gamespeed));
}