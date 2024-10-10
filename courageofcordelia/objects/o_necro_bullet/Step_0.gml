x += hsp;
y += vsp;

instance_create_layer(x, y, "Projectile", trail_vfx);


if play_projectile_sfx{
	audio_play_sound(choose(sound1, sound2, sound3), 1, false);
	play_projectile_sfx = false;
}