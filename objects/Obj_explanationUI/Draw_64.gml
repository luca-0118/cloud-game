/// Obj_explanationUI Draw GUI
var panel_x1 = room_width * 0.1;   
var panel_y1 = room_height * 0.15;  
var panel_x2 = room_width * 0.55;   
var panel_y2 = room_height * 0.8;  

// Draw panel
draw_set_color(c_teal);
draw_rectangle(panel_x1, panel_y1, panel_x2, panel_y2, true);

// Draw panel border
draw_set_color(c_teal);
draw_rectangle(panel_x1, panel_y1, panel_x2, panel_y2, false);

// Draw tower info if selected
if (current_tower != noone) {
    draw_set_color(c_black);
    draw_text(panel_x1 + 450, panel_y1 + 420, "Tower: " + current_tower.name);
    draw_text(panel_x1 + 450, panel_y1 + 470, "Description: " + current_tower.description);
    draw_text(panel_x1 + 450, panel_y1 + 520, "Attack: " + string(current_tower.attack));
    draw_text(panel_x1 + 450, panel_y1 + 570, "Speed: " + string(current_tower.speed));

    // Draw tower animation
	
	video_open(current_tower.video_explanation)
	var data = video_draw();
	var status = data[0];

	if (status == 0)
	{
		var surface = data[1];

		draw_surface(surface, panel_x1 + 175, panel_y1 + 50);
	}
	
	if (current_video != current_tower){
		video_close();
	}
}


