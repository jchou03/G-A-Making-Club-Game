/// @description After walking state

sprite_index = spr_villager_idle_side;

image_speed = 1;


if image_index >= image_number - 1 {
	state_ = villager.idle_front;
}