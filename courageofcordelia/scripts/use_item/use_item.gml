function use_item(item) {        
	
	
	//testing
		//working
	if (item.type == TYPE.WEAPON) {   
        if (obj_equip_gun.gun_item[obj_equip_gun.gun_index].name != item.name) {
			//check if item is in gun slot and we add a new gun, move the old one back to inv
			if obj_equip_gun.gun_item[obj_equip_gun.gun_index].sprite != s_empty{
				obj_inventory.inventory.item_add(obj_equip_gun.gun_item[obj_equip_gun.gun_index].name, 1, obj_equip_gun.gun_item[obj_equip_gun.gun_index].sprite, obj_equip_gun.gun_item[obj_equip_gun.gun_index].type, obj_equip_gun.gun_item[obj_equip_gun.gun_index].weapon_equiping_arg)
			}
            obj_equip_gun.equip_gun.item_subtract(obj_equip_gun.gun_item[obj_equip_gun.gun_index].name, 1);
            obj_equip_gun.equip_gun.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg);
            obj_inventory.inventory.item_subtract(item.name, 1);
            o_player.my_weapon = item.weapon_equiping_arg
        }
        return;
    }
	
	if (item.type == TYPE.HELMS) {   
        if (obj_equip_helm.helm_item[obj_equip_helm.helm_index].name != item.name) {
            obj_equip_helm.equip_helm.item_subtract(obj_equip_helm.helm_item[obj_equip_helm.helm_index].name, 1);
            obj_equip_helm.equip_helm.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg);
            obj_inventory.inventory.item_subtract(item.name, 1);
        }
        return;
    }
	
	if (item.type == TYPE.AMULETS) {   
        if (obj_equip_amulet.amulet_item[obj_equip_amulet.amulet_index].name != item.name) {
            obj_equip_amulet.equip_amulet.item_subtract(obj_equip_amulet.amulet_item[obj_equip_amulet.amulet_index].name, 1);
            obj_equip_amulet.equip_amulet.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg);
            obj_inventory.inventory.item_subtract(item.name, 1);
        }
        return;
    }
	
	if (item.type == TYPE.CHESTS) {   
        if (obj_equip_chest.chest_item[obj_equip_chest.chest_index].name != item.name) {
            obj_equip_chest.equip_chest.item_subtract(obj_equip_chest.chest_item[obj_equip_chest.chest_index].name, 1);
            obj_equip_chest.equip_chest.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg);
            obj_inventory.inventory.item_subtract(item.name, 1);
        }
        return;
    }
	
	if (item.type == TYPE.PANTS) {   
        if (obj_equip_pants.pants_item[obj_equip_pants.pants_index].name != item.name) {
            obj_equip_pants.equip_pants.item_subtract(obj_equip_pants.pants_item[obj_equip_pants.pants_index].name, 1);
            obj_equip_pants.equip_pants.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg);
            obj_inventory.inventory.item_subtract(item.name, 1);
        }
        return;
    }
	
	if (item.type == TYPE.BOOTS) {   
        if (obj_equip_boots.boots_item[obj_equip_boots.boots_index].name != item.name) {
            obj_equip_boots.equip_boots.item_subtract(obj_equip_boots.boots_item[obj_equip_boots.boots_index].name, 1);
            obj_equip_boots.equip_boots.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg);
            obj_inventory.inventory.item_subtract(item.name, 1);
        }
        return;
    }
	
	if (item.type == TYPE.GLOVES) {   
        if (obj_equip_glove.glove_item[obj_equip_glove.glove_index].name != item.name) {
            obj_equip_glove.equip_glove.item_subtract(obj_equip_glove.glove_item[obj_equip_glove.glove_index].name, 1);
            obj_equip_glove.equip_glove.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg);
            obj_inventory.inventory.item_subtract(item.name, 1);
        }
        return;
    }
	
	if (item.type == TYPE.CLOAKS) {   
        if (obj_equip_cloak.cloak_item[obj_equip_cloak.cloak_index].name != item.name) {
            obj_equip_cloak.equip_cloak.item_subtract(obj_equip_cloak.cloak_item[obj_equip_cloak.cloak_index].name, 1);
            obj_equip_cloak.equip_cloak.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg);
            obj_inventory.inventory.item_subtract(item.name, 1);
        }
        return;
    }
	
	if (item.type == TYPE.RINGS) {   
        if (obj_equip_rings.rings_item[obj_equip_rings.rings_index].name != item.name) {
            obj_equip_rings.equip_rings.item_subtract(obj_equip_rings.rings_item[obj_equip_rings.rings_index].name, 1);
            obj_equip_rings.equip_rings.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg);
            obj_inventory.inventory.item_subtract(item.name, 1);
        }
        return;
    }
    
    obj_inventory.inventory.item_subtract(item.name, 1);
	show_debug_message("inventory item subtract call activated")
}



function unequip_item(item) {      
	
    if (item.type == TYPE.WEAPON) {   
        obj_equip_gun.equip_gun.item_subtract(item.name, item.quantity);
        obj_inventory.inventory.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg)
		obj_equip_gun.equip_gun.item_add("Empty", 1, s_empty, TYPE.WEAPON, noone);
        o_player.my_weapon = global.WeaponList.tyranny;
		show_debug_message("Unequiping weapon to inv.")
        return;
    }
                                                
	
    if (item.type == TYPE.GLOVES) {   
        obj_equip_glove.equip_glove.item_subtract(item.name, item.quantity);
        obj_inventory.inventory.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg)
		obj_equip_glove.equip_glove.item_add("Empty", 1, s_empty, TYPE.GLOVES, noone);
		show_debug_message("Unequiping glove to inv.")
        return;
    }
	
    if (item.type == TYPE.HELMS) {   
        obj_equip_helm.equip_helm.item_subtract(item.name, item.quantity);
        obj_inventory.inventory.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg)
		obj_equip_helm.equip_helm.item_add("Empty", 1, s_empty, TYPE.HELMS, noone);
		show_debug_message("Unequiping helm to inv.")
        return;
    }
	
    if (item.type == TYPE.AMULETS) {   
        obj_equip_amulet.equip_amulet.item_subtract(item.name, item.quantity);
        obj_inventory.inventory.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg)
		obj_equip_amulet.equip_amulet.item_add("Empty", 1, s_empty, TYPE.AMULETS, noone);
		show_debug_message("Unequiping amulet to inv.")
        return;
    }
	
    if (item.type == TYPE.CLOAKS) {   
        obj_equip_cloak.equip_cloak.item_subtract(item.name, item.quantity);
        obj_inventory.inventory.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg)
		obj_equip_cloak.equip_cloak.item_add("Empty", 1, s_empty, TYPE.CLOAKS, noone);
		show_debug_message("Unequiping cloak to inv.")
        return;
    }
	
    if (item.type == TYPE.CHESTS) {   
        obj_equip_chest.equip_chest.item_subtract(item.name, item.quantity);
        obj_inventory.inventory.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg)
		obj_equip_chest.equip_chest.item_add("Empty", 1, s_empty, TYPE.CHESTS, noone);
		show_debug_message("Unequiping chest to inv.")
        return;
    }
	
    if (item.type == TYPE.PANTS) {   
        obj_equip_pants.equip_pants.item_subtract(item.name, item.quantity);
        obj_inventory.inventory.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg)
		obj_equip_pants.equip_pants.item_add("Empty", 1, s_empty, TYPE.PANTS, noone);
		show_debug_message("Unequiping pants to inv.")
        return;
    }
	
    if (item.type == TYPE.BOOTS) {   
        obj_equip_boots.equip_boots.item_subtract(item.name, item.quantity);
        obj_inventory.inventory.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg)
		obj_equip_boots.equip_boots.item_add("Empty", 1, s_empty, TYPE.BOOTS, noone);
		show_debug_message("Unequiping boots to inv.")
        return;
    }
	
    if (item.type == TYPE.RINGS) {   
        obj_equip_rings.equip_rings.item_subtract(item.name, item.quantity);
        obj_inventory.inventory.item_add(item.name, 1, item.sprite, item.type, item.weapon_equiping_arg)
		obj_equip_rings.equip_rings.item_add("Empty", 1, s_empty, TYPE.RINGS, noone);
		show_debug_message("Unequiping ring to inv.")
        return;
    }
    
    obj_inventory.inventory.item_subtract(item.name, 1);
	
	
}