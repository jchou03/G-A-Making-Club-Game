/// @description idle state

image_speed = 1;
sprite_index = spr_villager_idle_front;



if alarm[0] <= 0 {
	instance_create_layer(x,y,"Instances",obj_enemy);
	walk_duration_ = irandom_range(1,5) * game_get_speed(gamespeed_fps);
	direction_ = irandom_range(-1,1);
	alarm[0] = random_range(4,10) * game_get_speed(gamespeed_fps);
	state_ = villager.walk;
}