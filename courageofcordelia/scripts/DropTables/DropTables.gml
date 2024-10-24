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
		
		var _loot_tier = irandom(100)
		
		if (_loot_tier >= 80){
			
			blue_loot()
		}
		if (_loot_tier < 80 && _loot_tier >= 70 ){
			
			purple_loot()
		}
		if (_loot_tier < 70 && _loot_tier >= 65){
			
			red_loot()
		}
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
		var _drop_chance = irandom(31)
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
		if (_drop_chance = 21){
			instance_create_layer(x, y - _yOff, "Enemy", o_holy_amulet);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Holy Amulet", 1);
		}
		if (_drop_chance = 22){
			instance_create_layer(x, y - _yOff, "Enemy", o_perdot_amulet);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Perdot Amulet", 1);
		}
		if (_drop_chance = 23){
			instance_create_layer(x, y - _yOff, "Enemy", o_gold_necklace);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Gold Necklace", 1);
		}
		if (_drop_chance = 24){
			instance_create_layer(x, y - _yOff, "Enemy", o_green_pearl_necklace);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Green Pearl Necklace", 1);
		}
		if (_drop_chance = 25){
			instance_create_layer(x, y - _yOff, "Enemy", o_red_cloak);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Red Cloak", 1);
		}
		if (_drop_chance = 26){
			instance_create_layer(x, y - _yOff, "Enemy", o_purple_cloak);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Purple Cloak", 1);
		}
		if (_drop_chance = 27){
			instance_create_layer(x, y - _yOff, "Enemy", o_orange_cloak);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Orange Cloak", 1);
		}
		if (_drop_chance = 28){
			instance_create_layer(x, y - _yOff, "Enemy", o_emerald_ring);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Emerald Ring", 1);
		}
		if (_drop_chance = 29){
			instance_create_layer(x, y - _yOff, "Enemy", o_pink_opal_ring);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Pink Opal Ring", 1);
		}
		if (_drop_chance = 30){
			instance_create_layer(x, y - _yOff, "Enemy", o_silver_ring);
			o_loot_feed._loot_feed.add_feed(c_green, 1, "Silver Ring", 1);
		}

}
	
function blue_loot(){
		var _yOff = -15;
		var _drop_chance = irandom(28)
		
		if (_drop_chance = 1){
			instance_create_layer(x, y - _yOff, "Enemy", o_iron_helm);
			o_loot_feed._loot_feed.add_feed(c_blue, 1, "Iron Helm", 1);
		}
		if (_drop_chance = 2){
			instance_create_layer(x, y - _yOff, "Enemy", o_iron_boots);
			o_loot_feed._loot_feed.add_feed(c_blue, 1, "Iron Boots", 1);
		}
		if (_drop_chance = 3){
			instance_create_layer(x, y - _yOff, "Enemy", o_iron_chest);
			o_loot_feed._loot_feed.add_feed(c_blue, 1, "Iron Chest", 1);
		}
		if (_drop_chance = 4){
			instance_create_layer(x, y - _yOff, "Enemy", o_iron_pants);
			o_loot_feed._loot_feed.add_feed(c_blue, 1, "Iron Pants", 1);
		}
		if (_drop_chance = 5){
			instance_create_layer(x, y - _yOff, "Enemy", o_iron_gloves);
			o_loot_feed._loot_feed.add_feed(c_blue, 1, "Iron Gloves", 1);
		}
		if (_drop_chance = 6){
			instance_create_layer(x, y - _yOff, "Enemy", o_blue_mage_boots);
			o_loot_feed._loot_feed.add_feed(c_blue, 1, "Blue Mage Boots", 1);
		}
		if (_drop_chance = 7){
			instance_create_layer(x, y - _yOff, "Enemy", o_blue_mage_chest);
			o_loot_feed._loot_feed.add_feed(c_blue, 1, "Blue Mage Chest", 1);
		}
		if (_drop_chance = 8){
			instance_create_layer(x, y - _yOff, "Enemy", o_blue_mage_gloves);
			o_loot_feed._loot_feed.add_feed(c_blue, 1, "Blue Mage Gloves", 1);
		}
		if (_drop_chance = 9){
			instance_create_layer(x, y - _yOff, "Enemy", o_blue_mage_hood);
			o_loot_feed._loot_feed.add_feed(c_blue, 1, "Bronze Helm", 1);
		}
		if (_drop_chance = 10){
			instance_create_layer(x, y - _yOff, "Enemy", o_blue_mage_pants);
			o_loot_feed._loot_feed.add_feed(c_blue, 1, "Blue Mage Hood", 1);
		}
		if (_drop_chance = 11){
			instance_create_layer(x, y - _yOff, "Enemy", o_rare_robin_hood_chest);
			o_loot_feed._loot_feed.add_feed(c_blue, 1, "Tan Ranger Hat", 1);
		}
		if (_drop_chance = 12){
			instance_create_layer(x, y - _yOff, "Enemy", o_rare_robin_hood_helm);
			o_loot_feed._loot_feed.add_feed(c_blue, 1, "Tan Ranger Helm", 1);
		}
		if (_drop_chance = 13){
			instance_create_layer(x, y - _yOff, "Enemy", o_rare_robin_hood_pants);
			o_loot_feed._loot_feed.add_feed(c_blue, 1, "Tan Ranger Bottoms", 1);
		}
		if (_drop_chance = 14){
			instance_create_layer(x, y - _yOff, "Enemy", o_white_gloves);
			o_loot_feed._loot_feed.add_feed(c_blue, 1, "White Gloves", 1);
		}
		if (_drop_chance = 15){
			instance_create_layer(x, y - _yOff, "Enemy", o_heart_amulet);
			o_loot_feed._loot_feed.add_feed(c_blue, 1, "Heart Amulet", 1);
		}
		if (_drop_chance = 16){
			instance_create_layer(x, y - _yOff, "Enemy", o_emerald_amulet);
			o_loot_feed._loot_feed.add_feed(c_blue, 1, "Emerald Amulet", 1);
		}
		if (_drop_chance = 17){
			instance_create_layer(x, y - _yOff, "Enemy", o_red_royal_cloak);
			o_loot_feed._loot_feed.add_feed(c_blue, 1, "Red royal cloak.", 1);
		}
		if (_drop_chance = 18){
			instance_create_layer(x, y - _yOff, "Enemy", o_purple_royal_cloak);
			o_loot_feed._loot_feed.add_feed(c_blue, 1, "Purple royal clo", 1);
		}
		if (_drop_chance = 19){
			instance_create_layer(x, y - _yOff, "Enemy", o_orange_royal_cloak);
			o_loot_feed._loot_feed.add_feed(c_blue, 1, "Bronze Helm", 1);
		}
		if (_drop_chance = 20){
			instance_create_layer(x, y - _yOff, "Enemy", o_ring_of_embers);
			o_loot_feed._loot_feed.add_feed(c_blue, 1, "Bronze Helm", 1);
		}
		if (_drop_chance = 21){
			instance_create_layer(x, y - _yOff, "Enemy", o_ring_of_the_sea);
			o_loot_feed._loot_feed.add_feed(c_blue, 1, "Bronze Helm", 1);
		}
		if (_drop_chance = 22){
			instance_create_layer(x, y - _yOff, "Enemy", o_onyx_ring);
			o_loot_feed._loot_feed.add_feed(c_blue, 1, "Bronze Helm", 1);
		}
		if (_drop_chance = 23){
			instance_create_layer(x, y - _yOff, "Enemy", o_large_onyx_ring);
			o_loot_feed._loot_feed.add_feed(c_blue, 1, "Bronze Helm", 1);
		}
		if (_drop_chance = 24){
			instance_create_layer(x, y - _yOff, "Enemy", o_ring_of_splitting);
			o_loot_feed._loot_feed.add_feed(c_blue, 1, "Bronze Helm", 1);
		}
		if (_drop_chance = 25){
			instance_create_layer(x, y - _yOff, "Enemy", o_rings_of_duality);
			o_loot_feed._loot_feed.add_feed(c_blue, 1, "Bronze Helm", 1);
		}
		if (_drop_chance = 26){
			instance_create_layer(x, y - _yOff, "Enemy", o_gold_ring);
			o_loot_feed._loot_feed.add_feed(c_blue, 1, "Bronze Helm", 1);
		}
		if (_drop_chance = 27){
			instance_create_layer(x, y - _yOff, "Enemy", o_gold_emerald_ring);
			o_loot_feed._loot_feed.add_feed(c_blue, 1, "Bronze Helm", 1);
		}
}

function purple_loot(){
		var _yOff = -15;
		var _drop_chance = irandom(28)
		
		if (_drop_chance = 1){
			instance_create_layer(x, y - _yOff, "Enemy", o_masterwork_helm);
			o_loot_feed._loot_feed.add_feed(c_purple, 1, "Masterwork Helm", 1);
		}
		if (_drop_chance = 2){
			instance_create_layer(x, y - _yOff, "Enemy", o_masterwork_boots);
			o_loot_feed._loot_feed.add_feed(c_purple, 1, "Masterwork Boots", 1);
		}
		if (_drop_chance = 3){
			instance_create_layer(x, y - _yOff, "Enemy", o_masterwork_chest);
			o_loot_feed._loot_feed.add_feed(c_purple, 1, "Masterwork Chest", 1);
		}
		if (_drop_chance = 4){
			instance_create_layer(x, y - _yOff, "Enemy", o_masterwork_pants);
			o_loot_feed._loot_feed.add_feed(c_purple, 1, "Masterwork Pants", 1);
		}
		if (_drop_chance = 5){
			instance_create_layer(x, y - _yOff, "Enemy", o_masterwork_gloves);
			o_loot_feed._loot_feed.add_feed(c_purple, 1, "Masterwork Gloves", 1);
		}
		if (_drop_chance = 6){
			instance_create_layer(x, y - _yOff, "Enemy", o_orange_mage_hood);
			o_loot_feed._loot_feed.add_feed(c_purple, 1, "Orange Mage Hood", 1);
		}
		if (_drop_chance = 7){
			instance_create_layer(x, y - _yOff, "Enemy", o_orange_mage_chest);
			o_loot_feed._loot_feed.add_feed(c_purple, 1, "Orange Mage Chest", 1);
		}
		if (_drop_chance = 8){
			instance_create_layer(x, y - _yOff, "Enemy", o_orange_mage_pants);
			o_loot_feed._loot_feed.add_feed(c_purple, 1, "Orange Mage Pants", 1);
		}
		if (_drop_chance = 9){
			instance_create_layer(x, y - _yOff, "Enemy", o_masterwork_boots);
			o_loot_feed._loot_feed.add_feed(c_purple, 1, "Orange Mage Boots", 1);
		}
		if (_drop_chance = 10){
			instance_create_layer(x, y - _yOff, "Enemy", o_orange_mage_gloves);
			o_loot_feed._loot_feed.add_feed(c_purple, 1, "Orange Mage Gloves", 1);
		}
		if (_drop_chance = 11){
			instance_create_layer(x, y - _yOff, "Enemy", o_jester_helm);
			o_loot_feed._loot_feed.add_feed(c_purple, 1, "Jester Helm", 1);
		}
		if (_drop_chance = 12){
			instance_create_layer(x, y - _yOff, "Enemy", o_jester_chest);
			o_loot_feed._loot_feed.add_feed(c_purple, 1, "Jester Chest", 1);
		}
		if (_drop_chance = 13){
			instance_create_layer(x, y - _yOff, "Enemy", o_jester_pants);
			o_loot_feed._loot_feed.add_feed(c_purple, 1, "Jester Pants", 1);
		}
		if (_drop_chance = 14){
			instance_create_layer(x, y - _yOff, "Enemy", o_jester_boots);
			o_loot_feed._loot_feed.add_feed(c_purple, 1, "Jester Boots", 1);
		}
		if (_drop_chance = 15){
			instance_create_layer(x, y - _yOff, "Enemy", o_jester_gloves);
			o_loot_feed._loot_feed.add_feed(c_purple, 1, "Jester Gloves", 1);
		}
		if (_drop_chance = 16){
			instance_create_layer(x, y - _yOff, "Enemy", o_orions_helm);
			o_loot_feed._loot_feed.add_feed(c_purple, 1, "Orion's Helm", 1);
		}
		if (_drop_chance = 17){
			instance_create_layer(x, y - _yOff, "Enemy", o_amulet_fortune);
			o_loot_feed._loot_feed.add_feed(c_purple, 1, "Amulet of Fortune", 1);
		}
		if (_drop_chance = 18){
			instance_create_layer(x, y - _yOff, "Enemy", o_amethyst_amulet);
			o_loot_feed._loot_feed.add_feed(c_purple, 1, "Amethyst Amulet", 1);
		}
		if (_drop_chance = 19){
			instance_create_layer(x, y - _yOff, "Enemy", o_red_master_cloak);
			o_loot_feed._loot_feed.add_feed(c_purple, 1, "Red Master Cloak", 1);
		}
		if (_drop_chance = 20){
			instance_create_layer(x, y - _yOff, "Enemy", o_purple_master_cloak);
			o_loot_feed._loot_feed.add_feed(c_purple, 1, "Purple Master Cloak", 1);
		}
		if (_drop_chance = 21){
			instance_create_layer(x, y - _yOff, "Enemy", o_green_master_cloak);
			o_loot_feed._loot_feed.add_feed(c_purple, 1, "Green Master Cloak", 1);
		}
		if (_drop_chance = 22){
			instance_create_layer(x, y - _yOff, "Enemy", o_gold_ring_of_embers);
			o_loot_feed._loot_feed.add_feed(c_purple, 1, "Gold Ring of Embers", 1);
		}
		if (_drop_chance = 23){
			instance_create_layer(x, y - _yOff, "Enemy", o_gold_ring_of_the_sea);
			o_loot_feed._loot_feed.add_feed(c_purple, 1, "Gold Ring of the Sea", 1);
		}
		if (_drop_chance = 24){
			instance_create_layer(x, y - _yOff, "Enemy", o_ring_of_hearts);
			o_loot_feed._loot_feed.add_feed(c_purple, 1, "Ring of Hearts", 1);
		}
		if (_drop_chance = 25){
			instance_create_layer(x, y - _yOff, "Enemy", o_gold_green_pearl_ring);
			o_loot_feed._loot_feed.add_feed(c_purple, 1, "Gold Green Pearl Ring", 1);
		}
		if (_drop_chance = 26){
			instance_create_layer(x, y - _yOff, "Enemy", o_peridot_ring);
			o_loot_feed._loot_feed.add_feed(c_purple, 1, "Peridot Ring", 1);
		}
		if (_drop_chance = 27){
			instance_create_layer(x, y - _yOff, "Enemy", o_amythest_ring);
			o_loot_feed._loot_feed.add_feed(c_purple, 1, "Amethyst Ring", 1);
		}
}

function red_loot(){
		var _yOff = -15;
		var _drop_chance = irandom(25)
		
		if (_drop_chance = 1){
			instance_create_layer(x, y - _yOff, "Enemy", o_red_mage_hat);
			o_loot_feed._loot_feed.add_feed(c_red, 1, "Red Mage Hat", 1);
		}
		if (_drop_chance = 2){
			instance_create_layer(x, y - _yOff, "Enemy", o_red_mage_chest);
			o_loot_feed._loot_feed.add_feed(c_red, 1, "Red Mage Chest", 1);
		}
		if (_drop_chance = 3){
			instance_create_layer(x, y - _yOff, "Enemy", o_red_mage_pants);
			o_loot_feed._loot_feed.add_feed(c_red, 1, "Red Mage Pants", 1);
		}
		if (_drop_chance = 4){
			instance_create_layer(x, y - _yOff, "Enemy", o_red_mage_boots);
			o_loot_feed._loot_feed.add_feed(c_red, 1, "Red Mage Boots", 1);
		}
		if (_drop_chance = 5){
			instance_create_layer(x, y - _yOff, "Enemy", o_red_mage_gloves);
			o_loot_feed._loot_feed.add_feed(c_red, 1, "Red Mage Gloves", 1);
		}
		if (_drop_chance = 6){
			instance_create_layer(x, y - _yOff, "Enemy", o_rare_jester_helm);
			o_loot_feed._loot_feed.add_feed(c_red, 1, "Quinn's Helm", 1);
		}
		if (_drop_chance = 7){
			instance_create_layer(x, y - _yOff, "Enemy", o_rare_jester_chest;
			o_loot_feed._loot_feed.add_feed(c_red, 1, "Quinn's Chest", 1);
		}
		if (_drop_chance = 8){
			instance_create_layer(x, y - _yOff, "Enemy", o_rare_jester_pants);
			o_loot_feed._loot_feed.add_feed(c_red, 1, "Quinn's Pants", 1);
		}
		if (_drop_chance = 9){
			instance_create_layer(x, y - _yOff, "Enemy", o_quinn_boots);
			o_loot_feed._loot_feed.add_feed(c_red, 1, "Quinn's Boots", 1);
		}
		if (_drop_chance = 10){
			instance_create_layer(x, y - _yOff, "Enemy", o_quinn_gloves);
			o_loot_feed._loot_feed.add_feed(c_red, 1, "Quinn's Gloves", 1);
		}
		if (_drop_chance = 11){
			instance_create_layer(x, y - _yOff, "Enemy", o_egaera_helm);
			o_loot_feed._loot_feed.add_feed(c_red, 1, "Egaera's Helm", 1);
		}
		if (_drop_chance = 12){
			instance_create_layer(x, y - _yOff, "Enemy", o_egaera_chest);
			o_loot_feed._loot_feed.add_feed(c_red, 1, "Egaera's Chest", 1);
		}
		if (_drop_chance = 13){
			instance_create_layer(x, y - _yOff, "Enemy", o_egaera_pants);
			o_loot_feed._loot_feed.add_feed(c_red, 1, "Egaera's Pants", 1);
		}
		if (_drop_chance = 14){
			instance_create_layer(x, y - _yOff, "Enemy", o_egaera_boots);
			o_loot_feed._loot_feed.add_feed(c_red, 1, "Egaera's Boots", 1);
		}
		if (_drop_chance = 15){
			instance_create_layer(x, y - _yOff, "Enemy", o_egaera_gloves);
			o_loot_feed._loot_feed.add_feed(c_red, 1, "Egaera's Gloves", 1);
		}
		if (_drop_chance = 16){
			instance_create_layer(x, y - _yOff, "Enemy", o_ilithyia_gloves);
			o_loot_feed._loot_feed.add_feed(c_red, 1, "Ilithyia's Gloves", 1);
		}
		if (_drop_chance = 17){
			instance_create_layer(x, y - _yOff, "Enemy", o_ilithyia_helm);
			o_loot_feed._loot_feed.add_feed(c_red, 1, "Ilithyia's Helm", 1);
		}
		if (_drop_chance = 18){
			instance_create_layer(x, y - _yOff, "Enemy", o_ilithyia_chest);
			o_loot_feed._loot_feed.add_feed(c_red, 1, "Ilithyia's Chest", 1);
		}
		if (_drop_chance = 19){
			instance_create_layer(x, y - _yOff, "Enemy", o_ilithyia_pants);
			o_loot_feed._loot_feed.add_feed(c_red, 1, "Ilithyia's Pants", 1);
		}
		if (_drop_chance = 20){
			instance_create_layer(x, y - _yOff, "Enemy", o_ilithyia_boots);
			o_loot_feed._loot_feed.add_feed(c_red, 1, "Ilithyia's Boots", 1);
		}
		if (_drop_chance = 21){
			instance_create_layer(x, y - _yOff, "Enemy", o_soulsplit_amulet);
			o_loot_feed._loot_feed.add_feed(c_red, 1, "Soul Split Amulet", 1);
		}
		if (_drop_chance = 22){
			instance_create_layer(x, y - _yOff, "Enemy", o_cloak_of_cloaks_cloak);
			o_loot_feed._loot_feed.add_feed(c_red, 1, "Cloak of Cloaks", 1);
		}
		if (_drop_chance = 23){
			instance_create_layer(x, y - _yOff, "Enemy", o_ring_of_enternal_love);
			o_loot_feed._loot_feed.add_feed(c_red, 1, "Ring of Eternal Love", 1);
		}
		if (_drop_chance = 24){
			instance_create_layer(x, y - _yOff, "Enemy", o_ring_of_wealth);
			o_loot_feed._loot_feed.add_feed(c_red, 1, "Ring of Wealth", 1);
		}
}