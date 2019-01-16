/// @description Attack State
// You can write your code in this editor


attack_directions = global.playerID.direction_facing_;

x = global.playerID.x + 10;
y = global.playerID.y + 10;



attack_cycle_ -= 1;
if(attack_cycle_ <=0){
	state_ = spear.idle;
}