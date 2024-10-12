//550 x 309


if can_show_quickslots{

	var mx = mouse_x;
	var my = mouse_y;


	quickslots1_item = quickslots1.item_get(); 

	for (var _row = 0; _row < quickslots1_rows; _row++){
		var _posY = quickslots1_slot_posY + (_row * quickslots1_sep);
		for (var _collumn = 0; _collumn < quickslots1_collumns; _collumn++ ){
			var _posX = quickslots1_slot_posX + (_collumn * quickslots1_sep);
		
			draw_sprite_ext(s_hotkey_box, 0, CameraX() + _posX, CameraY() +  _posY,
			1, 1, 0, c_white, 1);
		
			quickslots1_index = (_row * quickslots1_collumns) + _collumn
		
			if (quickslots1_index <= array_length(quickslots1_item) - 1){
				draw_sprite(quickslots1_item[quickslots1_index].sprite, 0, CameraX() + (_posX +12), CameraY() + (_posY+12));
			}
		
		//hovering
		if (is_between(mx, (CameraX() + _posX), (CameraX() + _posX) + 24)){
			if (is_between(my, (CameraY() + _posY), (CameraY() + _posY) + 24)){
				draw_set(c_black, 0.25);
				draw_rectangle(
				CameraX() + _posX,
				CameraY() + _posY,
				CameraX() + _posX + 24,
				CameraY() + _posY + 24, false
				);
			
				draw_reset();
			}
		}
	
		
		//quantity
		if (quickslots1_index <= array_length(quickslots1_item) -1) && quickslots1_item[quickslots1_index].quantity > 1 {
		
			draw_set(c_white, 1);
			text_align(fa_center, fa_middle);
		
			draw_set_font(fn_8bit);
			draw_text_transformed(CameraX() + _posX + 3, CameraY() + _posY + 5,
			quickslots1_item[quickslots1_index].quantity, 0.2, 0.2, image_angle);
		}
	
	}
	}
}

