/// @description Idle State

apply_gravity();

sprite_index = spr_mummy_idle;

x_momentum_ = 0;
walk_into_wall_duration_ = 0;

//Check for attacks lmao
if(distance_to_player_ < 32 && alarm[0] <= 0){
	state_ = mummy.attack;
}else if alarm[0] <= 0 && alarm[1] <= 0 && !place_meeting(x + x_direction_to_player_ * walk_speed_,y,obj_wall){
	state_ = mummy.walk;
}

apply_momentum();