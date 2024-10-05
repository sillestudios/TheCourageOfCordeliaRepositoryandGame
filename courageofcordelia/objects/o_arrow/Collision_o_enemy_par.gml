
if other.hp > 0{
	damage_entity(other, owner_id, damage, knockback_time);
	audio_play_sound(choose(sound_enemy_damage, sound_enemy_damage2, sound_enemy_damage3), 1, false);
	projectile_die();
	
}

