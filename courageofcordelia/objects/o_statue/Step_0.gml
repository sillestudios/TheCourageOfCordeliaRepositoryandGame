
if place_meeting(x, y, o_player) && in_statue_zone = true && sprite_index != s_active_statue{
	if keyboard_check(ord("E")){
		create_fire = true;
		sprite_index = s_active_statue;
	}

}

if create_fire{
	create_fire = false;
	instance_create_depth(x, y+8, -2000, o_flames)
}