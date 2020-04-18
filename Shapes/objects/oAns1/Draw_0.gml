switch (global.imageIndex +1){ 
	case 1:
		nameAnswer = "Triangle";
		break;	
	case 2:
		nameAnswer = "Circle";
		break
	case 3:
		nameAnswer = "Square";
		break;
	case 4:
		nameAnswer = "Rectangle";
		break;
}
if(global.enableAns){
	image_index = global.imageIndex;
	draw_self();
	draw_set_color(c_black);
	draw_set_font(answer);
	draw_text(x - string_width(nameAnswer)/2,y+60,string(nameAnswer));
}

