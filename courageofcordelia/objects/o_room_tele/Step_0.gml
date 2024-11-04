//spawn an enemy
timer++;


if timer >= spawn_time //&& !place_meeting(x, y+16, o_quasit)
	{
		//create spawn vfx
		instance_create_depth(x + 10, y + 10, -800, o_spawn_in_vfx);
		//create an enemy
		
		var _enemy = random(6)
	
		if _enemy = 1{
			instance_create_layer(x, y, "Enemy", o_enemy)
		}
		if _enemy = 2{
			instance_create_layer(x, y, "Enemy", o_bomber)
		}
		if _enemy = 3{
			instance_create_layer(x, y, "Enemy", o_warlock)
		}
		if _enemy = 4{
			instance_create_layer(x, y, "Enemy", o_ratmage)
		}
		if _enemy = 5{
			instance_create_layer(x, y, "Enemy", o_theif)
		}
		if _enemy = 6{
			instance_create_layer(x, y, "Enemy", o_quasit)
		}
		
		//reset timer
		timer = 0;
	}

if spawn{

	
}