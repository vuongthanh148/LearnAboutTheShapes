if(color1 == 1)               
{
	draw_set_colour($FF3232FF & $ffffff);
	var l2C6F5FEA_0=($FF3232FF >> 24);
	draw_set_alpha(l2C6F5FEA_0 / $ff);

	draw_set_font(name);

	draw_text(x - string_width("What's it like?")/2, 335,  + string( "What's it like?"));
}

else
{
	draw_set_colour($FF000000 & $ffffff);
	var l5FE6DABA_0=($FF000000 >> 24);
	draw_set_alpha(l5FE6DABA_0 / $ff);

	draw_set_font(name);

	draw_text(x - string_width("What's it like?")/2 , 335,  + string( "What's it like?"));
}