/// @description Answer button
draw_self();

// Tekst centreren
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed_outlined(x, y-30, string(answer_text), image_xscale*1, image_yscale*1, 0, text_outline_color, text_color);
