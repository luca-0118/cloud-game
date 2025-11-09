global.current_path = Path_level_3 //bruh
global.gamespeed = 1;

//Laat deze difficulty spul zitten, want anders is er een error
//Difficulty is nu 0 (easy) dus als je iets wilt aanpassen doe het voor nu alleen in TD_difficulty 0
if (global.TD_difficulty == 0) {
    global.spd = 1;
    global.enemyhp = 1;
	global.playerhp = 200;
	startcoins = 125
}
if (global.TD_difficulty == 1) {
    global.spd = 1.1;
	global.enemyhp = 1;
	global.playerhp = 150;
	startcoins = 100
}
if (global.TD_difficulty == 2) {
    global.spd = 1.2;
	global.enemyhp = 1;
	global.playerhp = 100;
	startcoins = 75;
}

global.level = 0;
global.rounds = 1;
global.coins = startcoins;
global.paused = false;

spawn_amount = 5;
spawn_count = 0;
spawn_rate = room_speed;
spawn_timer = spawn_rate;
alarm[1] = room_speed * 5;

round_check = [3,6,9,12,15,18,21,24,27,30,33,36,39,42,45,48,100];
i = 0;


waves = [
	[ //1
		[oEnemy, 10, room_speed * 2]
	],
	[ //2
		[oEnemy, 15, room_speed * 1]
	],
	[ //3
		[oEnemy2, 6, room_speed * 1.5],[oEnemy, 8, room_speed * 1]
	],
	[ //4 IK HEB DE RONDES NA DEZE NIET VERDER GEMAAKT
		[oEnemy, 5, room_speed * 5]
	],
	[ //5
		[oEnemy, 5, room_speed * 0.8]
	],
	[ //6
		[oEnemy, 10, room_speed * 0.5]
	],
	[ //7
		[oEnemy, 10, room_speed * 1]
	],
	[ //8
		[oEnemy, 5, room_speed * 0.8]
	],
	[ //9
		[oEnemy, 10, room_speed * 0.5]
	],
	[ //10
		[oEnemy, 10, room_speed * 1]
	],
	[ //11
		[oEnemy, 5, room_speed * 0.8]
	],
	[ //12
		[oEnemy, 10, room_speed * 0.5]
	],
	[ //13
		[oEnemy, 10, room_speed * 1]
	],
	[ //14
		[oEnemy, 5, room_speed * 0.8]
	],
	[ //15
		[oEnemy, 10, room_speed * 0.5]
	],
	[ //16
		[oEnemy, 10, room_speed * 1]
	],
	[ //17
		[oEnemy, 5, room_speed * 0.8]
	],
	[ //18
		[oEnemy, 10, room_speed * 0.5]
	],
	[ //19
		[oEnemy, 10, room_speed * 1]
	],
	[ //20
		[oEnemy, 5, room_speed * 0.8]
	],
	[ //21
		[oEnemy, 10, room_speed * 0.5]
	],
	[ //22
		[oEnemy, 10, room_speed * 1]
	],
	[ //23
		[oEnemy, 5, room_speed * 0.8]
	],
	[ //24
		[oEnemy, 10, room_speed * 0.5]
	],
	[ //25
		[oEnemy, 10, room_speed * 1]
	],
	[ //26
		[oEnemy, 5, room_speed * 0.8]
	],
	[ //27
		[oEnemy, 10, room_speed * 0.5]
	],
	[ //28
		[oEnemy, 10, room_speed * 1]
	],
	[ //29
		[oEnemy, 5, room_speed * 0.8]
	],
	[ //30
		[oEnemy, 10, room_speed * 0.5]
	]
];

current_wave = 0;
wave_active = false;



if (global.debugmode == true) {
scr_debug_message("Tower defence difficulty = " + string(global.TD_difficulty));
scr_debug_message("Trivia difficulty = " + string(global.Trivia_difficulty));
scr_debug_message("enemy speed = " + string(global.spd));
scr_debug_message("enemy hp mult = " + string(global.enemyhp));
scr_debug_message("gamespeed = " + string(global.gamespeed));
}
