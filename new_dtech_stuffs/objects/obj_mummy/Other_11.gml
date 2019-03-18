/// @description Move State

event_inherited();

sprite_index = spr_mummy_walk;

x_momentum_ = 0;
image_speed = 0;

image_speed = 1;
direction_moving_ = direction_to_player_;
x_momentum_ = direction_to_player_ * walk_speed_;


if(x_momentum_ != 0){
	image_xscale = -1*sign(x_momentum_);
}else{
	image_xscale = 1;
}

if(abs(distance_to_player_) < 32){
	state_ = mummy.idle;
	image_index = 0;
}



if(image_speed = 0){
	image_index = 0;
}

//Collisions
x_collision(x_momentum_);
y_collision(y_momentum_);

x += x_momentum_;
y += y_momentum_;