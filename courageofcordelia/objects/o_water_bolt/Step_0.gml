x += hsp;
y += vsp;

instance_create_layer(o_water_bolt.x,o_water_bolt.y, "Projectile", trail_vfx);

if water_bolt_sfx{
	audio_play_sound(choose(sound_water_spell, sound_water_spell2, sound_water_spell3), 1, false);
	water_bolt_sfx = false;
}