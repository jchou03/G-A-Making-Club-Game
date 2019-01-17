/// @description Walk State

image_speed = 1;
sprite_index = spr_villager_walk_side;
if(direction_ != 0){
	image_xscale = direction_;
}

x_momentum_ = walk_speed_ * direction_;
y_momentum_ += global.gravity_;

//Return to the side idle state if it is done walking or doesn't want to walk
if(direction_ == 0){
	state_ = villager.idle_side;
}
if(walk_duration_ <= 0) {
	state_ = villager.idle_side;
}
//if the villager is going to walk off a ledge get it to not do that
if !place_meeting(x+x_momentum_,y+global.gravity_,obj_wall){
	state_ = villager.idle_side;
}


x_collision(x_momentum_);
y_collision(y_momentum_);

walk_duration_ -= 1;

x += x_momentum_;
y += y_momentum_;