/// @description Button Parent

var _mouse_gui_x = device_mouse_x_to_gui(0);

var _mouse_gui_y = device_mouse_y_to_gui(0);

if (collision_point(_mouse_gui_x, _mouse_gui_y, object_index, false, false) == id)
{
	image_index = 1;
	
	if mouse_check_button_pressed(mb_left)
	{
		image_xscale = 1;
		image_yscale = 1;
	}
	
	if mouse_check_button_released(mb_left)
	{
		image_index = 0;
		
		image_xscale = 1;
		image_yscale = 1;
		
		event_user(0);
	}
}

else
{
	image_index = 0;
	
	image_xscale = 1;
	image_yscale = 1;
}

	
	