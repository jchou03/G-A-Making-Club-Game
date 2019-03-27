/// @description Insert description here
// You can write your code in this editor

//Draw the textbox
draw_sprite(sTextBox,0,x,y);
//draw text
if(page_ >= array_length_1d(text_)){
	instance_destroy(self);
}else{
	draw_text_ext(x,y,text_[page_],stringHeight_,boxWidth_);
}