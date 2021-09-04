#include "lambda.h"

#define	SPR_W	640
#define	SPR_H	480
#define	ADD_X	1
#define	ADD_Y	2

/*
@‰æ–Ê“à‚ð”½ŽË‚µ‚È‚ª‚ç“®‚­ƒTƒ“ƒvƒ‹
*/
main()
{
	var back, move, sz[2], x, y, x1, y1, a1, addx, addy, txt;
	var flag1, c1, c2, c3, x2, y2, x3, y3, score1;
	var time1;
	var att1,att0,att;
	sprSetLevel(66);
	timeSetFPS(30);
	txt = imgCreate(640,16,4,0);
	back = imgLoad("bg.png", 1, 0);
	imgSetCurrent(back);
	x1=200;y1=300.2;
	x2=300;y2=300.2;
	score1=0;
	c1 = imgLoad("chara01.png", 2, 0);
	c2 = imgLoad("tchara01.png", 3, 0);
	imgSetCurrent(c1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
		imgSetCurrent(txt);
		txtSetColor(255, 255, 255);
		txtSetPos(300, 0);
		txtOut("SCORE:"+score1);
	inpSetCurrent(inpGetDevice(1));


	sprRenderScreen();

	while(true)
	{
		imgSetCurrent(c1);
		inpClear();
		if(inpGetState(INP_RIGHT) == INP_PUSH)
		{
				if(flag1==0){
	c1 = imgLoad("chara02.png", 2, 0);
	imgSetCurrent(c1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
				flag1=1;
				score1+=1;
				att0=1;
	sprRenderScreen();
	while(att>10){
	timeWait();
	timeWait();
	timeWait();
	timeWait();
	timeWait();
	timeWait();	
	timeWait();
	timeWait();
	timeWait();
	timeWait();
	timeWait();
	timeWait();
	att+=1;
	}
	att=0;
				}
		}
		else if(inpGetState(INP_LEFT) == INP_PUSH)
		{
				if(flag1==1){
	c1 = imgLoad("chara03.png", 2, 0);
	imgSetCurrent(c1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
				flag1=0;
				score1+=1;
				att0=1;
	sprRenderScreen();
	while(att>10){
	timeWait();
	timeWait();
	timeWait();
	timeWait();
	timeWait();
	timeWait();	
	timeWait();
	timeWait();
	timeWait();
	timeWait();
	timeWait();
	timeWait();
	att+=1;
	}
	att=0;
				}
		}
		else if(inpGetState(INP_ENTER) == INP_NONE){
	c1 = imgLoad("chara01.png", 2, 0);
	imgSetCurrent(c1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
				att0=0;
		}
				imgSetPos(x1, y1);
		att1+=1;
		if((att1>129)&&(att1<140)){
	c2 = imgLoad("tchara02.png", 2, 0);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
	if(att0==1){
	c1 = imgLoad("chara04.png", 2, 0);
	imgSetCurrent(c1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
				score1-=1;
		}
		}else if((att1>139)){
	c2 = imgLoad("tchara01.png", 2, 0);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
		att1=0;
		}
		imgSetCurrent(txt);
		imgFill(0, 0, 0);
		txtSetPos(0, 0);
		txtOut("You play with Step controller.");
		txtSetPos(300, 0);
		txtOut("SCORE:"+score1);
		txtSetPos(400, 0);
		txtOut(att1);
		txtSetPos(460, 0);
		time1+=1;
		txtOut("TIME:"+time1);
	timeWait();
	sprRenderScreen();
	}
}
