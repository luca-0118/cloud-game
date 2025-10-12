hp -= 20;

if hp <= 0 {
	global.coins += 20;
}

with(other) instance_destroy();