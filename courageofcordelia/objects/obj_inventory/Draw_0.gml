//550 x 309


if can_show_inv{
	text_align(fa_center, fa_middle);
	draw_set_font(fn_8bit);
	
	//pannel connectors
	draw_sprite_ext(
	Pipe_36x11, 0, CameraX() + 175, CameraY() + 25, 
	3, 1, 90, c_white, 1);
	
	draw_sprite_ext(
	Pipe_36x11, 0, CameraX() + 375, CameraY() + 25, 
	3, 1, 90, c_white, 1);

	//inv
	draw_sprite_ext(
	RectangleBox_96x96, 0, CameraX() + 275, CameraY() + 156, 
	3.25, 2, 0, c_white, 1);
	
	
	//bottom design
	draw_sprite_ext(
	TopPatternPanel_02_33x15, 0, CameraX() + 344, CameraY() + 235, 
	1.5, 1.5, 0, c_white, 1);
	
	//top design
	draw_sprite_ext(
	TopPatternPanel_02_33x15, 0, CameraX() + 344, CameraY() + 76, 
	1.5, 1.5, 0, c_white, 1);
	
	//title box
	draw_sprite_ext(TitleBox_64x16, 0, CameraX() + 275, CameraY() + 50, 
	1.75, 1.75, 0, c_white, 1)
	
	//title text
	draw_text_transformed(CameraX() + 275, CameraY() + 50, "Inventory", 0.4, 0.4, image_angle);
	
	//character box
	draw_sprite_ext(
	CharacterBox_56x57, 0, CameraX() + 200, CameraY() + 135, 
	1, 1, 0, c_white, 1);
	
	//character
	draw_sprite_ext(
	s_player_idle_down, 0, CameraX() + 202, CameraY() + 138, 
	2, 2, 0, c_white, 0.8);
	
	//euip top pannel
	draw_sprite_ext(
	TopPatternPanel_01_33x15, 0, CameraX() + 200, CameraY() + 77, 
	1, 1, 0, c_white, 1);
	
	//equip bottom pannel
	draw_sprite_ext(
	BottomPatternPanel_119x17, 0, CameraX() + 200, CameraY() + 230, 
	1, 1, 0, c_white, 1);


	var mx = mouse_x;
	var my = mouse_y;


	var _inventory_items = inventory.item_get(); 

	for (var _row = 0; _row < inventory_rows; _row++){
		var _posY = inv_slot_y + (_row * inv_sep);
		for (var _collumn = 0; _collumn < inventory_collumns; _collumn++ ){
			var _posX = inv_slot_x + (_collumn * inv_sep);
		
			draw_sprite_ext(s_inv_slot, 0, CameraX() + _posX, CameraY() +  _posY,
			1, 1, 0, c_white, 1);
		
			var _inventory_index = (_row * inventory_collumns) + _collumn
		
			if (_inventory_index <= array_length(_inventory_items) - 1){
				draw_sprite(_inventory_items[_inventory_index].sprite, 0, CameraX() + (_posX +12), CameraY() + (_posY+12));
			}
		
		//hovering
		if (is_between(mx, (CameraX() + _posX), (CameraX() + _posX) + 24)){
			if (is_between(my, (CameraY() + _posY), (CameraY() + _posY) + 24)){
				
				//item description
				if (_inventory_index <= array_length(_inventory_items) - 1){
				draw_set(c_white, 1);
				draw_sprite_ext(s_desc_box, 0, CameraX() + 450,
				CameraY() + 75,
				2.5, 2.5, 0, c_white, 1);
				}
				
				
				text_align(fa_center, fa_middle )
				if (_inventory_index <= array_length(_inventory_items) - 1){
					
					//item name
					draw_text_transformed(CameraX() + 491, CameraY() + 85,
					string(_inventory_items[_inventory_index].name),
					0.2, 0.2, 0);
				
					//item style
					draw_text_transformed(CameraX() + 491, CameraY() + 95, 
					"Style: " + string(_inventory_items[_inventory_index].style),
					0.2, 0.2, 0);
					
					//item armor bonus
					draw_text_transformed(CameraX() + 491, CameraY() + 105, 
					"Armor: +" + string(_inventory_items[_inventory_index].armor_bonus),
					0.2, 0.2, 0);
					
					//item damage bonus
					draw_text_transformed(CameraX() + 491, CameraY() + 115, 
					"Damage: +" + string(_inventory_items[_inventory_index].damage_bonus),
					0.2, 0.2, 0);
				 
					//item description
					draw_text_ext_transformed(CameraX() + 491, CameraY() + 142,
					string(_inventory_items[_inventory_index].description), 35, 300, 
					0.2, 0.2, 0);
				}

		
				
				draw_set(c_black, 0.25);
				draw_rectangle(
				CameraX() + _posX,
				CameraY() + _posY,
				CameraX() + _posX + 24,
				CameraY() + _posY + 22, false
				);

			
				draw_reset();
			}
		}
	
		
		//quantity
		if (_inventory_index <= array_length(_inventory_items) -1) && _inventory_items[_inventory_index].quantity > 1{
			//draw_set(c_black, 0.25);
			//draw_circle(CameraX() + _posX + 3, CameraY() + _posY + 3,
			//5, false);
		
			draw_set(c_white, 0.75);
			text_align(fa_center, fa_middle);
		
			draw_set_font(fn_8bit);
			draw_text_transformed(CameraX() + _posX + 3, CameraY() + _posY + 5,
			_inventory_items[_inventory_index].quantity, 0.20, 0.20, image_angle);
			
			draw_reset();
		}
	
	}
	}
}