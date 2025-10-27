if(col == c_white){
	instance_destroy();
	instance_create_depth(mouse_x,mouse_y,-1,oTower1);
	show_debug_message([mouse_x, mouse_y]);
}