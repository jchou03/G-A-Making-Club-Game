/// @description Attack State
// You can write your code in this editor


attack_directions = inst_player.direction_facing_;

x = inst_player.x + 10;
y = inst_player.y + 10;



attack_cycle_ -= 1;
if(attack_cycle_ <=0){
	state_ = spear.idle;
}