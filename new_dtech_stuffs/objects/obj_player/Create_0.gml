/// @description Insert description here
// You can write your code in this editor

timer_ = 30;
cTime_ = 3;
image_speed = 0;
walk_speed_ = 7.5;
global.gravity_ = 0.35;
y_momentum_ = 0;
x_momentum_ = 0;
direction_facing_ = dir_player.right;
state_ = 0;
original_x_momentum_ = 0;

global.player_health = 4;

enum player{
	move,
	slingshot,
	fly
}

enum dir_player{
	right,
	up,
	left,
	down
}

//Sprite movement lookup table
//spr_player_run_right = sprite_[player.move,dir.right];
//sprite_[player.move,dir.right] = spr_player_run_right;
//sprite_[player.move,dir.up] = spr_player_run_up;
//sprite_[player.move,dir.left] = spr_player_run_left;
//sprite_[player.move,dir.down] = spr_player_run_down;
