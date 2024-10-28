calc_entity_movement();
if alarm[0] = -1{
	alarm[0] = 30;
}

if alarm[0] = 0{
	alarm_off = true;
}

if alarm_off{
	xpspd = 4;
	xp_dir = point_direction(x, y, o_player.x, o_player.y);
	xpX = lengthdir_x(xpspd, xp_dir);
	xpY = lengthdir_y(xpspd, xp_dir);



}

	x += xpX;
	y += xpY;