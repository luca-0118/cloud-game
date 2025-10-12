/// @description Button Text Parent

event_inherited();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_alpha(image_alpha);

draw_text_transformed_outlined(x, y, string(text), image_xscale, image_yscale, 0, text_outline_color, text_color);

draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);