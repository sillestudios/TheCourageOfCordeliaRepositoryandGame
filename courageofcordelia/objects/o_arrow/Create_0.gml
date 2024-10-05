
//variables for all projectiles
damage = 5;
range = 160;
owner_id = noone;
knockback_time = 10;
trail_vfx = o_arrow_trail;
projectileObject = o_arrow;
projectile_hit_fx = o_arrow_explode;
projectile_wall_sfx = true;
projectile_impact_sound1 = sound_arrow_impact;
projectile_impact_sound2 = sound_arrow_impact2;
projectile_impact_sound3 = sound_arrow_impact3;

function projectile_die(){
	speed = 0;
	instance_change(projectile_hit_fx, false);
}

function arrow_stuck(){
	speed = 0;
	instance_change(o_arrow_in_wall, false);
}

