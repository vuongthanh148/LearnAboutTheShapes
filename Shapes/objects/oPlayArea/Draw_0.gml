if(!global.start){
	shader_set(shaderBlur);
	shader_set_uniform_f(usize,8000,8000,12);//width,height,radius
}
draw_self();
draw_set_font(cauhoi);
draw_set_color(c_black);
draw_text(515 - string_width("What shape does this look like?")/2,120,string ("What shape does this look like?"));
//draw_text(11,150,string (global.rightAnsIndex));

if(global.start) shader_reset();

	
