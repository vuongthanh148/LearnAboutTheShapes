if(global.nextAns){
	audio_stop_all();
	global.nextAns = false;
	global.questionIndex += 1;
	if(global.questionIndex>=10) global.questionIndex = 0;
	for(i = 0; i < 4; i++){ global.data[i] = true; }
	global.data[global.typesQuestion[global.questionIndex]-1] = false;
	global.firstAns = true;
	for(i = 1;i<=3;i++){
		if(i == global.rightAnsIndex[global.questionIndex]){
			if(i == 1){
				//show_message("alo?");
				oButtonOK11.chosenRight = -1;
				oButtonOK11.timer = 0;
				oButtonOK11.randomed = false;
				//show_message("dap an 1");
				oButtonOK11.posX = 256;
				oButtonOK11.answerSpeed = -1.2;
			}
			else if(i == 2){
				oButtonOK21.chosenRight = -1;
				oButtonOK21.timer = 0;
				oButtonOK21.randomed = false;
				//show_message("dap an 1");
				oButtonOK21.posX = 515;
				oButtonOK21.answerSpeed = 1.2;
			}
			else if(i == 3){
				oButtonOK31.chosenRight = -1;
				oButtonOK31.timer = 0;
				oButtonOK31.randomed = false;
				//show_message("dap an 1");
				oButtonOK31.posX = 774;
				oButtonOK31.answerSpeed = 1.2;
			}
		}
		else{
			oButtonOK11.randomed = false;
			oButtonOK21.randomed = false;
			oButtonOK31.randomed = false;
			oButtonOK11.chosenRight = -1;
			oButtonOK21.chosenRight = -1;
			oButtonOK31.chosenRight = -1;
			oButtonOK11.timer = 0;
			oButtonOK21.timer = 0;
			oButtonOK31.timer = 0;
		}
		global.enableAns = true;
	}
}
