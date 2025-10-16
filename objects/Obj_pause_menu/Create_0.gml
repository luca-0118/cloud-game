/// @description Pause menu
// Create two buttons
instance_create_layer(display_get_width()/2+350, 500, "GUI", Obj_Button_resume);
instance_create_layer(display_get_width()/2-350, 500, "GUI", Obj_Button_quit_to_menu);
