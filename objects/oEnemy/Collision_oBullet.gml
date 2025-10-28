hp -= 20;

if hp <= 0 {
	global.coins += 20;
	instance_destroy()
}

with(other) instance_destroy();