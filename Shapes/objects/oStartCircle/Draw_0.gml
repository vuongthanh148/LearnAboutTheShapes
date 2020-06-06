shader_reset();
if(!global.start){
	if(global.hover){
		scale += 0.005;
		if(scale >= 1.06) scale = 1.06;
	}
	else{
		scale -= 0.005;
		if(scale <= 1) scale = 1;
	}
	image_xscale = scale;
	image_yscale = scale;
	draw_self();
} 