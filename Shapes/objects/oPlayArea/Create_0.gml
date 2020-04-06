usize = shader_get_uniform(shaderBlur,"size");//uniform for  width, height, radius
global.imageIndex = 0;		//thu tu anh lan luot
global.rightAnsIndex = 2;	//Thu tu dap an lan luot
global.rightAns = false;	//Dap an chon dung hay chua
global.answered = false;	//
global.enableAns = true;	//Hien thi muc dap an
/*switch (global.imageIndex + 1){ 
	case 1:
		global.rightAnsIndex = 2;
		break;	
	case 2:
		global.rightAnsIndex = 1;
		break
	case 3:
		global.rightAnsIndex = 3;
		break;
	case 4:
		global.rightAnsIndex = 1;
		break;
}*/
