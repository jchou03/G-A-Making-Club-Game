/// @description Insert description here
// You can write your code in this editor

y_momentum_ += global.gravity_;

if(health_ <= 0){
	instance_destroy();
}