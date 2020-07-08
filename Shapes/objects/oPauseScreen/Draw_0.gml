 if(global.finish){
	draw_self();
	timer += 1;
	if(timer >= 80){
		room_goto(Home);
	}
}