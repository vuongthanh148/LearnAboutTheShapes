if(global.stopName == false){
	image_index = 1;
}
else image_index = 0;

if(global.signUp){
	y -= 2;
	if(y < 280){
		y = 280;
		global.loginMoved = true;
		global.Comeback = false;
	}
}
else{
	y += 2;
	if(y >= 330){
		y = 330;
		global.Comeback = true;
		global.loginMoved = false;
	}
}

draw_self();
draw_set_font(loginFont);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_text(x - 200, y, string("Username:  ") + global.loginName );