if obj_input.pause_pressed_{
	if paused_{
		paused_ = false;
		if sprite_exists(paused_sprite_){
			sprite_delete(paused_sprite_);
		}
		instance_activate_all();
		audio_play_sound(a_unpause,5,false);
	}else if paused_ == false{
		paused_ = true;
		paused_sprite_ = sprite_create_from_surface(application_surface,0,0,view_wport[0],view_hport[0],false,false,0,0);
		instance_deactivate_all(true);
		instance_activate_object(obj_input);
		instance_activate_object(oTextBox);
		audio_play_sound(a_pause,5,false);
	}
}