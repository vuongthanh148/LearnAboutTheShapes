 if(!global.finish){
	if(color == 1)
	{
		draw_set_colour($FF3232FF & $ffffff);
		var color_shifted_1=($FF3232FF >> 24);
		draw_set_alpha(color_shifted_1 / $ff);

		draw_set_font(name);

		draw_text(x - string_width("What shape is hidden?")/2, 335,  + string( "What shape is hidden?"));
	}

	else
	{
		draw_set_colour($FF000000 & $ffffff);
		var color_shifted_2=($FF000000 >> 24);
		draw_set_alpha(color_shifted_2 / $ff);

		draw_set_font(name);

		draw_text(x - string_width("What shape is hidden?")/2, 335,  + string( "What shape is hidden?"));
	}
}