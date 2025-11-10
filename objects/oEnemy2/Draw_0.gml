draw_sprite(sprite_index, image_index, x, y);

bar_width = 40;
bar_height = 5;
bar_x = x - bar_width/2;
bar_y = y - sprite_height/2;

hp_percent = hp / maxhp;

draw_set_color(c_white);
draw_rectangle(bar_x - 1, bar_y - 1, bar_x + bar_width + 1, bar_y + bar_height + 1, false);

draw_set_color(c_red);
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);

draw_set_color(c_green);
draw_rectangle(bar_x, bar_y, bar_x + bar_width * hp_percent, bar_y + bar_height, false);

draw_set_color(c_white);
