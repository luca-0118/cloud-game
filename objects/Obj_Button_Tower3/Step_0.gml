if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
    global.selected_tower = tower_index;
	global.selected_video = tower_index;
}

// Highlight selected tower
is_selected = (global.selected_tower == tower_index);

