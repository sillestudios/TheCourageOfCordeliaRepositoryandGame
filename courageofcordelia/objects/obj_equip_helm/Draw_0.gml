//550 x 309


if can_show_inv{

	var mx = mouse_x;
	var my = mouse_y;


	helm_item = equip_helm.item_get(); 

	for (var _row = 0; _row < helm_rows; _row++){
		var _posY = helm_slot_posY + (_row * helm_sep);
		for (var _collumn = 0; _collumn < helm_collumns; _collumn++ ){
			var _posX = helm_slot_posX + (_collumn * helm_sep);
		
			draw_sprite_ext(s_inv_slot, 0, CameraX() + _posX, CameraY() +  _posY,
			1, 1, 0, c_white, 1);
		
			helm_index = (_row * helm_collumns) + _collumn
		
			if (helm_index <= array_length(helm_item) - 1){
				draw_sprite(helm_item[helm_index].sprite, 0, CameraX() + (_posX +12), CameraY() + (_posY+12));
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
		if (helm_index <= array_length(helm_item) -1) && helm_item[helm_index].quantity > 1 {
			draw_set(c_black, 1);
			draw_circle(CameraX() + _posX + 24, CameraY() + _posY + 24,
			5, false);
		
			draw_set(c_white, 1);
			text_align(fa_center, fa_middle);
		
			draw_set_font(fn_8bit);
			draw_text_transformed(CameraX() + _posX + 24, CameraY() + _posY + 24,
			helm_item[helm_index].quantity, 0.25, 0.25, image_angle);
		}
	
	}
	}
}