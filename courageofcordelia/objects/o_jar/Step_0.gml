if (place_meeting(x, y, o_arrow) or place_meeting(x, y, o_bomb) or place_meeting(x, y, o_explosion)) {
    if (collidable) {
		
		audio_play_sound(choose(Vases_Breaking_1, Vases_Breaking_2, Vases_Breaking_3), 1, false);
		instance_create_layer(x, y, "Enemy", o_jar_break_fx);
		sprite_index = s_jar_broken;
		
		#region Jar Spawns
		var _chance = random(100)
		if (_chance < 90){
			instance_create_layer(x, y, "Enemy", o_coin_spawn);
			instance_create_layer(x, y, "Enemy", o_xp_spawn);
		}
		if (_chance >= 90){
			instance_create_depth(x, y, -800, o_spawn_in_vfx)
			instance_create_layer(x, y, "Enemy", o_theif);
		}
		#endregion
		
		sprite_index = noone;
		
        collidable = false;
    }
} else {
    collidable = true;
	
}

