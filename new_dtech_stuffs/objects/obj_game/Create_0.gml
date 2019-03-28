
global.gravity_ = 0.35;
global.one_second = game_get_speed(gamespeed_fps);
instance_create_layer(0,0,"Instances",obj_input);

paused_ = false;
paused_sprite_ = false;
paused_sprite_scale_ = display_get_gui_width()/view_wport[0];