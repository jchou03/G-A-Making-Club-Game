/// @description Move State


image_speed = 0;
//Controller input

var _animation_speed = 0.6;
/*
var _x_input = (gamepad_button_check(0,gp_padr)-gamepad_button_check(0,gp_padl));
var _y_input = (gamepad_button_check(0,gp_padd)-gamepad_button_check(0,gp_padu));
var _jump = gamepad_button_check_pressed(0,gp_face1);
var _dash = gamepad_button_check_pressed(0,gp_shoulderrb);
//keyboard input
*/

var _x_input = (keyboard_check(vk_right)||keyboard_check(ord("D"))) - (keyboard_check(vk_left)||keyboard_check(ord("A")));
var _y_input = (keyboard_check(vk_down)||keyboard_check(ord("S"))) - (keyboard_check(vk_up)||keyboard_check(ord("W")));
var _jump = keyboard_check_pressed(vk_space);
var _dash = keyboard_check_pressed(vk_lshift);
var _move = keyboard_check_pressed(ord("K"));

global.player_input_direction = point_direction(0,0,_x_input,_y_input);

//Set up the direction we are facing
direction_facing_ = round(global.player_input_direction/45);

//Set movement stuff
y_momentum_ += global.gravity_;
if(place_meeting(x,y+1,obj_wall)){
	x_momentum_ = _x_input * walk_speed_;
}
//in air movement
else if(!place_meeting(x,y+1,obj_wall) && abs(x_momentum_) < maxSpeed_){
	x_momentum_ += _x_input* walk_speed_/4;
	if((x_momentum_ > 0 && original_x_momentum_ < 0) || (x_momentum_ < 0 && original_x_momentum_ > 0)){
		state_ = player.move;
	}
}



//Jump
if(place_meeting(x,y+2*global.gravity_,obj_wall)) cTime_ = 6;
if(!place_meeting(x,y+2*global.gravity_,obj_wall)) cTime_ = cTime_- 1;
if(/*place_meeting(x+sign(x_momentum_)*1,y+2*global.gravity_,obj_wall))&&*/(_jump)&&(cTime_ >= 0)){
	y_momentum_ = -10;
	//state_ = player.fly;
}



//transition into grapple or whatever happens
if(_move && distance_to_object(obj_hookPoint) < 500){
	timer_ = 30;
	if(x < obj_hookPoint.x){
		x_momentum_ = distance_to_point(obj_hookPoint.x,y)/15;
	}else if(x > obj_hookPoint){
		x_momentum_ = -distance_to_point(obj_hookPoint.x,y)/15;
	}
	// Y momentum
	if(y > obj_hookPoint.y){
		y_momentum_ = -distance_to_point(x,obj_hookPoint.y)/15;
	}
	original_x_momentum_ = x_momentum_;
	state_ = player.slingshot;
	
}

//Collisions
x_collision(x_momentum_);
y_collision(y_momentum_);

x += x_momentum_;
y += y_momentum_;