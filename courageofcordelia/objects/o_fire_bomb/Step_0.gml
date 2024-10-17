
if image_index >= 11 && image_index <= 12{
	var _bomb = instance_create_depth(x, y, -1000, o_hailstorm_hitbox);
	with (_bomb){
		_bomb.owner_id = id;
		_bomb.damage = o_fire_bomb.damage;
		_bomb.knockback_time = o_fire_bomb.knockback_time;
	}
			
}



