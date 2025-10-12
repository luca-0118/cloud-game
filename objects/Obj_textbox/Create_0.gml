/// @description Tekstbox

text = "Welkom! Dit spel is een combinatie van trivia en towerdefense. De enemies die je tegenkomt zijn vijanden in de vorm van problemen die je tegenkomt in cloud omgevingen. De torens representeren een beroep en zijn effectief tegen de problemen waar zij binnen hun beroep tegenaan lopen. Door de trivia te spelen ontgrendel je steeds nieuwe torens.";

boxWidth = sprite_get_width(sBox);
stringHeight = string_height(text);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);