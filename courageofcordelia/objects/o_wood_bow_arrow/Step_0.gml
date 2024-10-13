var _dist = point_distance(xstart, ystart, x, y);

if _dist > range {
	projectile_die();
}

//add projectile trail effect
//instance_create_layer(projectileObject.x, projectileObject.y, "Projectile", trail_vfx);



if place_meeting(x, y, o_solid){
	
	if projectileObject == o_arrow {
		arrow_stuck();
	}else projectile_die();
	
	if projectile_wall_sfx{
		audio_play_sound(choose(projectile_impact_sound1, projectile_impact_sound2, projectile_impact_sound3), 1, false);
	}
	
	projectile_wall_sfx = false;
	
}
