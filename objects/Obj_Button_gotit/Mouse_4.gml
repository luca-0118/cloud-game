// Pause all instances
instance_deactivate_all(true);

// Show trivia pop up
if (object_exists(Obj_trivia_menu))
{
		instance_create_layer(0, 0, "GUI", Obj_trivia_menu);
}
instance_destroy(Obj_Button_gotit);
instance_destroy(Obj_wrong_popup);
global.paused = true;