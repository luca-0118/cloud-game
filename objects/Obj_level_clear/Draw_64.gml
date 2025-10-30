// Zet kleur en uitlijning
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed_outlined(display_get_gui_width()/2, display_get_gui_height()/2 - 300, string(text), image_xscale*2, image_yscale*2, 0, text_outline_color, text_color);