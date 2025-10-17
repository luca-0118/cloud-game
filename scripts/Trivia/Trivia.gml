//function Trivia()
{
		//if (!global.paused)
		{
			// Pause all instances
			//instance_deactivate_all(true);

			// Show trivia pop up
		//	if (object_exists(Obj_trivia_menu))
			{
		//		instance_create_layer(0, 0, "Trivia", Obj_trivia_menu);
			}
		//	global.paused = true;
		}
}

//function Button_correct()
{
	//if (Question_1 = "Correct")
	{
        // Unpause all instances
       // instance_activate_all();

        // Remove pause menu
       // with (Obj_trivia_menu) instance_destroy();
		//with (Obj_Button_correct) instance_destroy();
		//with (Obj_Button_incorrect) instance_destroy();

      //  global.paused = false;
	}
	//else
	{
		//instance_create_layer(0,0 "Trivia", Obj_wrong_popup);	
	}
}

//function Button_incorrect()
{
	//if (Question_1 - "Incorrect")
		{
        // Unpause all instances
        //instance_activate_all();
//
        // Remove pause menu
      //  with (Obj_trivia_menu) instance_destroy();
		//with (Obj_Button_correct) instance_destroy();
	//	with (Obj_Button_incorrect) instance_destroy();

     //   global.paused = false;
		}
}