var mx = mouse_x;
var my = mouse_y;

if (can_show_inv) {
    if (mouse_check_button_released(mb_left)) {
        _inventory_items = inventory.item_get(); 

        for (var i = 0; i < inventory_rows * inventory_collumns; i++) {
            var column = i % inventory_collumns;
            var row = i div inventory_collumns;
            
            var _posX = inv_slot_x + (column * inv_sep);
            var _posY = inv_slot_y + (row * inv_sep);
            
            //hovering
            if (is_between(mx, (CameraX() + _posX), (CameraX() + _posX) + 24)) {
                if (is_between(my, (CameraY() + _posY), (CameraY() + _posY) + 24)) {
                    inventory_index = i;
                                    
                    if (inventory_index < array_length(_inventory_items)) {
                        show_debug_message("Using " + _inventory_items[inventory_index].name);
                        use_item(_inventory_items[inventory_index]);
                        break;
                    }
                    else {
                        show_debug_message("No inventory item here");
                    }
                }
            }
        }
    }
}



































/*var mx = mouse_x;
var my = mouse_y;


if can_show_inv{
	inv_is_visisble = true;
	if mouse_check_button_released(mb_left){
		var _inventory_items = inventory.item_get(); 

		for (var _row = 0; _row < inventory_rows; _row++){
			var _posY = 80 + (_row * inv_sep);
			for (var _collumn = 0; _collumn < inventory_collumns; _collumn++ ){
				var _posX = 311 + (_collumn * inv_sep);

				//hovering
				if (is_between(mx, (CameraX() + _posX), (CameraX() + _posX) + 24)){
					if (is_between(my, (CameraY() + _posY), (CameraY() + _posY) + 24)){
					var inventory_index = (_row * inventory_collumns) + _collumn;
				
					if inventory_index <= array_length(_inventory_items) - 1{
						show_debug_message("Using " + _inventory_items[inventory_index].name);
						
						inventory.item_subtract(_inventory_items[inventory_index].name, 1)
						
						
						if _inventory_items[inventory_index].name == "Side-winder"{
							
							 if obj_equip_gun.gun_item[obj_equip_gun.gun_index].name != "Side-winder"{
								obj_equip_gun.equip_gun.item_subtract(obj_equip_gun.gun_item[obj_equip_gun.gun_index].name, 1);
								obj_equip_gun.equip_gun.item_add("Side-winder", 1, s_sidewinder_drop);
								inventory.item_subtract(_inventory_items[inventory_index].name, 1);
								o_player.my_weapon = global.WeaponList.sidewinder;
							}
						}

						
						if _inventory_items[inventory_index].name == "Blaster"{
							
							 if obj_equip_gun.gun_item[obj_equip_gun.gun_index].name != "Blaster"{
								obj_equip_gun.equip_gun.item_subtract(obj_equip_gun.gun_item[obj_equip_gun.gun_index].name, 1);
								obj_equip_gun.equip_gun.item_add("Blaster", 1, s_blaster_drop);
								inventory.item_subtract(_inventory_items[inventory_index].name, 1);
								o_player.my_weapon = global.WeaponList.blaster;
							}
						}


						
						
					} else{
						show_debug_message("No inventory item here");
					}
				
				
					}
				}
	
			}
		}
		
		
	}
}

