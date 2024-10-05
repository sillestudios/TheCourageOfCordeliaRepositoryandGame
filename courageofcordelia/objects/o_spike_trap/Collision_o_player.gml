

if o_player.hp > 0 and can_attack {
	damage_entity(other, o_player, damage, knockback_time);
	can_attack = false;
	alarm[0] = attack_cooldown;
	audio_play_sound(choose(sound_player_get_hit, sound_player_get_hit2, sound_player_get_hit3), 1, false);
}