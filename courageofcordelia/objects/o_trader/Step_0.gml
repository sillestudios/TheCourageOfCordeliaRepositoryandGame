var mx = mouse_x;
var my = mouse_y;



if (can_show_shop && o_trader_zone.in_trader_zone ==true) {
    if (mouse_check_button_released(mb_left)) {
        trader_shop_items = trader_shop.item_get(); 

        for (var i = 0; i < trader_shop_rows * trader_shop_collumns; i++) {
            var column = i % trader_shop_collumns;
            var row = i div trader_shop_collumns;
            
            var _posX = trader_shop_slot_x + (column * trader_shop_sep);
            var _posY = trader_shop_slot_y + (row * trader_shop_sep);
            
            //hovering
            if (is_between(mx, (CameraX() + _posX), (CameraX() + _posX) + 24)) {
                if (is_between(my, (CameraY() + _posY), (CameraY() + _posY) + 24)) {
                    trader_shop_index = i;
                                    
                    if (inventory_index < array_length(trader_shop_items)) {
                        show_debug_message("Using " + trader_shop_items[trader_shop_index].name);
                        use_item(trader_shop_items[trader_shop_index]);
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

