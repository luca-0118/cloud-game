/// @description Answer button
if (answer_index = correct_index) 
{ 
	// correct antwoord
    // verwijder de vraag uit de array, zodat je hem niet nog eens tegenkomt
    if (variable_global_exists("last_trivia_index")) {
        array_delete(global.trivia_questions, global.last_trivia_index, 0);
        // clear de index
        global.last_trivia_index = undefined;
        global.index = undefined;
    }
	instance_deactivate_all(true);

	with (Obj_trivia_menu) instance_destroy();
    with (Obj_button_answer) instance_destroy();
	
	instance_create_layer(display_get_gui_width()/2, display_get_gui_height()/2, "GUI" ,Obj_right_popup);
} 

else
{
	// toon een popup voor fout antwoord
	instance_deactivate_all(true);
	with (Obj_button_answer) instance_destroy();
	instance_create_layer(display_get_gui_width()/2, display_get_gui_height()/2, "GUI", Obj_wrong_popup);
}
