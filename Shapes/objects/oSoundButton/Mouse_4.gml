audio_stop_all();
switch (global.typesQuestion[global.questionIndex]){
	case 1:
		audio_play_sound(sSquare,1,0);
		break;
	case 2:
		audio_play_sound(sCircle,1,0);
		break;
	case 3:
		audio_play_sound(sTriangle,1,0);
		break;
	case 4:
		audio_play_sound(sRectangle,1,0);
		break;
}