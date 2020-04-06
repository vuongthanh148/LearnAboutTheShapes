if(global.enableAns){	
	if(chosenRight == -1){
		draw_roundrect_colour(224, 450, 286, 490, $e5c66e, $e5c66e , false);
		//show_message("mau xanh nc bien");
	}
	else if(chosenRight == 0){
		draw_roundrect_colour(224, 450, 286, 490, $6857ff, $6857ff , false);
		timer += 1;
		if(timer >= 90){
			timer = 0;
			chosenRight = -1;	
		}
	}
	else{
		draw_roundrect_colour(224, 450, 286, 490, $82bf8f, $82bf8f , false);
		timer += 1;
		if(timer >= 90){
			timer = 0;
			global.enableAns = false;
			chosenRight = -1;	
		}
	}
	draw_set_color(c_white);
	draw_text(243,472,string("OK"));
}