/// @description Insert description here
// You can write your code in this editor


//draw weapon behind the player


if aim_dir > 45 and aim_dir < 135 {
	if state != states.DASH{
		draw_my_weapon();
	}
}



// Inherit the parent event

if alarm[HURT] > 0 and flash-- < flash_initial/2 or show_flash-- > 0{
	//draw the sprite
	gpu_set_fog(1, c_white, 0 ,1);
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1);
	gpu_set_fog(0, c_white, 0, 1);
	
	//reset flash
	if flash <= 0 flash = flash_initial;
	
}else {
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1);
}


//draw weapon
if aim_dir >= 135 or aim_dir <= 45 {
	if state != states.DASH{
		draw_my_weapon();
	}
}

