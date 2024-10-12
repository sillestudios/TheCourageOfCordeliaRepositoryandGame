
if surface_exists(lighting_surface) == false{
	lighting_surface = surface_create(room_width, room_height);
}

surface_set_target(lighting_surface);

draw_clear_alpha(c_black, 0.6);



#region TORCH
with(o_torch_light){
	var _wobble = 0.2;
	var _wobble_amount_x = 2 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 2 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_orange, 0.55);
	

}
gpu_set_blendmode(bm_normal);
#endregion

#region RED TORCH
with(o_red_torch){
	var _wobble = 0.2;
	var _wobble_amount_x = 2 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 2 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_red, 0.55);
	

}
gpu_set_blendmode(bm_normal);
#endregion

#region TORCH POST
with(o_torch_post){
	var _wobble = 0.2;
	var _wobble_amount_x = 2 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 2 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_blue, 0.55);
	

}
gpu_set_blendmode(bm_normal);
#endregion

#region BLUE FURNACE
with(o_blue_furnace){
	var _wobble = 0.2;
	var _wobble_amount_x = 1.25 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 1.25 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_teal, 0.55);
	

}
gpu_set_blendmode(bm_normal);
#endregion

#region PLAYER
with(o_player){
	var _wobble = 0.025;
	var _wobble_amount_x = 1.5 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 1.5 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_green, 0.3);
	
}
gpu_set_blendmode(bm_normal);


#endregion

#region ENEMY
with(o_enemy){
	var _wobble = 0.025;
	var _wobble_amount_x = 3 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 3 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_purple, 0.55);
	
}
gpu_set_blendmode(bm_normal);


#endregion

#region THEIF ENEMY
with(o_theif){
	var _wobble = 0.025;
	var _wobble_amount_x = 1.25 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 1.25 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_red, 0.45);
}
gpu_set_blendmode(bm_normal);


#endregion

#region RATMAGE ENEMY
with(o_ratmage){
	var _wobble = 0.025;
	var _wobble_amount_x = 1.25 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 1.25 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_blue, 0.45);
}
gpu_set_blendmode(bm_normal);


#endregion

#region WARLOCK ENEMY
with(o_warlock){
	var _wobble = 0.025;
	var _wobble_amount_x = 1.25 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 1.25 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_red, 0.45);
}
gpu_set_blendmode(bm_normal);


#endregion

#region WARLOCK SPAWNER
with(o_spawner){
	var _wobble = 0.025;
	var _wobble_amount_x = 1.25 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 1.25 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_red, 0.45);
}
gpu_set_blendmode(bm_normal);


#endregion

#region QUASIT ENEMY
with(o_quasit){
	var _wobble = 0.025;
	var _wobble_amount_x = 1.25 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 1.25 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_green, 0.45);
}
gpu_set_blendmode(bm_normal);


#endregion

#region GOBBOMB ENEMY
with(o_bomber){
	var _wobble = 0.025;
	var _wobble_amount_x = 1.25 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 1.25 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_green, 0.45);
}
gpu_set_blendmode(bm_normal);


#endregion

#region NECROMANCER
with(o_necromancer){
	var _wobble = 0.025;
	var _wobble_amount_x = 1.5 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 1.5 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_purple, 0.45);
}
gpu_set_blendmode(bm_normal);


#endregion

#region ARROW
with(o_arrow){

	var _wobble = 0.1;
	var _wobble_amount_x = 1.1 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 1.1 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_teal, 0.55);

	
}
gpu_set_blendmode(bm_normal);
#endregion

#region BULLET
with(o_blaster_bullet){

	var _wobble = 0.1;
	var _wobble_amount_x = 0.9 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 0.9 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_purple, 0.6);

	
}
gpu_set_blendmode(bm_normal);
#endregion

#region FLAME BOLT
with(o_flame_bolt){

	var _wobble = 0.1;
	var _wobble_amount_x = 1.1 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 1.1 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_red, 0.55);

	
}
gpu_set_blendmode(bm_normal);
#endregion

#region WATER BOLT
with(o_water_bolt){

	var _wobble = 0.1;
	var _wobble_amount_x = 1.1 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 1.1 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_teal, 0.55);

	
}
gpu_set_blendmode(bm_normal);
#endregion

#region PLAYER BOMB
with(o_bomb){
	var _wobble = 0.1;
	var _wobble_amount_x = 1 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 1 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);

}
gpu_set_blendmode(bm_normal);
#endregion

#region PLAYER BOMB EXPLOSION
with(o_explosion){
	var _wobble = 0.1;
	var _wobble_amount_x = 5 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 5 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_yellow, 0.55);

}
gpu_set_blendmode(bm_normal);
#endregion

 #region CHESTS
with(o_chest){
	var _wobble = 0.025;
	var _wobble_amount_x = 1 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 1 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_yellow, 0.3);
}
gpu_set_blendmode(bm_normal);
 #endregion

#region COINS
with(o_coin){
	var _wobble = 0.025;
	var _wobble_amount_x = 0.5 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 0.5 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_yellow, 0.45);
}
gpu_set_blendmode(bm_normal);

with(o_coin_spawn){
	var _wobble = 0.025;
	var _wobble_amount_x = 0.5 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 0.5 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_yellow, 0.45);
}
gpu_set_blendmode(bm_normal);


#endregion

#region XP
with(o_xp_spawn){
	var _wobble = 0.025;
	var _wobble_amount_x = 0.5 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 0.5 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_blue, 0.45);
}
gpu_set_blendmode(bm_normal);
#endregion

#region SAW
with(o_saw_spin){
	var _wobble = 0.025;
	var _wobble_amount_x = 1.7 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 1.7 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_orange, 0.55);
	

}
gpu_set_blendmode(bm_normal);
#endregion

#region SUMMON VFX
with(o_summon){
	var _wobble = 0.02;
	var _wobble_amount_x = 1 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 1 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_purple, 0.55);
	

}
gpu_set_blendmode(bm_normal);
#endregion

#region PILLAR
with(o_pillar){
	var _wobble = 0.2;
	var _wobble_amount_x = 1.7 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 1.7 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x , y + 20, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x , y + 20, _wobble_amount_x, _wobble_amount_y, 0, c_aqua, 0.55);
	

}
gpu_set_blendmode(bm_normal);
#endregion

#region SUMMON SPAWNER
with(o_summon_spawner){
	var _wobble = 0.2;
	var _wobble_amount_x = 2 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 2 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x - 5 , y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x - 5, y, _wobble_amount_x, _wobble_amount_y, 0, c_purple, 0.55);
	

}
gpu_set_blendmode(bm_normal);
#endregion

#region PURP CIRC
with(o_purp_circ){
	var _wobble = 0.2;
	var _wobble_amount_x = 5 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 5 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_purple, 0.6);
	

}
gpu_set_blendmode(bm_normal);
#endregion

#region PURP CIRC END
with(o_purp_circ_end){
	var _wobble = 0.2;
	var _wobble_amount_x = 5 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 5 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_purple, 0.6);
	

}
gpu_set_blendmode(bm_normal);
#endregion

#region HAIL RAIN
with(o_hail_rain){
	var _wobble = 0.4;
	var _wobble_amount_x = 2 + random_range(-_wobble, _wobble);
	var _wobble_amount_y = 2 + random_range(-_wobble, _wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_light_cutout, 0, x, y, _wobble_amount_x, _wobble_amount_y, 0, c_purple, 0.5);
	

}
gpu_set_blendmode(bm_normal);
#endregion

surface_reset_target();

draw_surface(lighting_surface, 0, 0);