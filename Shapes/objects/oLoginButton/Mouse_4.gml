//if(!global.signUp){
//	if(global.loginName == "" or global.loginPass == "" ){
//		global.invalid = true;
//	}
//	else{
//		file = file_text_open_read(working_directory + "data1.txt");
//		while(!file_text_eof(file)){
//			temp = file_text_read_string(file);
//			if(global.loginName == temp){ //ten dang nhap dung
//				file_text_readln(file);
//				temp1 = file_text_read_string(file);
//				if(global.loginPass == temp1){
//					file_text_readln(file);
//					temp = file_text_read_string(file);
//					global.fullName = temp;
//					global.correctAccount = true;
//					room_goto(Home);
//				}
//			}
//			else{
//				file_text_readln(file);
//				file_text_readln(file);
//				file_text_readln(file);
//			}
//		}
//		global.correctAccount = false;
//		file_text_close(file);
//	}
//}
//else{
//	if(global.loginName == "" or global.loginPass == "" or global.fullName == ""){
//		global.invalid = true;
//	}
//	else{//them ca check tai khoan da ton tai chua
//		file = file_text_open_read(working_directory + "data1.txt");
//		while(!file_text_eof(file)){
//			temp = file_text_read_string(file);
//			if(global.loginName == temp){
//				global.inUseAccount = true;
//				break;
//			}
//			else{
//				file_text_readln(file);
//				file_text_readln(file);
//				file_text_readln(file);
//			}
//		}
//		file_text_close(file);
//	}
////-------------------------------------
//	if(!global.inUseAccount){
//		if(global.loginName == "" or global.loginPass == "" or global.fullName == ""){
//			global.invalid = true;
//		}
//		else{
//			file = file_text_open_append(working_directory + "data1.txt");
	
//			file_text_write_string(file,global.loginName);
//			file_text_writeln(file);
//			file_text_write_string(file,global.loginPass);
//			file_text_writeln(file);
//			file_text_write_string(file,global.fullName);
//			file_text_writeln(file);
//			room_goto(Home); 
//			file_text_close(file);
//		}
//	}
//}
if(global.fullName == "") global.invalid = true;
else room_goto(Home);