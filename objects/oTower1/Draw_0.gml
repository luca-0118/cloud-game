draw_self();

draw_circle(x, y, range, true);

if (instance_exists(objectToShoot)) {
	draw_line(x, y, objectToShoot.x, objectToShoot.y);
}