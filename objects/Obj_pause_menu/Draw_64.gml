draw_set_color(c_black);
draw_set_alpha(0.1);
draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
draw_set_alpha(1);
draw_text_transformed(display_get_width()/2+20, 300, "Paused", 1, 1, 0);

