/// @description Move State

image_speed = 0;
//Controller input

var _animation_speed = 0.6;
/*
var _x_input = (gamepad_button_check(0,gp_padr)-gamepad_button_check(0,gp_padl));
var _y_input = (gamepad_button_check(0,gp_padd)-gamepad_button_check(0,gp_padu));
var _jump = gamepad_button_check_pressed(0,gp_face1);
var _dash = gamepad_button_check_pressed(0,gp_shoulderrb);
*/

//keyboard input
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


//if you can drop through a platform 
if (_y_input == 1 && _jump && place_meeting(x,y+global.gravity_,obj_solid_platform)){
	state_ = player.drop;
}else{
	jump(_jump);
}
//Attack
if(_attack && attack_cooldown_ <=0){
	global.spearID.state_ = spear.attack;
	attack_cooldown_ = 2;
	inst_spear.attack_direction_ = direction_facing_;
}
attack_cooldown_ -= 1;

//Climb state
if(place_meeting(x,y,obj_ladder)){
	state_ = player.climb;
}

/*
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
*/
apply_momentum();