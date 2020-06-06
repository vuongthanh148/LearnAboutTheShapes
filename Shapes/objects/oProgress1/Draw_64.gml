//Move the fucking balllll
//draw_set_color(c_black);
//draw_text(0,200,string("firstAns: ")+string(global.firstAns));
//draw_text(0,250,string("activeball: ")+string(global.activeBall));
if(global.rightAnsBall){
	changed = false;
	if(global.firstAns == true){
		global.timerBall += 1;
		if(global.timerBall >= 4.5*60){
			with(asset_get_index("oBall" + string(global.activeBall) + "1")){
				//draw_text(0,300, string(x));
				x += global.ballSpeed;
				if(x >= (723 - 22 * (10 - global.activeBall))){
					x = 725 - 22 * (10 - global.activeBall);				
					global.rightAnsBall = false;
					//global.ballSpeed = 0;
					global.activeBall -= 1
					global.timerBall = 0;
					if(global.activeBall == 0){
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
		
		with(asset_get_index("oBall" + string(global.activeBall) + "1")){
			if(x <= (310 + 22 * (global.activeBall -1 ))){
				x = (307 + 22 * (global.activeBall -1 ));
				global.wrongAnsBall = false;
				global.firstAns = false;
			}
			else x -= global.ballSpeed;
		}
	}
}
//End of moving balllll