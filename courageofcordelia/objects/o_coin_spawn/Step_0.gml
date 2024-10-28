calc_entity_movement();
if alarm[0] = -1{
	alarm[0] = 30;
}

if alarm[0] = 0{
	alarm_off = true;
}

if alarm_off{
	coinspd = 4;
	coin_dir = point_direction(x, y, o_player.x, o_player.y);
	coinX = lengthdir_x(coinspd, coin_dir);
	coinY = lengthdir_y(coinspd, coin_dir);



}

	x += coinX;
	y += coinY;
