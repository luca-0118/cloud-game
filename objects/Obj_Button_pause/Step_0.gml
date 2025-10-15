/// @description Pause Button
if(keyboard_check_pressed(vk_space)) // or any other way of pausing
{
    // Toggle paused
    paused = !paused;
 
    if(paused)
      screen_copied = false;
    else
    {
        // Destroy pause menu
        with(obj_menu)
            instance_destroy();
       
        // Delete pause sprite
        sprite_delete(pause_sprite);
   
        // Enabled all instances
        instance_activate_all();
    }
}