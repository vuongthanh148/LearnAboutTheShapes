usize = shader_get_uniform(shaderBlur,"size");//uniform for  width, height, radius

global.questionIndex = 0;		//thu tu cau hoi lan luot
global.typesQuestion = array_create(10); // mang chua loai cau hoi trong 4 loai
global.rightAnsIndex = array_create(10); // mang chua dap an cua tung cau hoi
randomize();
for(i = 0; i < 10; i += 1){
	global.typesQuestion[i] = irandom_range(1,4);
	global.rightAnsIndex[i] = irandom_range(1,3);	
}


global.data = array_create(4,true);

//global.rightAns = false;	//Dap an chon DUNG 
//global.answered = false;	//
global.wrongAnsBall = false;
global.rightAnsBall = false;//Dap an chon SAI

global.enableAns = true;	//Hien thi muc dap an
//global.choosingAns = false;

global.activeBall = 10;		//Qua bong dang duoc chon hien tai
global.ballSpeed = 12;

global.newAns = true;
global.nextAns = false;
