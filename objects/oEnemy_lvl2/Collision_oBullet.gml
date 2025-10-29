hp -= 20;
scr_debug_message("shot enemy hp = " + string(hp));

if hp <= 0 {
	global.coins += 20;
}

with(other) instance_destroy();