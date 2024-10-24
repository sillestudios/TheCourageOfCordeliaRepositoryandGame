

if place_meeting(x, y, o_player) and keyboard_check(ord("E")){
	sprite_index = s_chest_open;
	image_speed = 1;
}


if image_index = 7 and can_drop_loot{
	audio_play_sound(GS2_Treasure_Chest_Unlock_Open, 1, false);
	can_drop_loot = false;
	chest1_loot_drop();
	

}
