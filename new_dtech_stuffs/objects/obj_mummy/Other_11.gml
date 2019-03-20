/// @description Move State

apply_gravity();

sprite_index = spr_mummy_walk;

x_momentum_ = x_direction_to_player_ * walk_speed_;

if(x_momentum_ != 0){
	image_xscale = -1*sign(x_momentum_);
}

if(abs(distance_to_player_) < 32){
	state_ = mummy.idle;
	image_index = 0;
}

if(image_speed = 0){
	image_index = 0;
}

apply_momentum();