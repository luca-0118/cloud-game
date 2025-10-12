/// @description Explanation Button

event_inherited();

if mouse_check_button(mb_left)
{
	if (myTextbox == noone) {
	myTextbox = instance_create_layer(mouse_x, mouse_y, "Text", Obj_textbox);
	}
}