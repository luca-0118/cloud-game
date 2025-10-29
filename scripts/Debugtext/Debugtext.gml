function scr_debug_message(_text)
{
    if (!variable_global_exists("debug_messages")) {
        global.debug_messages = ds_list_create();
    }

    var msg = {
        text: _text,
        time: current_time,
        duration: 5000
    };

    ds_list_add(global.debug_messages, msg);
}