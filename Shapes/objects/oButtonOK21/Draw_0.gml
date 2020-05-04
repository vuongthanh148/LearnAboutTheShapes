//SET HINH ANH CHO CAC DAP AN
if(global.rightAnsIndex[global.questionIndex] == answerNum){ //kiem tra dap an dung cua cau hoi co phai dap an nay khong
	if(randomed == false){ //set random hinh anh dap an
		randomize();
		in = irandom_range((global.typesQuestion[global.questionIndex] -1)*5,(global.typesQuestion[global.questionIndex] -1)*5+4);
		randomed = true;
	}
}
else{ //kiem tra dap an dung cua cau hoi khong phai dap an nay.
	global.data[global.typesQuestion[global.questionIndex]-1] = false;
	if(randomed == false){ //set random hinh anh dap an
		randomize();
		do{ 
			temp = irandom_range(1,4);
		}
		until (global.data[temp-1] != false);
		global.data[temp-1] = false;
		in = irandom_range((temp-1)*5,(temp-1)*5+4);
		randomed = true;
	}
}

if(chosenRight == -1){  // chua chon dap an
	if(global.enableAns) draw_roundrect_colour(483, 400, 545, 440, $e5c66e, $e5c66e , false);
	if(global.enableAns) draw_sprite(sAnswerImage,in,515,290);
	global.data[global.typesQuestion[global.questionIndex]-1] = false;
}
else if(chosenRight == 0){ //chon dap an sai
	if(global.enableAns){
		draw_roundrect_colour(483, 400, 545, 440, $6857ff, $6857ff , false);
		draw_sprite(sAnswerImage,in,515,290);
	}
	timer += 1;
	if(timer >= 90){
		timer = 0;
		chosenRight = -1;	
	}
}
else{ // chon dap an dung
	if(global.enableAns) draw_roundrect_colour(483, 400, 545, 440, $82bf8f, $82bf8f , false);
	timer += 1;

	if(timer >= room_speed * 1.5){ //START MOVING
		global.enableAns = false;
		posX += answerSpeed;
		if(posX >= 545 and answerSpeed > 0) {
			answerSpeed = -10;
		}
		if(posX <= 230) answerSpeed = 3;
		if(posX >= 256 and answerSpeed > 0 and posX <=260) {
			answerSpeed = 0;
		}	
	}
	if(timer >= 1.75 * room_speed) {
		draw_set_font(lookslike);
		draw_set_color(c_black);
		draw_text(515 - string_width("looks like")/2, 290 - string_height("looks like")/2, "looks like");
	}
	if(timer >= room_speed * 4.5){
		global.nextAns = true;
	}
	
	draw_sprite(sImageShasow,in,1030-posX,290);
	draw_sprite(sAnswerImage,in,posX,posY);	
}
if(global.enableAns){
	draw_set_font(loginFont)
	draw_set_color(c_white);
	draw_text(515 - string_width("OK")/2,430 - string_height("OK")/2,string("OK"));
}