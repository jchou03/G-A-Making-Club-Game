/// @description Get input

right_ = keyboard_check(vk_right) || keyboard_check(ord("D"));
left_ = keyboard_check(vk_left) || keyboard_check(ord("A"));
up_ = keyboard_check(vk_up) || keyboard_check(ord("W"));
down_ = keyboard_check(vk_down) || keyboard_check(ord("S"));

interact_ = keyboard_check_pressed(ord("E"));

action_one_ = keyboard_check(vk_space);
action_two_pressed_ = keyboard_check_pressed(ord("J"))

pause_pressed_ = keyboard_check_pressed(vk_enter);
