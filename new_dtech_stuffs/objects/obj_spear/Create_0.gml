/// @description Insert description here
// You can write your code in this editor
global.spearID = id;

state_ = 0;
banana_ = false;
attack_cycle_ = 120;
attack_direction_ = 0;

enum spear{
	idle,
	attack
}

enum attack_directions{
	right,
	right_up,
	up,
	left_up,
	left,
	left_down,
	down,
	right_down
}