var move_x = lengthdir_x(speed * global.gamespeed, direction);
var move_y = lengthdir_y(speed * global.gamespeed, direction);

x += move_x;
y += move_y;

distance_traveled += point_distance(0, 0, move_x, move_y);
if (distance_traveled >= max_distance) {
    instance_destroy();
}

var target = instance_place(x, y, oEnemy);
if (target != noone) {
    target.hp -= 20;
	
    if (global.debugmode) {
        scr_debug_message("shot enemy hp = " + string(target.hp));
    }

    instance_destroy();
}