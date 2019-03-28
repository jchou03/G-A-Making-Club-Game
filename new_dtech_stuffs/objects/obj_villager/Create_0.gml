/// @description 

walk_duration_ = 0;
walk_speed_ = 2;
x_momentum_ = 0;
y_momentum_ = 0;
direction_ = 0;

textbox_ = noone;

state_ = villager.idle_front;

alarm[0] = random_range(4,10) * game_get_speed(gamespeed_fps);

enum villager{
	idle_front,
	idle_side,
	walk,
	talk
}

paused_ = false;
paused_sprite_ = false;
paused_sprite_scale_ = display_get_gui_width()/view_wport[0];