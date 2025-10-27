function Trivia()
{
		if (!global.paused)
		{
			// Pause all instances
			instance_deactivate_all(true);

			// Show trivia pop up
			if (object_exists(Obj_trivia_menu))
			{
				instance_create_layer(0, 0, "Trivia", Obj_trivia_menu);
			}
			global.paused = true;
		}
}

function Trivia_Unpause() {
    instance_activate_all();
    with (Obj_trivia_menu) instance_destroy();
    global.paused = false;
	}
