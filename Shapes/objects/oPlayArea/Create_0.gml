usize = shader_get_uniform(shaderBlur,"size");//uniform for  width, height, radius

global.imageIndex = 0;		//thu tu anh lan luot
global.rightAnsIndex = 2;	//Thu tu dap an lan luot

global.rightAns = false;	//Dap an chon DUNG 
global.answered = false;	//
global.wrongAnsBall = false;
global.rightAnsBall = false;//Dap an chon SAI

global.enableAns = true;	//Hien thi muc dap an
global.choosingAns = false;

global.Win = false;

global.activeBall = 10;		//Qua bong dang duoc chon hien tai
global.ballSpeed = 10;

