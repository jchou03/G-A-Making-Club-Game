/// @description Insert description here
// You can write your code in this editor

event_inherited();

attack_wait_ = global.one_second * random_range(2,4);
alarm[0] = attack_wait_;
image_xscale = -1;
image_speed = 0.5;

target_ = obj_player;

distance_to_player_ = point_distance(x,y,target_.x,target_.y);
x_direction_to_player_ = sign(target_.x - x);

direction_facing_ = -1;
walk_speed_ = 2;
state_ = mummy.idle;
health_ = 2;


enum mummy{
	idle,
	walk,
	attack
}