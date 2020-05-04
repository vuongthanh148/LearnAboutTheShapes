shader_reset();
image_index = 0;
if(!global.start){
	if(global.hover) image_index = 1;
	else image_index = 0;
	draw_self();
	draw_set_font(loginFont);
	draw_set_color(c_white);
	draw_text(x - string_width("Start")/2 - 7,282 - string_height("Start")/2, string("Start") );
}
