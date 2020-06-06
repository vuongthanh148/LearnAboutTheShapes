if(hover){
	scale += 0.005;
	if(scale >= 1.05) scale = 1.05;
}
else{
	scale -= 0.005;
	if(scale <= 1) scale = 1;
}

image_xscale = scale;
image_yscale = scale;

if(global.loginMoved){
	draw_self();
	draw_set_color(c_white);
	draw_set_font(loginFont);
	draw_text_transformed(x - string_width("Back")/2 , 461, string("Back"), scale, scale, 0);
}

