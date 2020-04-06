//draw_text(20,300,string("X: ")+string(x) );
image_index = global.imageIndex;
if(global.answered and global.rightAns){
	draw_self();
	timer += 1;
	if(timer >= room_speed * 1.5){
		//timer = -1;
		if(!speedUp) speed = 1.2; // move right
		else speed = 6;
		
		if(x <= initPosition - 20){ //move right
			//global.enableText = true;
			speedUp = true; 
			direction = point_direction(0,0,1,0);
			//speed = 20; 
		}
		if(direction == point_direction(0,0,1,0) and x >= initPosition + 200){
			direction = point_direction(1,0,0,0);
			speedUp = false;
		} 
		if(direction == point_direction(1,0,0,0) and x <= initPosition + 170 and x > initPosition + 165) speed = 0;
		if(timer >= room_speed * 6){
			timer = 0;
			x = 515;
		}
	}
}

