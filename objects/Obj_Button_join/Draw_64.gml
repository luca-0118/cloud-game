draw_self();

// Tekst centreren
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed_outlined(x, y-30, string(text), image_xscale*2, image_yscale*2, 0, text_outline_color, text_color);