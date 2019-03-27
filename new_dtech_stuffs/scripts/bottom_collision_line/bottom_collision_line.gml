///@arg value
///@arg y_momentum

var _value = argument0;
var _y_momentum = argument1;

var _half_sprite_width = sprite_get_width(sprite_index)/2;

if((position_meeting(x,bbox_bottom+(_y_momentum*_value),obj_nonsolid_platform)) || 
(position_meeting(x-_half_sprite_width,bbox_bottom+(_y_momentum*_value),obj_nonsolid_platform)) || 
(position_meeting(x + _half_sprite_width,bbox_bottom+(_y_momentum*_value),obj_nonsolid_platform))){
	return true;
}
return false;
