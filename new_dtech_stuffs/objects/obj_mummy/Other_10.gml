/// @description Idle State

apply_gravity();

sprite_index = spr_mummy_idle;

x_momentum_ = 0;

//Check for attacks lmao
if(distance_to_player_ < 32 && alarm[0] <= 0){
	state_ = mummy.attack;
}else if alarm[0] <= 0{
	state_ = mummy.walk;
}

apply_momentum();