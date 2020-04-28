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

if(global.signUp){
	if(x < 645) x += 12;
	else x = 645;
}
else{
	if(x>385) x -= 12;
	else x = 385;
}

draw_self();
draw_set_color(c_white);
draw_set_font(loginFont);
draw_text_transformed(x - string_width("Sign Up")/2 , 461, string("Sign Up"), s, s, 0);