function Trivia()
{
        // Pause all instances
        instance_deactivate_all(true);

        // Show trivia pop up
        if (object_exists(Obj_trivia_menu))
            instance_create_layer(0, 0, "Trivia", Obj_trivia_menu);

        global.paused = true;
   
	/*if (antwoord is gekozen)
    {
		Check for correctness
		
		if (last question)
		{
        // Unpause all instances
        instance_activate_all();

        // Remove pause menu
        with (Obj_trivia_menu) instance_destroy();
		with (Obj_Button_correct) instance_destroy();
		with (Obj_Button_incorrect) instance_destroy();

        global.paused = false;
		}
    }*/
}