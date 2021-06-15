function createStatsDisplay(myX, myY, myHeight, myWidth){
	//center it
	myWidth = myWidth/2;
	myHeight = myHeight/2
	
	//inner rectangle
	draw_set_color(c_gray);
	draw_set_alpha(.744);
	draw_rectangle(myX - myWidth, myY + myHeight, myX + myWidth, myY - myHeight, false);
	
	//outline
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_rectangle(myX - myWidth, myY + myHeight, myX + myWidth, myY - myHeight, true);
}