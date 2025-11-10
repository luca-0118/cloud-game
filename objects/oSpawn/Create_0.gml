global.current_path = Path_level_1 //bruh
global.gamespeed = 1;
global.victory_triggered = false;
audio_stop_all();
audio_play_sound(Snd_Field_of_Hopes_and_Dreams, 1, true);

//Laat deze difficulty spul zitten, want anders is er een error
//Difficulty is nu 0 (easy) dus als je iets wilt aanpassen doe het voor nu alleen in TD_difficulty 0
if (global.TD_difficulty == 0) {
    global.spd = 1;
    global.enemyhp = 0.95;
	global.playerhp = 200;
	startcoins = 150
}
if (global.TD_difficulty == 1) {
    global.spd = 1.1;
    global.enemyhp = 1;
	global.playerhp = 200;
	startcoins = 125
}
if (global.TD_difficulty == 2) {
    global.spd = 1.2;
	global.enemyhp = 1.10;
	global.playerhp = 100;
	startcoins = 100;
}

global.level = 0;
global.rounds = 1;
global.coins = startcoins;
global.paused = false;

spawn_amount = 5;
spawn_count = 0;
spawn_rate = room_speed;
spawn_timer = spawn_rate;

current_wave = 0;
wave_active = false;

round_check = [0,3,6,9,12,15,18,21,24,27,30,33,36,39,42,45,48,100];
r = 0;
i = 0;

waves = [
	[ //1
		[oEnemy, 10, room_speed * 2]
	],
	[ //2
		[oEnemy, 15, room_speed * 1]
	],
	[ //3
		[oEnemy3, 6, room_speed * 1],
	],
	[ //4 
		[oEnemy, 6, room_speed * 1.6],[oEnemy3, 6, room_speed * 1]
	],
	[ //5
		[oEnemy2, 6, room_speed * 1.5],
	],
	[ //6
		[oEnemy2, 5, room_speed * 1.2],[oEnemy, 6, room_speed * 1.8],[oEnemy3, 10, room_speed * 1]
	],
	[ //7
		[oEnemy2, 10, room_speed * 1],[oEnemy3, 10, room_speed * 0.7]
	],
	[ //8
		[oEnemy4, 12, room_speed * 0.6]
	],
	[ //9
		[oEnemy4, 5, room_speed * 0.5],[oEnemy3, 10, room_speed * 0.7]
	],
	[ //10
		[oEnemy2, 2, room_speed * 1],[oEnemy3, 10, room_speed * 0.3],[oEnemy2, 2, room_speed * 1],[oEnemy3, 10, room_speed * 0.3]
	],
	[ //11
		[oEnemy5, 1, room_speed * 1]
	],
	[ //12
		[oEnemy6, 5, room_speed * 1]
	],
	[ //13
		[oEnemyBIG, 3, room_speed * 0.8],[oEnemy6, 6, room_speed * 1]
	],
	[ //14
		[oEnemyBIG, 4, room_speed * 1],[oEnemy6, 4, room_speed * 0.8],[oEnemyBIG, 2, room_speed * 3],[oEnemy6, 3, room_speed * 0.8]
	],
	[ //15
		[oEnemyRedbloon, 1, room_speed * 1]
	],
	[ //16
		[oEnemyBIG, 4, room_speed * 2],[oEnemy6, 5, room_speed * 2],[oEnemyRedbloon, 2, room_speed * 5],[oEnemy4, 20, room_speed * 0.5]
	],
	[ //17
		[oEnemyRedbloon, 1, room_speed * 2],[oEnemy5, 3, room_speed * 2],[oEnemyRedbloon, 1, room_speed * 2],[oEnemy5, 3, room_speed * 2]
	],
	[ //18
		[oBFB, 1, room_speed * 1],
	],
	[ //19
		[oEnemyCamo, 3, room_speed * 1]
	],
	[ //20
		[oEnemy5, 6, room_speed * 3],[oBFB, 1, room_speed * 4],[oEnemyRedbloon, 2, room_speed * 5]
	],
	[ //21
		[oEnemyMR, 1, room_speed * 1]
	],
	[ //22
		[oEnemyZomg, 1, room_speed * 1]
	]//,
	//[ //21
	//	[oEnemy, 10, room_speed * 0.5]
	//],
	//[ //22
	//	[oEnemy, 10, room_speed * 1]
	//],
	//[ //23
	//	[oEnemy, 5, room_speed * 0.8]
	//],
	//[ //24
	//	[oEnemy, 10, room_speed * 0.5]
	//],
	//[ //25
	//	[oEnemy, 10, room_speed * 1]
	//],
	//[ //26
	//	[oEnemy, 5, room_speed * 0.8]
	//],
	//[ //27
	//	[oEnemy, 10, room_speed * 0.5]
	//],
	//[ //28
	//	[oEnemy, 10, room_speed * 1]
	//],
	//[ //29
	//	[oEnemy, 5, room_speed * 0.8]
	//],
	//[ //30
	//	[oEnemy, 10, room_speed * 0.5]
	//]
];



if (global.debugmode == true) {
scr_debug_message("Tower defence difficulty = " + string(global.TD_difficulty));
scr_debug_message("Trivia difficulty = " + string(global.Trivia_difficulty));
scr_debug_message("enemy speed = " + string(global.spd));
scr_debug_message("enemy hp mult = " + string(global.enemyhp));
scr_debug_message("gamespeed = " + string(global.gamespeed));
}
