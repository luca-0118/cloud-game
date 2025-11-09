var move_x = lengthdir_x(speed * global.gamespeed, direction);
var move_y = lengthdir_y(speed * global.gamespeed, direction);

x += move_x;
y += move_y;

distance_traveled += point_distance(0, 0, move_x, move_y);
if (distance_traveled >= max_distance) {
    instance_destroy();
}

for (var i = 0; i < array_length(enemy_list); i++) {
    var target = instance_place(x, y, enemy_list[i]);
    if (target != noone) {
        target.hp -= 20;

        if (global.debugmode) {
            scr_debug_message("shot enemy hp = " + string(target.hp));
        }

        instance_destroy();
        break;
    }
}
