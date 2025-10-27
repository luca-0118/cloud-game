draw_text_transformed(display_get_width()/2+20, 300, "Trivia", 1, 1, 0);

// Zet kleur en uitlijning
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Teken de vraag in het midden van het scherm
draw_text(display_get_gui_width()/2, display_get_gui_height()/2 - 100, question_text);
