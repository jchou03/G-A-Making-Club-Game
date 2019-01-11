/// @description Attack
// You can write your code in this editor

if(attack_cycle_ <= 0){
	attack_cycle_ = 30;
	state_ = 0;
}else if(attack_cycle_ > 15){
	x = obj_player.x + 3*global.playerID.direction_facing_;
}else{
	x -= obj_player.x - 3 * global.playerID.direction_facing_;
}

attack_cycle_ -= 1;
