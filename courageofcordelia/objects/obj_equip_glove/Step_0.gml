var mx = mouse_x;
var my = mouse_y;

if (can_show_inv) {
    //inv_is_visisble = true;
    if (mouse_check_button_released(mb_left)) {
        glove_item = equip_glove.item_get(); 

        for (var i = 0; i < glove_rows * glove_collumns; i++) {
            var column = i % glove_collumns;
            var row = i div glove_collumns;
            
            var _posX = glove_slot_posX + (column * glove_sep);
            var _posY = glove_slot_posY + (row * glove_sep);
            
            //hovering
            if (is_between(mx, (CameraX() + _posX), (CameraX() + _posX) + 24)) {
                if (is_between(my, (CameraY() + _posY), (CameraY() + _posY) + 24)) {
                     glove_index = i;

                                    
                    if (glove_index < array_length(glove_item)) {
                        show_debug_message("unequipping " + glove_item[glove_index].name);
                        unequip_item(glove_item[glove_index]);
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

