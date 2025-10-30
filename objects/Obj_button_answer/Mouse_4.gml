/// @description Answer button
if (answer_index = correct_index) 
{ 
	instance_deactivate_all(true);

	with (Obj_trivia_menu) instance_destroy();
    with (Obj_button_answer) instance_destroy();
	
	instance_create_layer(display_get_gui_width()/2, display_get_gui_height()/2, "GUI" ,Obj_right_popup);
} 

else
{
	// toon een popup
	instance_deactivate_all(true);
	with (Obj_button_answer) instance_destroy();
	instance_create_layer(display_get_gui_width()/2, display_get_gui_height()/2, "GUI", Obj_wrong_popup);
}
