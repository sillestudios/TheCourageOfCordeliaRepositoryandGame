
if other.hp > 0 and can_attack_enemy{
	damage_entity(other, o_enemy_par, damage, knockback_time);
	can_attack_enemy = false;
	alarm[1] = attack_cooldown_enemy;
	audio_play_sound(choose(sound_enemy_damage, sound_enemy_damage2, sound_enemy_damage3), 1, false);
}