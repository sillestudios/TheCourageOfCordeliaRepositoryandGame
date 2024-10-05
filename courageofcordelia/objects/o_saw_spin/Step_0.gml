
x += sine_wave(current_time/1000, 2, 2, 0);
//saw_move();

if create_vfx{
	create_vfx = false
	alarm[1] = vfx_cooldown;
	instance_create_layer(x,y, "Projectile", o_sparks);
}
