if alarm[HURT] > 0 and flash-- < flash_initial/2 or show_flash-- > 0{
	//draw the sprite
	gpu_set_fog(1, c_white, 0 ,1);
	draw_sprite_ext(sprite_index, 10, x, y, facing, 1, 0, c_white, 1);
	gpu_set_fog(0, c_white, 0, 1);
	
	//reset flash
	if flash <= 0 flash = flash_initial;
	
}else {
	draw_sprite_ext(sprite_index, 10, x, y, facing, 1, 0, c_white, 1);
}

//draw_text(CameraX() + 100, CameraY() + 100, string(enemy_spawn_count));

//draw hp (seperate from player when doing player ui)
/*var _healthPercent = hp/hp_max;
var _hpImage = _healthPercent * (sprite_get_number(s_small_health_bar) -1 );
draw_sprite_ext(s_small_health_bar, _hpImage, x , y - headheight - headheight_spacer, image_xscale, image_yscale, image_angle, image_blend, image_alpha );
