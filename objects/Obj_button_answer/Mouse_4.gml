/// @description Answer button
if (answer_index == correct_index) 
{ 
    instance_activate_all();

    with (Obj_trivia_menu) instance_destroy();
    with (Obj_button_answer) instance_destroy();


    global.paused = false;
} 

else
{
	// toon een popup
	 instance_create_layer(display_get_gui_width()/2, display_get_gui_height()/2, "Trivia", Obj_wrong_popup);
    
    // Of gewoon het menu sluiten (optioneel)
    instance_activate_all();
    with (Obj_trivia_menu) instance_destroy();
    with (Obj_button_answer) instance_destroy();
    global.paused = false;
}
