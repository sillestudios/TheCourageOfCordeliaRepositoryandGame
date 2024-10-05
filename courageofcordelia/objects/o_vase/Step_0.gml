
if (place_meeting(x, y, o_arrow) or place_meeting(x, y, o_bomb) or place_meeting(x, y, o_explosion)) {
    if (collidable) && image_index < 4{

		audio_play_sound(break_sfx, 1, false);
		image_speed = 1;
		
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
		
        collidable = false;
    }
} else {
    collidable = true;
	
}

if image_index >= 1{sprite_index = noone;}
