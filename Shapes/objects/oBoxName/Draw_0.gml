
if(check){
	image_index = 1;
}
else image_index = 0;

draw_self();
draw_set_font(loginFont); 
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_text(x - 200, y, string("Full Name:  ") + global.fullName);
