/// @description 

walk_duration_ = 0;
walk_speed_ = 2;
x_momentum_ = 0;
y_momentum_ = 0;
direction_ = 0;

state_ = villager.idle_front;

alarm[0] = random_range(4,10) * game_get_speed(gamespeed_fps);

enum villager{
	idle_front,
	idle_side,
	walk,
	talk
}