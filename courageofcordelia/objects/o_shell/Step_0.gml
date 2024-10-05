calc_entity_movement()

if image_index >= 6 && shell_sfx {
	audio_play_sound(choose(sound_pistol_shells, sound_pistol_shells2, sound_pistol_shells3), 1, false);
	shell_sfx = false;
}