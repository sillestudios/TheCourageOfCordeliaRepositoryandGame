draw_self();

if place_meeting(x, y, o_player) && sprite_index != s_active_statue{
	draw_sprite(s_e, 0, x, y -45)
	in_statue_zone = true;
}