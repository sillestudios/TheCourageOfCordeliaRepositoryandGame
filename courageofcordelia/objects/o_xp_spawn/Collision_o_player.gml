
if can_pick_up_xp{
	audio_play_sound(coin_pickup, 1, false);
	instance_destroy(self);
	instance_create_layer(x, y, "Instances", o_pop);
	o_player.experience++;
}