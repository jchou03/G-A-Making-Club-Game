///@arg change_position

///@arg direction

///@arg run_speed

var	_change_position=argument0
var	_direction=argument1
var	_run_speed=argument2

if _change_position == x{
	if place_meeting(x + (_direction * _run_speed),y,obj_THATS_EPIC_EPIC_GAMES){
		return false;
	}
}