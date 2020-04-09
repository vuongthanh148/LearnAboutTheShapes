/*if(global.run){
with(asset_get_index(string("oBall") + string(global.activeball))) {
		x += 2;
		if(x>=300){
			global.activeball -= 1;
			global.run = !global.run;
			draw_self();
		}
	}
}*/

if(global.run){
	//if(firstAns == true){
		with(asset_get_index("oBall" + string(global.activeBall))){
			//draw_text(0,300, string(x));
			x += global.ballSpeed;
			if(x >= (725 - 22 * (10 - global.activeBall))){
				//show_message("alo thangn gu");
				global.run = false;
				//global.ballSpeed = 0;
				global.activeBall -= 1;
			}
		 }
		 if(global.activeBall == 0) global.Win = true;
	//}
	//else if(!firstAns) firstAns = true;
}