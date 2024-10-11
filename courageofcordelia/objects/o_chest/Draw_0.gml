draw_self();

if place_meeting(x, y, o_player) && sprite_index != s_chest_open{
	draw_sprite(s_e, 0, x, y -20)
}