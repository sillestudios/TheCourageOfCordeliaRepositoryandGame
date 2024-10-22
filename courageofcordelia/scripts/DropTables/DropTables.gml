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
	o_loot_feed._loot_feed.add_feed(c_yellow, 1, "Coin", 1);
	instance_create_layer(x, y - _yOff, "Enemy", o_coin_spawn);
	o_loot_feed._loot_feed.add_feed(c_yellow, 1, "Coin", 1);
	instance_create_layer(x, y - _yOff, "Enemy", o_coin_spawn);
	o_loot_feed._loot_feed.add_feed(c_yellow, 1, "Coin", 1);

	
	var _chance = irandom(100)
	
	if (_chance < 90){
		instance_create_layer(x,  y - _yOff, "Enemy", o_xp_spawn)
	}
	
	if (_chance > 60 && _chance < 80){
		green_loot();
	}
	
	if (_chance < 5){
		instance_create_depth(x, y - _yOff, -800, o_spawn_in_vfx);
		instance_create_layer(x, y - _yOff, "Enemy", o_theif);
	}
	
	if (_chance <= 2){
		instance_create_layer(x, y - _yOff, "Enemy", o_silver_key);
		o_loot_feed._loot_feed.add_feed(c_purple, 1, "Silver Key", 1);
	}
	
}

function green_loot(){
		var _yOff = -15;
		var _drop_chance = irandom(22)
			//all green loots here at 1/total green loots
		if (_drop_chance = 1){
			instance_create_layer(x, y - _yOff, "Enemy", o_bronze_helm);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Bronze Helm", 1);
		}
		if (_drop_chance = 2){
			instance_create_layer(x, y - _yOff, "Enemy", o_pink_mage_boots);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Pink Mage Boots", 1);
		}
		if (_drop_chance = 3){
			instance_create_layer(x, y - _yOff, "Enemy", o_pink_mage_chest);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Pink Mage Chest", 1);
		}
		if (_drop_chance = 4){
			instance_create_layer(x, y - _yOff, "Enemy", o_pink_mage_gloves);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Pink Mage Gloves", 1);
		}
		if (_drop_chance = 5){
			instance_create_layer(x, y - _yOff, "Enemy", o_pink_mage_hood);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Pink Mage Hood", 1);
		}
		if (_drop_chance = 6){
			instance_create_layer(x, y - _yOff, "Enemy", o_pink_mage_pants);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Pink Mage Pants", 1);
		}
		if (_drop_chance = 7){
			instance_create_layer(x, y - _yOff, "Enemy", o_green_mage_boots);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Green Mage Boots", 1);
		}
		if (_drop_chance = 8){
			instance_create_layer(x, y - _yOff, "Enemy", o_green_mage_chest);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Green Mage Chest", 1);
		}
		if (_drop_chance = 9){
			instance_create_layer(x, y - _yOff, "Enemy", o_green_mage_gloves);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Green Mage Gloves", 1);
		}
		if (_drop_chance = 10){
			instance_create_layer(x, y - _yOff, "Enemy", o_green_mage_pants);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Green Mage Pants", 1);
		}
		if (_drop_chance = 11){
			instance_create_layer(x, y - _yOff, "Enemy", o_green_mage_hood);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Green Mage Hood", 1);
		}
		if (_drop_chance = 12){
			instance_create_layer(x, y - _yOff, "Enemy", o_robin_hood_helm);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Green Ranger Hat", 1);
		}
		if (_drop_chance = 13){
			instance_create_layer(x, y - _yOff, "Enemy", o_robin_hood_chest);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Green Ranger Tunic", 1);
		}
		if (_drop_chance = 14){
			instance_create_layer(x, y - _yOff, "Enemy", o_robin_hood_pants);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Green Ranger Bottoms", 1);
		}
		if (_drop_chance = 15){
			instance_create_layer(x, y - _yOff, "Enemy", o_bronze_boots);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Bronze Boots", 1);
		}
		if (_drop_chance = 16){
			instance_create_layer(x, y - _yOff, "Enemy", o_bronze_chest);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Bronze Chest", 1);
		}
		if (_drop_chance = 17){
			instance_create_layer(x, y - _yOff, "Enemy", o_bronze_gloves);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Bronze Gloves", 1);
		}
		if (_drop_chance = 18){
			instance_create_layer(x, y - _yOff, "Enemy", o_bronze_pants);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Bronze Platelegs", 1);
		}
		if (_drop_chance = 19){
			instance_create_layer(x, y - _yOff, "Enemy", o_sidewinder_drop);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Side-winder", 1);
		}
		if (_drop_chance = 20){
			instance_create_layer(x, y - _yOff, "Enemy", o_blaster_drop);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Big Blaster", 1);
		}

}