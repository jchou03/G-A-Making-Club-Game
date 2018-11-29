/// @description Insert description here
// You can write your code in this editor

//walking variables
walk_speed_ = 7.5;
y_momentum_ = 0;
x_momentum_ = 0;
direction_facing_ = dir_player.right;

//jumping variables
cTime_ = 3;

//Other important stuff
timer_ = 30;
image_speed = 0;
original_x_momentum_ = 0;

//Slignshot variables
state_ = 0;
global.gravity_ = 0.35;




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
