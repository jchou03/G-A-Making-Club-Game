/// @description Slingshot State

var _banana = distance_to_object(obj_hookPoint);
var _x_input = (keyboard_check(vk_right)||keyboard_check(ord("D"))) - (keyboard_check(vk_left)||keyboard_check(ord("A")));

//var _speed = 0.5;

// X momentum
var _input_speed = _x_input*walk_speed_/20;
x_momentum_ += _input_speed;

if(timer_<=0){
	x_momentum_ -= x_momentum_*0.007;
	y_momentum_ += global.gravity_;
	if((x_momentum_ > 0 && original_x_momentum_ < 0) || (x_momentum_ < 0 && original_x_momentum_ > 0)){
		state_ = player.move;
	}
}
timer_ -= 1;

//Collisions
if(place_meeting(x+x_momentum_,y,obj_wall)){
	while(!place_meeting(x+sign(x_momentum_),y,obj_wall)) x += sign(x_momentum_);
	x_momentum_ = 0;
	state_ = player.move;
}

if(place_meeting(x,y+y_momentum_,obj_wall)){
	while(!place_meeting(x,y+sign(y_momentum_),obj_wall)) y += sign(y_momentum_);
	y_momentum_ = 0;
	state_ = player.move;
}

apply_momentum();
