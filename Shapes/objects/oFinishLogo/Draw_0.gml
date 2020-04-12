if(global.finish){
	draw_self();
	draw_set_font(cauhoi);
	draw_set_color(c_black);
	draw_text(515 - string_width("Well done! You completed the card!")/2, 100, string("Well done! You completed the card!"));
}