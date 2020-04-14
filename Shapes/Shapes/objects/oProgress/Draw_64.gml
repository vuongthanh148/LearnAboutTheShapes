//Move the fucking balllll
//draw_set_color(c_black);
//draw_text(0,200,string("firstAns: ")+string(global.firstAns));
//draw_text(0,250,string("activeball: ")+string(global.activeBall));
if(global.rightAnsBall){
	changed = false;
	if(global.firstAns == true){
		global.timerBall += 1;
		if(global.timerBall >= 5.75*60){
			with(asset_get_index("oBall" + string(global.activeBall))){
				//draw_text(0,300, string(x));
				x += global.ballSpeed;
				if(x >= (725 - 22 * (10 - global.activeBall))){
					//show_message("alo thangn gu");
					global.rightAnsBall = false;
					//global.ballSpeed = 0;
					global.activeBall -= 1
					global.timerBall = 0;
					if(global.activeBall == 8){
						global.finish = true; 
						//room_goto(Home);
					}
					//global.answered = false;
				}
				
			 }
		}
	}
	else{
		global.firstAns = true;
		global.rightAnsBall = false;
	}
}
else if(global.wrongAnsBall){
	if(global.firstAns){
		if(global.activeBall < 10 and !changed){
			global.activeBall += 1;
			changed = true;
		}
		
		with(asset_get_index("oBall" + string(global.activeBall))){
			if(x <= (308 + 22 * (global.activeBall -1 ))){
				global.wrongAnsBall = false;
				global.firstAns = false;
				
			}
			else x -= global.ballSpeed;
		}
	}
}
//End of moving balllll