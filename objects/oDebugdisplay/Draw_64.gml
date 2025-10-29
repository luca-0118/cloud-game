var margin = 8;
var line_height = 18;
var fade_time = 1000;

var stack = display_get_gui_height() - margin;

var list_size = ds_list_size(global.debug_messages);
for (var i = list_size - 1; i >= 0; i--) {
    var msg = ds_list_find_value(global.debug_messages, i);
    if (!is_struct(msg)) continue;

    var age = current_time - msg.time;
    if (age >= msg.duration) {
        ds_list_delete(global.debug_messages, i);
        continue;
    }

    var alpha = 1;
    var time_left = msg.duration - age;
    if (time_left < fade_time) {
        alpha = clamp(time_left / fade_time, 0, 1);
    }

    draw_set_alpha(alpha);

    draw_set_halign(fa_left);
    draw_set_valign(fa_bottom);
    draw_text(margin, stack, msg.text);

    stack -= line_height;
}

draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
