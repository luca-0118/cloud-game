var nearest_enemy = noone;

for (var i = 0; i < array_length(enemy_list); i++) {
	var en = instance_nearest(x, y, enemy_list[i]);
	if (en != noone) {
		if (nearest_enemy == noone || point_distance(x, y, en.x, en.y) < point_distance(x, y, nearest_enemy.x, nearest_enemy.y)) {
			nearest_enemy = en;
		}
	}
}

if (nearest_enemy != noone && point_distance(x, y, nearest_enemy.x, nearest_enemy.y) <= range + 20) {
	shooting = true;
	objectToShoot = nearest_enemy;
} else {
	shooting = false;
	objectToShoot = noone;
}

if (shooting) {
	fire_timer -= global.gamespeed;

	if (fire_timer <= 0) {
		var bullet = instance_create_depth(x, y, -9, oBullet);
		bullet.speed = 10;
		bullet.direction = point_direction(x, y, objectToShoot.x, objectToShoot.y);

		fire_timer = fire_rate;
	}
} else {
	fire_timer = 0;
}
