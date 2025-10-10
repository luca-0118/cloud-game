function draw_text_transformed_outlined(_x, _y, _string, _xscale, _yscale, _angle, _outline_color, _string_color)
{
	draw_set_color(_outline_color);
	
	draw_text_transformed(_x + 1,	_y + 1,  _string, _xscale, _yscale, _angle);  
	draw_text_transformed(_x - 1,	_y - 1,  _string, _xscale, _yscale, _angle);  
	draw_text_transformed(_x,		_y + 1,  _string, _xscale, _yscale, _angle);  
	draw_text_transformed(_x + 1,   _y,		 _string, _xscale, _yscale, _angle);  
	draw_text_transformed(_x,		_y - 1,  _string, _xscale, _yscale, _angle);  
	draw_text_transformed(_x - 1,   _y,		 _string, _xscale, _yscale, _angle);  
	draw_text_transformed(_x - 1,	_y	+ 1, _string, _xscale, _yscale, _angle);  
	draw_text_transformed(_x + 1,	_y	- 1, _string, _xscale, _yscale, _angle);  
	
	draw_set_color(_string_color);  
	
	draw_text_transformed(_x, _y, _string, _xscale, _yscale, _angle);  
	
}