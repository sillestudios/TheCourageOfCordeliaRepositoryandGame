//spawn an enemy
timer++;


if timer >= spawnTime
	{
		if o_pillar.kill_countdown > 0{
			
			//create spawn vfx
			instance_create_depth(x + 10, y + 10, -8000, o_dark_spawn);
			
			//create an enemy
			var _inst  = instance_create_layer(x + 10, y + 10, "Enemy", choose(o_theif, o_quasit));
		
			with(_inst)
				{
				
				}
		
			//reset timer
			timer = 0;
			
		}
	}
