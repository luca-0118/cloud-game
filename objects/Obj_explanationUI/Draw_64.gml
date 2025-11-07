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
    var tx = panel_x1 + 450;
    var ty = panel_y1 + 420;

    draw_text(tx, ty, "Tower: " + string(current_tower.name));
    draw_text(tx, ty + 50, "Description: " + string(current_tower.description));
    draw_text(tx, ty + 100, "Attack: " + string(current_tower.attack));
    draw_text(tx, ty + 150, "Speed: " + string(current_tower.speed));

    if (video_opened) {
        var data = video_draw();
        var status = data[0];

        if (status == 0) {
            var surface = data[1];
            draw_surface(surface, panel_x1 + 175, panel_y1 + 50);
        }
        else if (status == 1) {
            video_close();
            video_open(current_tower.video_explanation);
            video_draw(); 
        }
    }
}


