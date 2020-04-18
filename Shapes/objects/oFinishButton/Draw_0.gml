if(global.finish){
	if(global.enterButton == false) draw_roundrect_colour(426, 470, 604, 520, $e5c66e, $e5c66e , false);
	else if(global.enterButton == true) draw_roundrect_colour(426, 470, 604, 520, $e2ba50, $e2ba50 , false);
	draw_set_font(finish);
	draw_set_color(c_white);
	draw_text(515 - string_width("Go to lesson")/2, 497, string("Go to lesson"));
}