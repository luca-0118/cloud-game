if (variable_global_exists("debug_messages")) {
    ds_list_destroy(global.debug_messages);
    variable_global_delete("debug_messages");
}
