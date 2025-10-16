function pause_or_unpause_game()
{
    if (!global.paused)
    {
        // Pause all instances
        instance_deactivate_all(true); // true = keep GUI active

        // Show pause menu
        if (object_exists(Obj_pause_menu))
            instance_create_layer(0, 0, "GUI", Obj_pause_menu);
			with (Obj_Button_pause) instance_destroy();

        global.paused = true;
    }
    else
    {
        // Unpause all instances
        instance_activate_all();

        // Remove pause menu
        with (Obj_pause_menu) instance_destroy();
		with (Obj_Button_resume) instance_destroy();
		with (Obj_Button_quit_to_menu) instance_destroy();
		instance_create_layer(1472, 62, "HUD", Obj_Button_pause);

        global.paused = false;
    }
}