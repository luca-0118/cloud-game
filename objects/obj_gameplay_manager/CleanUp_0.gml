/// @description Gameplay Manager
global.paused = false;

if(sprite_exists(global.screen_shot_id))
{
	sprite_delete(global.screen_shot_id);
}