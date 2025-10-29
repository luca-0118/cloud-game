spawn_amount = 5;
spawn_count = 0;
spawn_rate = 1 * room_speed;
alarm[0] = 1;
alarm[1] = room_speed * 5;

global.current_path = Path_level_1 //bruh



//luca Ik heb je hp systeem beetje veranderd, hier is de base value en dat wordt keer de base hp gedaan.
//Dit is zodat de hp multiplier meteen ook op andere enemies komt.
//(deze comment is nu op elke level zodat je het ziet lol)

// oh en als dit te moeilijk is ofzo kan je het ook hier makkelijk de getallen aanpassen.

if (global.selected_difficulty == 0) {
    global.spd = 1;
    global.enemyhp = 1;
	global.playerhp = 200;
	startcoins = 125
}
if (global.selected_difficulty == 1) {
    global.spd = 1.5;
    global.enemyhp = 1.5;
	global.playerhp = 150;
	startcoins = 100
}
if (global.selected_difficulty == 2) {
    global.spd = 20;
    global.enemyhp = 2;
	global.playerhp = 100;
	startcoins = 75;
}

global.level = 1;
global.rounds = 0;
global.coins = startcoins;
global.paused = false;

scr_debug_message("difficulty = " + string(global.selected_difficulty));
scr_debug_message("enemy speed = " + string(global.spd));
scr_debug_message("enemy hp mult = " + string(global.enemyhp));