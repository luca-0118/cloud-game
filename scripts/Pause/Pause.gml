function pause_or_unpause_game()
{
	with (obj_gameplay_manager)
	{
		if (!paused)
		{
			if (!sprite_exists(global.screen_shot_id))
			{
				global.screen_shot_id = sprite_create_from_surface(application_surface, 0, 0, 1920, 1080, false, false, 0, 0)
			}
			
			instance_deactivate_all(true);
			
			pause_sequence = layer_sequence_create("Sequences", 0, 0, seq_popup_pause);
			
			paused = true;
		}
		else
		{
			if (sprite_exists(global.screen_shot_id))
			{
				sprite_delete(global.screen_shot_id);
			}
			
			instance_activate_all();
			
			layer_sequence_destroy(pause_sequence);
			
			paused = false;
		}
	}
}