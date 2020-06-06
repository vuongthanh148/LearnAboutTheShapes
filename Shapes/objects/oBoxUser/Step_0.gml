if(!global.stopName){
	if(keyboard_check(vk_anykey) and string_length(global.loginName) < 20 and !keyboard_check(vk_enter))
	{
		global.loginName =global.loginName  + string(keyboard_string) ;
		
	}
 
	if(keyboard_check(vk_anykey) and !keyboard_check_pressed(vk_backspace) and delete_timer =2 )
	{
		global.loginName = string_delete(global.loginName, string_length(global.loginName), 1);
		delete_timer = 0;
	
	}

	if(keyboard_check_pressed(vk_backspace)){
		global.loginName = string_delete(global.loginName, string_length(global.loginName), 1);
		
		delete_timer = -4;
	}
	keyboard_string = "";

	if(delete_timer != -2){
		delete_timer ++;
	}
}