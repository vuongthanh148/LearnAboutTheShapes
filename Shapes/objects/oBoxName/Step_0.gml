if(!global.stopFullName){
	if(keyboard_check(vk_anykey) and string_length(global.fullName) < 20 )
	{
		global.fullName = global.fullName + string(keyboard_string) ;
		keyboard_string = "";
	}
 
	if(keyboard_check(vk_anykey) and !keyboard_check_pressed(vk_backspace) and delete_timer =2 )
	{
		global.fullName = string_delete(global.fullName, string_length(global.fullName), 1);
		delete_timer = 0;
		keyboard_string = "";
	}
 
	if(keyboard_check_pressed(vk_backspace)){
		global.fullName = string_delete(global.fullName, string_length(global.fullName  ), 1);
		keyboard_string = "";
		delete_timer = -4;
	}

	if(delete_timer != -2){
		delete_timer ++;
	}
}