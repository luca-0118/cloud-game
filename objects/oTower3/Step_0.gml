var en = instance_nearest(x, y, oEnemy);
if (en != noone && point_distance(x, y, en.x, en.y) <= range + 20) {
	shooting = true;
	objectToShoot = en;
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