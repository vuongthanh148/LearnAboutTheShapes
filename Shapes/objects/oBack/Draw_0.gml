if(hover){
	s += 0.005;
	if(s >= 1.05) s = 1.05;
}
else{
	s -= 0.005;
	if(s <= 1) s = 1;
}

image_xscale = s;
image_yscale = s;

if(global.loginMoved){
	draw_self();
	draw_set_color(c_white);
	draw_set_font(loginFont);
	draw_text_transformed(x - string_width("Back")/2 , 461, string("Back"), s, s, 0);
}

