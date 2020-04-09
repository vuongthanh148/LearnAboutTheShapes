//Move the fucking balllll
//draw_text(0,200,global.firstAns)
if(global.rightAnsBall){
	if(global.firstAns == true){
		with(asset_get_index("oBall" + string(global.activeBall))){
			//draw_text(0,300, string(x));
			x += global.ballSpeed;
			if(x >= (725 - 22 * (10 - global.activeBall))){
				//show_message("alo thangn gu");
				global.rightAnsBall = false;
				//global.ballSpeed = 0;
				global.activeBall -= 1;
				//global.answered = false;
			}
		 }
		 if(global.activeBall == 0){
			  global.Win = true;
			  show_message("Good job, Bitch!");
		 }
	}
	else{
		global.firstAns = true;
		global.rightAnsBall = false;
	}
}
if(global.wrongAnsBall){
	if(global.firstAns){
		if(global.activeBall < 10) global.activeBall += 1;
		else global.activeBall = 10;
		with(asset_get_index("oBall" + string(global.activeBall))){
			
			if(x <= (307 + 22 * (global.activeBall-1))){
				global.wrongAnsBall = false;
				global.firstAns = false;
			}
			else x -= global.ballSpeed;
		}
	}
}
//End of moving balllll