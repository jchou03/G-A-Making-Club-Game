/// @description Float State

sprite_index = spr_bigEnemy_float;

if abs(target_.x - x) > walk_speed_{
	x_momentum_ = x_direction_to_player_ * walk_speed_;
}else{
	alarm[1] = idle_wait_;
	state_ = bigEnemy.idle;
}

if(x_momentum_ != 0){
	image_xscale = -1*sign(x_momentum_);
}

//if close enough to attack go into idle then if you are that close in idle then you attack
if(abs(distance_to_player_) < 32){
	state_ = bigEnemy.idle;
	alarm[1] = idle_wait_;
	image_index = 0;
}
if(place_meeting(x+x_momentum_,y + y_momentum_, obj_wall)){
	walk_into_wall_duration_++;
}
if(walk_into_wall_duration_ > 7){
	state_ = bigEnemy.idle;
	alarm[1] = idle_wait_;
	walk_into_wall_duration_ = 0;
}

if(image_speed = 0){
	image_index = 0;
}

apply_momentum();