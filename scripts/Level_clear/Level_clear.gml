function Level_clear()
{
	if (!global.paused)
		{
			// Pause all instances
			instance_deactivate_all(true);

			// Show trivia pop up
			if (object_exists(Obj_level_clear))
			{
				instance_create_layer(0, 0, "GUI", Obj_level_clear);
			}
			global.paused = true;
		}
}