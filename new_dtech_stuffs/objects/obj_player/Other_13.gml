/// @description Climb state

var _x_input = obj_input.right_ - obj_input.left_;
var _y_input = obj_input.down_ - obj_input.up_;
var _jump = obj_input.action_one_;
var _attack = obj_input.action_two_pressed_;
var _move = keyboard_check_pressed(ord("K"));

global.player_input_direction = point_direction(0,0,_x_input,_y_input);

//Set up the direction we are facing
direction_facing_ = round(global.player_input_direction/45);

x_momentum_ = _x_input * walk_speed_/4;
/*if(_jump){
	jump(_jump);
	state_ = player.move;
}*/ if(place_meeting(x,y,obj_ladder) && !_jump){
	y_momentum_ = _y_input * climb_speed_;
}else{
	state_ = player.move;
}

apply_momentum();