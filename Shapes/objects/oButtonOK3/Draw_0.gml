if(global.enableAns){	
	if(chosenRight == -1){
		draw_roundrect_colour(742, 450, 804, 490, $e5c66e, $e5c66e , false);
		//show_message("mau xanh nc bien");
	}
	else if(chosenRight == 0){
		draw_roundrect_colour(742, 450, 804, 490, $6857ff, $6857ff , false); // mau do
		timer += 1;
		if(timer >= 90){
			timer = 0;
			chosenRight = -1;	
		}
	}
	else{
		draw_roundrect_colour(742, 450, 804, 490, $82bf8f, $82bf8f , false); // xanh la cay
		timer += 1;
		if(timer >= 90){
			timer = 0;
			global.enableAns = false;
			chosenRight = -1;	
		}
	}
	draw_set_color(c_white);
	draw_text(760,472,string("OK"));
}