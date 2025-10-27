/// @description Answer button
// Knop achtergrond
draw_set_color(c_white);
draw_rectangle(x - btn_width/2, y - btn_height/2, x + btn_width/2, y + btn_height/2, false);

// Tekst centreren
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, answer_text);