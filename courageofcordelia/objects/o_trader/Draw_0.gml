//550 x 309
draw_self();

if o_trader_zone.in_trader_zone{
	draw_sprite(s_enter, 0, x + 4, y - 35)
}

if can_show_shop && o_trader_zone.in_trader_zone == true{
	text_align(fa_center, fa_middle);
	draw_set_font(fn_8bit);
	
	//pannel connectors
	draw_sprite_ext(
	Pipe_36x11, 0, CameraX() + 50, CameraY() + 115, 
	3, 1, 180, c_white, 1);
	
	draw_sprite_ext(
	Pipe_36x11, 0, CameraX() + 50, CameraY() + 185, 
	3, 1, 180, c_white, 1);

	//inv
	draw_sprite_ext(
	RectangleBox_96x96, 0, CameraX() + 150, CameraY() + 153, 
	2, 1.5, 0, c_white, 1);
	
	
	//bottom design
	draw_sprite_ext(
	TopPatternPanel_02_33x15, 0, CameraX() + 150, CameraY() + 205, 
	1.5, 1.5, 0, c_white, 1);
	
	//top design
	draw_sprite_ext(
	TopPatternPanel_02_33x15, 0, CameraX() + 150, CameraY() + 100, 
	1.5, 1.5, 0, c_white, 1);
	
	//title box
	draw_sprite_ext(TitleBox_64x16, 0, CameraX() + 150, CameraY() + 72, 
	1.75, 1.75, 0, c_white, 1)
	
	//title text
	draw_text_transformed(CameraX() + 150, CameraY() + 72, "Shop", 0.4, 0.4, image_angle);
	
	//character box
	draw_sprite_ext(
	CharacterBox_56x57, 0, CameraX() + 100, CameraY() + 151, 
	1, 1.5, 0, c_white, 1);
	
	//character
	draw_sprite_ext(
	s_trader_idle, 0, CameraX() + 100, CameraY() + 151, 
	2, 2, 0, c_white, 0.8);
	
	//euip top pannel
	/*draw_sprite_ext(
	TopPatternPanel_01_33x15, 0, CameraX() + 200, CameraY() + 77, 
	1, 1, 0, c_white, 1);
	
	//equip bottom pannel
	draw_sprite_ext(
	BottomPatternPanel_119x17, 0, CameraX() + 200, CameraY() + 230, 
	1, 1, 0, c_white, 1);*/


	var mx = mouse_x;
	var my = mouse_y;


	trader_shop_items = trader_shop.item_get(); 

	for (var _row = 0; _row < trader_shop_rows; _row++){
		var _posY = trader_shop_slot_y + (_row * trader_shop_sep);
		for (var _collumn = 0; _collumn < trader_shop_collumns; _collumn++ ){
			var _posX = trader_shop_slot_x + (_collumn * trader_shop_sep);
		
			draw_sprite_ext(s_inv_slot, 0, CameraX() + _posX, CameraY() +  _posY,
			1, 1, 0, c_white, 1);
		
			trader_shop_index = (_row * trader_shop_collumns) + _collumn
		
			if (trader_shop_index <= array_length(trader_shop_items) - 1){
				draw_sprite(trader_shop_items[trader_shop_index].sprite, 0, CameraX() + (_posX +12), CameraY() + (_posY+12));
			}
		
		//hovering
		if (is_between(mx, (CameraX() + _posX), (CameraX() + _posX) + 24)){
			if (is_between(my, (CameraY() + _posY), (CameraY() + _posY) + 24)){
				
				//item description
				if (trader_shop_index <= array_length(trader_shop_items) - 1){
				draw_set(c_white, 1);
				draw_sprite_ext(s_desc_box, 0, CameraX() + 450,
				CameraY() + 75,
				2.5, 2.5, 0, c_white, 1);
				}
				
				
				text_align(fa_center, fa_middle )
				if (trader_shop_index <= array_length(trader_shop_items) - 1){
					
					//item name
					draw_text_transformed(CameraX() + 491, CameraY() + 85,
					string(trader_shop_items[trader_shop_index].name),
					0.2, 0.2, 0);
				
					//item style
					draw_text_transformed(CameraX() + 491, CameraY() + 95, 
					"Style: " + string(trader_shop_items[trader_shop_index].style),
					0.2, 0.2, 0);
					
					//item armor bonus
					draw_text_transformed(CameraX() + 491, CameraY() + 105, 
					"Armor: +" + string(trader_shop_items[trader_shop_index].armor_bonus),
					0.2, 0.2, 0);
					
					//item damage bonus
					draw_text_transformed(CameraX() + 491, CameraY() + 115, 
					"Damage: +" + string(trader_shop_items[trader_shop_index].damage_bonus),
					0.2, 0.2, 0);
					
					draw_set_color(c_green)
					draw_text_transformed(CameraX() + 491, CameraY() + 125, 
					"Price: " + string(trader_shop_items[trader_shop_index].price) + " coins.",
					0.2, 0.2, 0);
					draw_set_color(c_white);
				 
					//item description
					draw_text_ext_transformed(CameraX() + 491, CameraY() + 142,
					string(trader_shop_items[trader_shop_index].description), 35, 300, 
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
		if (trader_shop_index <= array_length(trader_shop_items) -1) && trader_shop_items[trader_shop_index].quantity > 1{
			//draw_set(c_black, 0.25);
			//draw_circle(CameraX() + _posX + 3, CameraY() + _posY + 3,
			//5, false);
		
			draw_set(c_white, 0.75);
			text_align(fa_center, fa_middle);
		
			draw_set_font(fn_8bit);
			draw_text_transformed(CameraX() + _posX + 3, CameraY() + _posY + 5,
			trader_shop_items[trader_shop_index].quantity, 0.20, 0.20, image_angle);
			
			draw_reset();
		}
	
	}
	}
}