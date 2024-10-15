
if place_meeting(x, y, o_player) && in_statue_zone = true && sprite_index != s_active_statue{
	if keyboard_check(ord("E")){
		create_fire = true;
		sprite_index = s_active_statue;
	}

}

if create_fire{
	create_fire = false;
	instance_create_layer(x+10, y, "Projectile", o_flames)
}