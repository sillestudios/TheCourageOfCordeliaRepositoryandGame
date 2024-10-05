x += hsp;
y += vsp;

instance_create_layer(o_enemy_flame_bolt.x,o_enemy_flame_bolt.y, "Projectile", trail_vfx);


if flame_bolt_vfx{
	audio_play_sound(sound_fire_spell, 1, false);
	flame_bolt_vfx = false;
}