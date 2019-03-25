///@arg jump_key

var _jump = argument0;

//Jump
	//If touching the ground then give cTime and reset the jump acceleration
	if(place_meeting(x,y+2*global.gravity_,obj_wall) && sign(y_momentum_) == 1) {
		cTime_ = 100;
		jump_acceleration_ = 0;
		air_time_ = 0;
	}

	//Reduce the ctime timers when in the air after not touching the ground
	if(!place_meeting(x,y+2*global.gravity_,obj_wall)) {
		cTime_ = cTime_- 1;
	}
	
	//Going off the ground
	if jump_acceleration_ == 0{
		//If pressing jump then rise up
		
		if(_jump){
			jump_acceleration_ = 11.5;
		}
		if(place_meeting(x,y+2*global.gravity_,obj_wall)&&(_jump)&&(cTime_ >= 0)){
			y_momentum_ = -jump_acceleration_;
		}
	}
	//Reduce the jump height if the jump button isn't held
	if(!place_meeting(x,y+2*global.gravity_,obj_wall) && !_jump && sign(y_momentum_) < 0){
		y_momentum_ = y_momentum_/1.2;
	}
