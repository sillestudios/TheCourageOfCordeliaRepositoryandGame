//spawn an enemy
timer++;


if timer >= spawnTime //&& !place_meeting(x, y+16, o_quasit)
	{
		//create spawn vfx
		instance_create_depth(x + 10, y + 10, -800, o_spawn_in_vfx);
		//create an enemy
		var _inst  = instance_create_layer(x + 10, y + 10, "Enemy", o_quasit);
		
		with(_inst)
			{
				
			}
		
		//reset timer
		timer = 0;
	}
