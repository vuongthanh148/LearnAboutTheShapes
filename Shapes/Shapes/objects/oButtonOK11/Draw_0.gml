if(global.rightAnsIndex[global.questionIndex] == answerNum){ //kiem tra dap an dung cua cau hoi co phai dap an nay khong
	if(randomed == false){ //set random hinh anh dap an
		randomize();
		in = irandom_range((global.typesQuestion[global.questionIndex] -1)*5,(global.typesQuestion[global.questionIndex] -1)*5+4);
		randomed = true;
	}
	draw_sprite(sAnswerImage,in, 255, 340);
}
else{ //kiem tra dap an dung cua cau hoi khong phai dap an nay.
	if(randomed == false){ //set random hinh anh dap an
		randomize();
		do{ 
			temp = irandom_range(0,3);
		}
		until (data[temp] != false);
		
		in = irandom_range(temp*5,temp*5+4);
		randomed = true;
		global.data[temp] = false;
	}
	draw_sprite(sAnswerImage,in, 255, 340);
}

if(global.enableAns){	
	if(chosenRight == -1){  // chua chon dap an
		draw_roundrect_colour(224, 450, 286, 490, $e5c66e, $e5c66e , false);
		//show_message("mau xanh nc bien");
	}
	else if(chosenRight == 0){ //chon dap an sai
		draw_roundrect_colour(224, 450, 286, 490, $6857ff, $6857ff , false);
		//global.choosingAns = true;
		timer += 1;
		if(timer >= 90){
			timer = 0;
			chosenRight = -1;	
			//global.choosingAns = false;
		}
	}
	else{ // chon dap an dung
		draw_roundrect_colour(224, 450, 286, 490, $82bf8f, $82bf8f , false);
		global.choosingAns = true;
		
		timer += 1;
		if(timer >= 90){
			timer = 0;
			//global.enableAns = false;
			global.questionIndex += 1;
			for(i =0;i<4;i++){ global.data[i] = true;}
			global.data[global.typesQuestion[global.questionIndex]-1] = false;
			randomed = false;
			chosenRight = -1;
		}
	}
	draw_set_color(c_white);
	draw_text((286+224)/2 - string_width("OK")/2,470 - string_height("OK")/2,string("OK"));
}