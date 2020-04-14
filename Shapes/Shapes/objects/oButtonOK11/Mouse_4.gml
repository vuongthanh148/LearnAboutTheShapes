if(global.start){
	//image_blend = $FFee8e68;
	//image_blend = $FFee2d51;
	if(global.rightAnsIndex[global.questionIndex] == answerNum){
		global.rightAns = true;
		global.answered = true
		chosenRight = 1;
		global.rightAnsBall = true;
		global.wrongAnsBall = false;
	}
	else{
		chosenRight = 0;
		global.wrongAnsBall = true;
		global.rightAnsBall = false;
	}
}	