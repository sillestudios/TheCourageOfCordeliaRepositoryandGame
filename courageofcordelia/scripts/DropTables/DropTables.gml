function drop_table_1(){
	var _chance = irandom(100)
		if (_chance < 25){
			//inv_inventory_drop_item(4,1,x,y)
		}
}

function drop_table_2(){
	var _chance = irandom(100)
	if (_chance < 30){
		//inv_inventory_drop_item(9, 2, x,y);
	}
}

function chest_loot_drop(){
	
	var _yOff = -15;
	
	instance_create_layer(x, y - _yOff, "Enemy", o_coin_spawn);
	instance_create_layer(x, y - _yOff, "Enemy", o_coin_spawn);
	instance_create_layer(x, y - _yOff, "Enemy", o_coin_spawn);

	
	var _chance = irandom(100)
	
	if (_chance >= 13 and _chance <= 22){
		
		instance_create_layer(x, y - _yOff, "Enemy", o_sidewinder_drop);
		instance_create_depth(o_sidewinder_drop.x, o_sidewinder_drop.y - _yOff, -800, o_sparks);
	
	}
	
	if (_chance < 90){
		instance_create_layer(x,  y - _yOff, "Enemy", o_xp_spawn)
	}
	
	if (_chance < 15){
		instance_create_depth(x, y - _yOff, -800, o_spawn_in_vfx);
		instance_create_layer(x, y - _yOff, "Enemy", o_theif);
	}
	
}