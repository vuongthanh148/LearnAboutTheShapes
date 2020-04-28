if(!global.signUp and global.Comeback){
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
	draw_self();
	draw_set_color(c_white);
	draw_set_font(loginFont);
	draw_text_transformed(x - string_width("Login")/2, 461, string("Login"), s, s, 0);
}