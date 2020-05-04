if(global.invalid){
	global.correctAccount = true;
	timer += 1;
	draw_set_color($474ff3);
	draw_set_font(loginFont);
	if(timer < 2*room_speed){
		draw_sprite(sWrongIcon,0, 515 - string_width("Please fill out the form!")/2 ,520)
		draw_text(515 + sprite_width + 10 - string_width("Please fill out the form!")/2,520, "Please fill out the form!");
	}
	else{
		timer = 0;
		global.invalid = false;
	}
} 