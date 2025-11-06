/// @description Tower2 Explanation Button
// Draw button background
draw_set_alpha(1); 
if (is_selected) {
    draw_set_color(c_teal);
} else {
    draw_set_color(c_gray);
}
draw_rectangle(x - button_width/2, y - button_height/2, x + button_width/2, y + button_height/2, false);

// Draw button sprite
draw_sprite(sprite_index, 0, x, y);
