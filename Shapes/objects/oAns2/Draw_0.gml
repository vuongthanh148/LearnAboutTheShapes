switch (global.imageIndex +1){ 
	case 1:
		nameAnswer = "Square";
		break;	
	case 2:
		nameAnswer = "Rectangle";
		break
	case 3:
		nameAnswer = "Circle";
		break;
	case 4:
		nameAnswer = "Triangle";
		break;
}
if(global.enableAns){
	image_index = global.imageIndex;
	draw_self();
	draw_set_color(c_black);
	draw_set_font(answer);
draw_text(x - string_width(nameAnswer)/2,y+50,string(nameAnswer));
}
