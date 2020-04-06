if(global.stopPass == false){
	image_blend = c_navy;
}
else image_blend = c_white;

draw_self();
draw_set_font(loginFont);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_center); 
draw_text(330,323, string("Password:   ") + temp );
