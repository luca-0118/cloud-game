x = mouse_x;
y = mouse_y;

if(place_meeting(x,y,oReg) || place_meeting(x,y,oTowerparent)) {
	col = c_red;
	image_index = 1;
} else {
	col = c_white;
	image_index = 0;
}
