if(!global.stopName){
	if(keyboard_check(vk_anykey) and string_length(loginName) < 20 and !keyboard_check(vk_enter))
	{
		loginName =loginName  + string(keyboard_string) ;
		keyboard_string = "";
	}
 
	if(keyboard_check(vk_anykey) and !keyboard_check_pressed(vk_backspace) and delete_timer =2 )
	{
		loginName = string_delete(loginName, string_length(loginName), 1);
		delete_timer = 0;
		keyboard_string = "";
	}

	if(keyboard_check_pressed(vk_backspace)){
		loginName = string_delete(loginName, string_length(loginName), 1);
		keyboard_string = "";
		delete_timer = -4;
	}

	if(delete_timer != -2){
		delete_timer ++;
	}
}