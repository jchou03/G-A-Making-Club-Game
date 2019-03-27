/// @description Idle state
apply_gravity();

image_speed = .5;
sprite_index = spr_villager_idle_front;



if alarm[0] <= 0 {
	walk_duration_ = irandom_range(1,5) * game_get_speed(gamespeed_fps);
	direction_ = irandom_range(-1,1);
	alarm[0] = random_range(4,10) * game_get_speed(gamespeed_fps);
	state_ = villager.walk;
}

apply_momentum();