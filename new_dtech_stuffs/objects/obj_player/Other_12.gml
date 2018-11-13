/// @description Flying state
// You can write your code in this editor
var _x_input = (keyboard_check(vk_right)||keyboard_check(ord("D"))) - (keyboard_check(vk_left)||keyboard_check(ord("A")));
var _y_input = (keyboard_check(vk_down)||keyboard_check(ord("S"))) - (keyboard_check(vk_up)||keyboard_check(ord("W")));
var _jump = keyboard_check_pressed(vk_space);
var _dash = keyboard_check_pressed(vk_lshift);
var _move = keyboard_check_pressed(ord("K"));

x_momentum_ += (-x_momentum_/0.2);
y_momentum_ += global.gravity_;

//Check if touching the ground
if(place_meeting(x,y+2*global.gravity_,obj_wall)) state_ = player.move;
instance_create_layer(x,y,"Instances",obj_enemy);

//Collisions
x_collision(x_momentum_);
y_collision(y_momentum_);

x += x_momentum_;
y += y_momentum_;
