function use_item(item) {        

	if (item.type == TYPE.WEAPON) {   
        if (obj_equip_gun.gun_item[obj_equip_gun.gun_index].name != item.name) {
			//check if item is in gun slot and we add a new gun, move the old one back to inv
			if obj_equip_gun.gun_item[obj_equip_gun.gun_index].sprite != s_empty{
				obj_inventory.inventory.item_add(obj_equip_gun.gun_item[obj_equip_gun.gun_index].name, 1,
				obj_equip_gun.gun_item[obj_equip_gun.gun_index].sprite,
				obj_equip_gun.gun_item[obj_equip_gun.gun_index].type,
				obj_equip_gun.gun_item[obj_equip_gun.gun_index].weapon_equiping_arg,
				obj_equip_gun.gun_item[obj_equip_gun.gun_index].description,
				obj_equip_gun.gun_item[obj_equip_gun.gun_index].style,
				obj_equip_gun.gun_item[obj_equip_gun.gun_index].armor_bonus,
				obj_equip_gun.gun_item[obj_equip_gun.gun_index].damage_bonus)
			}
            obj_equip_gun.equip_gun.item_subtract(obj_equip_gun.gun_item[obj_equip_gun.gun_index].name, 1);
            obj_equip_gun.equip_gun.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg, item.description, item.style, item.armor_bonus, item.damage_bonus);
            obj_inventory.inventory.item_subtract(item.name, 1);
            o_player.my_weapon = item.weapon_equiping_arg
        }
        return;
    }
	
	if (item.type == TYPE.HELMS) {   
        if (obj_equip_helm.helm_item[obj_equip_helm.helm_index].name != item.name) {
            obj_equip_helm.equip_helm.item_subtract(obj_equip_helm.helm_item[obj_equip_helm.helm_index].name, 1);
            obj_equip_helm.equip_helm.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg, item.description, item.style, item.armor_bonus, item.damage_bonus);
            obj_inventory.inventory.item_subtract(item.name, 1);
        }
        return;
    }
	
	if (item.type == TYPE.AMULETS) {   
        if (obj_equip_amulet.amulet_item[obj_equip_amulet.amulet_index].name != item.name) {
            obj_equip_amulet.equip_amulet.item_subtract(obj_equip_amulet.amulet_item[obj_equip_amulet.amulet_index].name, 1);
            obj_equip_amulet.equip_amulet.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg, item.description, item.style, item.armor_bonus, item.damage_bonus);
            obj_inventory.inventory.item_subtract(item.name, 1);
        }
        return;
    }
	
	if (item.type == TYPE.CHESTS) {   
        if (obj_equip_chest.chest_item[obj_equip_chest.chest_index].name != item.name) {
            obj_equip_chest.equip_chest.item_subtract(obj_equip_chest.chest_item[obj_equip_chest.chest_index].name, 1);
            obj_equip_chest.equip_chest.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg, item.description, item.style, item.armor_bonus, item.damage_bonus);
            obj_inventory.inventory.item_subtract(item.name, 1);
        }
        return;
    }
	
	if (item.type == TYPE.PANTS) {   
        if (obj_equip_pants.pants_item[obj_equip_pants.pants_index].name != item.name) {
            obj_equip_pants.equip_pants.item_subtract(obj_equip_pants.pants_item[obj_equip_pants.pants_index].name, 1);
            obj_equip_pants.equip_pants.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg, item.description, item.style, item.armor_bonus, item.damage_bonus);
            obj_inventory.inventory.item_subtract(item.name, 1);
        }
        return;
    }
	
	if (item.type == TYPE.BOOTS) {   
        if (obj_equip_boots.boots_item[obj_equip_boots.boots_index].name != item.name) {
            obj_equip_boots.equip_boots.item_subtract(obj_equip_boots.boots_item[obj_equip_boots.boots_index].name, 1);
            obj_equip_boots.equip_boots.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg, item.description, item.style, item.armor_bonus, item.damage_bonus);
            obj_inventory.inventory.item_subtract(item.name, 1);
        }
        return;
    }
	
	if (item.type == TYPE.GLOVES) {   
        if (obj_equip_glove.glove_item[obj_equip_glove.glove_index].name != item.name) {
            obj_equip_glove.equip_glove.item_subtract(obj_equip_glove.glove_item[obj_equip_glove.glove_index].name, 1);
            obj_equip_glove.equip_glove.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg, item.description, item.style, item.armor_bonus, item.damage_bonus);
            obj_inventory.inventory.item_subtract(item.name, 1);
        }
        return;
    }
	
	if (item.type == TYPE.CLOAKS) {   
        if (obj_equip_cloak.cloak_item[obj_equip_cloak.cloak_index].name != item.name) {
            obj_equip_cloak.equip_cloak.item_subtract(obj_equip_cloak.cloak_item[obj_equip_cloak.cloak_index].name, 1);
            obj_equip_cloak.equip_cloak.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg, item.description, item.style, item.armor_bonus, item.damage_bonus);
            obj_inventory.inventory.item_subtract(item.name, 1);
        }
        return;
    }
	
	if (item.type == TYPE.RINGS) {   
        if (obj_equip_rings.rings_item[obj_equip_rings.rings_index].name != item.name) {
            obj_equip_rings.equip_rings.item_subtract(obj_equip_rings.rings_item[obj_equip_rings.rings_index].name, 1);
            obj_equip_rings.equip_rings.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg, item.description, item.style, item.armor_bonus, item.damage_bonus);
            obj_inventory.inventory.item_subtract(item.name, 1);
        }
        return;
    }
	
	if (item.type == TYPE.CONSUME) {   
        if (obj_quickslots1.quickslots1_item[obj_quickslots1.quickslots1_index].name = "Empty") {
            obj_quickslots1.quickslots1.item_subtract(obj_quickslots1.quickslots1_item[obj_quickslots1.quickslots1_index].name, 1);
		}
            obj_quickslots1.quickslots1.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg, item.description, item.style, item.armor_bonus, item.damage_bonus);
            obj_inventory.inventory.item_subtract(item.name, 1);

        return;
    }
    
    obj_inventory.inventory.item_subtract(item.name, 1);
	show_debug_message("inventory item subtract call activated")
}



function unequip_item(item) {      
	
    if (item.type == TYPE.WEAPON) {   
        obj_equip_gun.equip_gun.item_subtract(item.name, item.quantity);
        obj_inventory.inventory.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg, item.description, item.style, item.armor_bonus, item.damage_bonus)
		obj_equip_gun.equip_gun.item_add("Empty", 1, s_empty, TYPE.WEAPON, noone, noone, noone, 0, 0);
        o_player.my_weapon = global.WeaponList.purgatory;
		show_debug_message("Unequiping weapon to inv.")
        return;
    }
                                                
	
    if (item.type == TYPE.GLOVES) {   
        obj_equip_glove.equip_glove.item_subtract(item.name, item.quantity);
        obj_inventory.inventory.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg, item.description, item.style, item.armor_bonus, item.damage_bonus)
		obj_equip_glove.equip_glove.item_add("Empty", 1, s_empty, TYPE.GLOVES, noone, noone, noone, 0, 0);
		show_debug_message("Unequiping glove to inv.")
        return;
    }
	
    if (item.type == TYPE.HELMS) {   
        obj_equip_helm.equip_helm.item_subtract(item.name, item.quantity);
        obj_inventory.inventory.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg, item.description, item.style, item.armor_bonus, item.damage_bonus)
		obj_equip_helm.equip_helm.item_add("Empty", 1, s_empty, TYPE.HELMS, noone, noone, noone, 0, 0);
		show_debug_message("Unequiping helm to inv.")
        return;
    }
	
    if (item.type == TYPE.AMULETS) {   
        obj_equip_amulet.equip_amulet.item_subtract(item.name, item.quantity);
        obj_inventory.inventory.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg, item.description, item.style, item.armor_bonus, item.damage_bonus)
		obj_equip_amulet.equip_amulet.item_add("Empty", 1, s_empty, TYPE.AMULETS, noone, noone, noone, 0, 0);
		show_debug_message("Unequiping amulet to inv.")
        return;
    }
	
    if (item.type == TYPE.CLOAKS) {   
        obj_equip_cloak.equip_cloak.item_subtract(item.name, item.quantity);
        obj_inventory.inventory.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg, item.description, item.style, item.armor_bonus, item.damage_bonus)
		obj_equip_cloak.equip_cloak.item_add("Empty", 1, s_empty, TYPE.CLOAKS, noone, noone, noone, 0, 0);
		show_debug_message("Unequiping cloak to inv.")
        return;
    }
	
    if (item.type == TYPE.CHESTS) {   
        obj_equip_chest.equip_chest.item_subtract(item.name, item.quantity);
        obj_inventory.inventory.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg, item.description, item.style, item.armor_bonus, item.damage_bonus)
		obj_equip_chest.equip_chest.item_add("Empty", 1, s_empty, TYPE.CHESTS, noone, noone, noone, 0, 0);
		show_debug_message("Unequiping chest to inv.")
        return;
    }
	
    if (item.type == TYPE.PANTS) {   
        obj_equip_pants.equip_pants.item_subtract(item.name, item.quantity);
        obj_inventory.inventory.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg, item.description, item.style, item.armor_bonus, item.damage_bonus)
		obj_equip_pants.equip_pants.item_add("Empty", 1, s_empty, TYPE.PANTS, noone, noone, noone, 0, 0);
		show_debug_message("Unequiping pants to inv.")
        return;
    }
	
    if (item.type == TYPE.BOOTS) {   
        obj_equip_boots.equip_boots.item_subtract(item.name, item.quantity);
        obj_inventory.inventory.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg, item.description, item.style, item.armor_bonus, item.damage_bonus)
		obj_equip_boots.equip_boots.item_add("Empty", 1, s_empty, TYPE.BOOTS, noone, noone, noone, 0, 0);
		show_debug_message("Unequiping boots to inv.")
        return;
    }
	
    if (item.type == TYPE.RINGS) {   
        obj_equip_rings.equip_rings.item_subtract(item.name, item.quantity);
        obj_inventory.inventory.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg, item.description, item.style, item.armor_bonus, item.damage_bonus)
		obj_equip_rings.equip_rings.item_add("Empty", 1, s_empty, TYPE.RINGS, noone, noone, noone, 0, 0);
		show_debug_message("Unequiping ring to inv.")
        return;
    }
	
	if (item.type == TYPE.CONSUME) {   
        obj_quickslots1.quickslots1.item_subtract(item.name, item.quantity);
        obj_inventory.inventory.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg, item.description, item.style, item.armor_bonus, item.damage_bonus)
		obj_quickslots1.quickslots1.item_add("Empty", 1, s_empty, TYPE.CONSUME, noone, noone, noone, 0, 0);
		show_debug_message("Unequiping consume to inv.")
        return;
    }
    
    obj_inventory.inventory.item_subtract(item.name, 1);
	
	
}

function buy_item(item){
		if (item.type == TYPE.CONSUME) {   
        o_trader.trader_shop.item_subtract(item.name, 1);
        obj_inventory.inventory.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg, item.description, item.style, item.armor_bonus, item.damage_bonus)
		//o_trader.trader_shop.item_add("Empty", 1, s_empty, TYPE.CONSUME, noone, noone, noone, 0, 0);
		show_debug_message("buying consume, putting in player inv")
        return;
    }
}