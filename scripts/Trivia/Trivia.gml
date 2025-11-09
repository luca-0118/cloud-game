function Trivia()
{
	//if (global.is_in_MP) { return } else {
		if (!global.paused)
		{
			// Pause all instances
			instance_deactivate_all(true);
			instance_deactivate_object(oSpawn);
			instance_deactivate_object(oSpawn_2);
			instance_deactivate_object(oSpawn_3);
			instance_deactivate_object(oSpawn_4);
			instance_deactivate_object(oTowerbord);
			// Show trivia pop up
			if (object_exists(Obj_trivia_menu))
			{
				instance_create_layer(0, 0, "GUI", Obj_trivia_menu);
			}
			global.paused = true;
		}
	}
//}

function Trivia_Unpause() {
    instance_activate_all();
    with (Obj_trivia_menu) instance_destroy();
	with (Obj_right_popup) instance_destroy();
	with (Obj_wrong_popup) instance_destroy();
	with (Obj_button_answer) instance_destroy();
	with (Obj_Button_next_wave) instance_destroy();
	instance_activate_object(oTowerbord);
    global.paused = false;
	}
