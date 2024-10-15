

if open_dung2_door = true{

	image_speed = 1;
	mask_index = s_empty;
	
	if door_sfx{
		audio_play_sound(sound_door_open, 1, false);
	}
	
	door_sfx = false;

}



