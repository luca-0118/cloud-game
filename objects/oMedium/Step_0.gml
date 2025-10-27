var _mouse_gui_x = device_mouse_x_to_gui(0);
var _mouse_gui_y = device_mouse_y_to_gui(0);

var hovered = (collision_point(_mouse_gui_x, _mouse_gui_y, object_index, false, false) == id);
var held = (hovered && mouse_check_button(mb_left));
var released = (hovered && mouse_check_button_released(mb_left));

if (released) {
	global.selected_difficulty = button_dif_value;
}

if (held) {
	image_index = 1;
	image_xscale = 0.9;
	image_yscale = 0.9;
} else {
	image_xscale = 1;
	image_yscale = 1;

	if (global.selected_difficulty == button_dif_value) {
		image_index = 2;
	} else {
		image_index = 0;
	}
}
