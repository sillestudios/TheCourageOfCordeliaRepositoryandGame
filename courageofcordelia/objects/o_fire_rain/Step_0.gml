
if image_index >= 23 && image_index <= 25{
	var _rain = instance_create_depth(x, y, -1000, o_hailstorm_hitbox);
	with (_rain){
		_rain.owner_id = id;
		_rain.damage = o_fire_rain.damage;
		_rain.knockback_time = o_fire_rain.knockback_time;
	}
			
}
