if (global.is_in_MP) {
	show_debug_message(global.joined)
	if (global.joined) {
		global.type_buffer = buffer_create(256, buffer_grow, 1);
		buffer_seek(global.type_buffer, buffer_seek_start, 0);
		buffer_write(global.type_buffer , buffer_u16, 1);
		buffer_write(global.type_buffer , buffer_string,"level1");
		room_goto(level1)
	} else { 
		return 
	}
} else {
	room_goto(level1);
}
