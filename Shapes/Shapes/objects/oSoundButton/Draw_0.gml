if(changed) image_index = 1;
else image_index = 0;
randomize()
draw_self();
draw_set_font(cauhoi);
draw_set_color(c_black);
draw_text(30,200,string(global.questionIndex));
draw_text(30,250,string(global.typesQuestion[global.questionIndex]));
draw_text(30,300,string(global.rightAnsIndex[global.questionIndex]));
switch (global.typesQuestion[global.questionIndex]){
	case 1:
		s = "square?";
		break;
	case 2:
		s = "circle?";
		break;
	case 3:
		s = "triangle?";
		break;
	case 4:
		s = "rectangle?";
		break;
}
s0 = "What object looks like a ";
draw_text(515 - (sprite_width*-1 + string_width(s0 + s )+ 34)/2 , y - string_height(s0 + s )/2 , s0 + s);
x = 515 - (string_width(s0 + s) + 34)/2 - 10;
draw_sprite(sQuestionImage,global.typesQuestion[global.questionIndex]-1, x + sprite_width/2 + string_width(s0 + s ) + 44, y)

for(i = 0; i < 10; i += 1){
	draw_set_color(c_black); 
	draw_text(10,200+i*30,string(global.typesQuestion[i]));
}
