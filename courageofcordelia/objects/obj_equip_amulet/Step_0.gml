var mx = mouse_x;
var my = mouse_y;

if (can_show_inv) {
    //inv_is_visisble = true;
    if (mouse_check_button_released(mb_left)) {
        amulet_item = equip_amulet.item_get(); 

        for (var i = 0; i < amulet_rows * amulet_collumns; i++) {
            var column = i % amulet_collumns;
            var row = i div amulet_collumns;
            
            var _posX = amulet_slot_posX + (column * amulet_sep);
            var _posY = amulet_slot_posY + (row * amulet_sep);
            
            //hovering
            if (is_between(mx, (CameraX() + _posX), (CameraX() + _posX) + 24)) {
                if (is_between(my, (CameraY() + _posY), (CameraY() + _posY) + 24)) {
                     amulet_index = i;

                                    
                    if (amulet_index < array_length(amulet_item)) {
                        show_debug_message("unequipping " + amulet_item[amulet_index].name);
                        unequip_item(amulet_item[amulet_index]);
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
	
	if mouse_check_button_released(mb_left){
		gun_item = equip_gun.item_get(); 
		


		for (var _row = 0; _row < equip_rows; _row++){
			var _posY = 80 + (_row * slot_sep);
			for (var _collumn = 0; _collumn < equip_collumns; _collumn++ ){
				var _posX = 100 + (_collumn * slot_sep);
				


				//hovering
				if (is_between(mx, (CameraX() + _posX), (CameraX() + _posX) + 24)){
					if (is_between(my, (CameraY() + _posY), (CameraY() + _posY) + 24)){
					gun_index = (_row * equip_collumns) + _collumn;
					

				
					if gun_index <= array_length(gun_item) - 1{
						show_debug_message("dropping " + gun_item[gun_index].name);
						
						equip_gun.item_subtract(gun_item[gun_index].name, 1)
						show_debug_message("removing gun item")
						equip_gun.item_add("Empty", 1, s_empty);
						show_debug_message("adding gun empty")
						
						
						
					} else{
						

						
						show_debug_message("No gun item here");
					}
				
				
					}
				}
	
			}
		}
		
	}
	

}

