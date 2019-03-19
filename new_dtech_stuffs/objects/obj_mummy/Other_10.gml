/// @description Idle State

sprite_index = spr_mummy_idle;
image_speed = 1;

//Check for attacks lmao
if(distance_to_player_ < 32 && alarm[0] <= 0){
	state_ = mummy.attack;
}else{
	state_ = mummy.walk;
}