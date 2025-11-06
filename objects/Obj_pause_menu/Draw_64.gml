draw_set_color(c_black);
draw_set_alpha(0.1);
draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
draw_set_alpha(1);

draw_text_transformed_outlined(display_get_width()/2, display_get_height()/2-300, string(text), image_xscale*2.5, image_yscale*2.5, 0, text_outline_color, text_color);

