if(!global.stopPass){
	if(keyboard_check(vk_anykey) and string_length(global.loginPass) < 20 )
	{
		global.loginPass = global.loginPass  + string(keyboard_string);
		length = string_length(keyboard_string);
		for(i = 0; i < length;i++){
			temp += "*";
		}
		keyboard_string = "";
	}
 
	if(keyboard_check(vk_anykey) and !keyboard_check_pressed(vk_backspace) and delete_timer =2 )
	{
		global.loginPass = string_delete(global.loginPass, string_length(global.loginPass), 1);
		temp = string_delete(temp, string_length(temp), 1);
		delete_timer = 0;
		keyboard_string = "";
	}

	if(keyboard_check_pressed(vk_backspace)){
		global.loginPass = string_delete(global.loginPass, string_length(global.loginPass), 1);
		temp = string_delete(temp, string_length(temp), 1); 
		keyboard_string = "";
		delete_timer = -4;
	}
 
	if(delete_timer != -2){
		delete_timer ++;
	}
}