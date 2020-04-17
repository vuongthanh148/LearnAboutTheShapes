shader_reset();
if(!global.start){
	if(global.hover){
		s += 0.005;
		if(s>=1.06) s = 1.06;
	}
	else{
		s -= 0.005;
		if(s<=1) s = 1;
	}
	image_xscale = s;
	image_yscale = s;
	draw_self();
} 