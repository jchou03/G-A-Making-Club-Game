/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
walk_speed_ = 3;
y_momentum_ = 0;
x_momentum_ = 0;
direction_facing_ = dir_enemy.right;
provoked_ = 0;
health_ = 1;

global.player_health = 4;

enum enemy{
	move
}

enum dir_enemy{
	right,
	up,
	left,
	down
}