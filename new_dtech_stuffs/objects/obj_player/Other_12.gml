/// @description Drop State

if (!(place_meeting(x,y,obj_solid_platform))) state_ = player.move;

var _x_input = obj_input.right_ - obj_input.left_;
var _y_input = obj_input.down_ - obj_input.up_;
var _jump = obj_input.action_one_;
var _attack = obj_input.action_two_pressed_;

global.player_input_direction = point_direction(0,0,_x_input,_y_input);

//Set up the direction we are facing
direction_facing_ = round(global.player_input_direction/45);

if(_x_input != 0){
	image_xscale = _x_input;
}

//Set up direction moving
direction_moving_ = sign(x_momentum_);

//Set movement stuff
y_momentum_ += global.gravity_;
x_momentum_ = _x_input * walk_speed_;

//Attack
if(_attack && attack_cooldown_ <=0){
	global.spearID.state_ = spear.attack;
	attack_cooldown_ = 2;
	inst_spear.attack_direction_ = direction_facing_;
}
attack_cooldown_ -= 1;

x += x_momentum_;
y += y_momentum_;