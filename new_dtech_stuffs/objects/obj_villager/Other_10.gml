/// @description idle state

image_speed = 1;
sprite_index = spr_villager_idle_front;

alarm[0] = random_range(4,10) * game_get_speed(gamespeed_fps);

if alarm[0] <= 0 {
	state_ = villager.walk;
}