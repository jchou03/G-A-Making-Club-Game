if (keyboard_check(vk_right)){
	if !place_meeting(x+run_speed_,y,obj_THATS_EPIC_EPIC_GAMES){
		x_momentum_ = run_speed_
	}
}

if(keyboard_check(vk_left)){
	if !place_meeting(x-run_speed_,y,obj_THATS_EPIC_EPIC_GAMES){
		x_momentum_ = -run_speed_
	
	}
}

if(keyboard_check(vk_up)){
	if !place_meeting(x,y-run_speed_,obj_THATS_EPIC_EPIC_GAMES){
		y_momentum_ = -run_speed_	
	}
}

if(keyboard_check(vk_down)){
	if !place_meeting(x,y+run_speed_,obj_THATS_EPIC_EPIC_GAMES){
		y_momentum_ = run_speed_	
	}
}
//check_collision()
x+=x_momentum_
y+=y_momentum_
