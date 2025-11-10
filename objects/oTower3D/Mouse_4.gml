if(col == c_white){
	audio_play_sound(Snd_OK, 1, false)
	tdata = [mouse_x,mouse_y,-1,oTower3];
	instance_destroy();
	instance_create_depth(mouse_x,mouse_y,-1,oTower3);
	if (global.is_in_MP){ 
		global.type_buffer = buffer_create(256, buffer_grow, 1);
		buffer_seek(global.type_buffer, buffer_seek_start, 0);
		buffer_write(global.type_buffer , buffer_u16, 2);
		buffer_write(global.type_buffer, buffer_string, tdata)
	}
}
