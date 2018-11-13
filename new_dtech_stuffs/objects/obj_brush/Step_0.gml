/// @description Insert description here
// You can write your code in this editor
var _spagetti = keyboard_check_pressed(ord("J"));
var _x_input = (keyboard_check(vk_right)||keyboard_check(ord("D"))) - (keyboard_check(vk_left)||keyboard_check(ord("A")));
var _y_input = (keyboard_check(vk_down)||keyboard_check(ord("S"))) - (keyboard_check(vk_up)||keyboard_check(ord("W")));


if(_x_input == 1){
	image_angle = 0;
}else if(_x_input == -1){
	image_angle = 180;
}

if(_x_input != 0){
	point_direction(obj_player.x,obj_player.y,obj_player.x + _x_input, obj_player.y + _y_input);
}
//Change the image angle based on what 
/*
switch(_x_input){
	case _x_input == 1: 
		image_angle = 0; 
		break;
	case _x_input == -1: 
		image_angle = 180; 
		break;
}*/
x = obj_player.x;
y = obj_player.y;

if(_spagetti)&&(attack_ <= 0){
	instance_create_layer(x+image_xscale*32,y,"Paint",obj_paint);
	attack_ = 10;
}
attack_ -= 1;
