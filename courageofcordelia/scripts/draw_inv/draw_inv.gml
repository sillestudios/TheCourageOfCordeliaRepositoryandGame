function draw_inv(){
	//inventory
	
	//draw title panel box and title text
	draw_sprite_ext(s_name_tag_box, 0, CameraX() + 69, CameraY() + 10, 2, 1, 0, c_white, 1);
	draw_set_font(fn_8bit);
	draw_text_transformed(CameraX() + 97, CameraY() + 17, "Inventory", 0.5, 0.5, 0);
		
		
	//inv box
	draw_sprite_ext(s_inventory, 0, CameraX() + 30, CameraY() + 50, 1.6,1.3,0,c_white,1);

	//draw money
	draw_sprite(s_inv_coin, 0, CameraX() + 45, CameraY()+ 235);
	draw_text_transformed(CameraX() + 60, CameraY()+ 236, string(o_player.money), 0.25, 0.25, 0);
	draw_set_alpha(1);

	//draw all inv slot boxes
		for(var i = 0; i <= maxInvSlots -1; ++i){
			var itemX = CameraX() + 43 + ((i mod menuWidth) * itemSeperation);
			var itemY = CameraY()+ 63 + ((i div menuWidth) * vertSep);
			
			draw_sprite(s_inv_slot ,0, itemX, itemY);
		}
	//items
	for(var i = 0; i < ds_grid_width(myItems); ++i)
		{
			//handles sorting in rows and collumns
			var itemX = CameraX() + 55 + ((i mod menuWidth) * itemSeperation);
			var itemY = CameraY()+ 75 + ((i div menuWidth) * vertSep);
			var sprite = myItems[# i, Item.Sprite];
			
			draw_sprite(sprite ,0, itemX, itemY);

			
			draw_sprite_ext(sprite, 0, itemX, itemY, itemScale, itemScale, 0, c_white, 1);
			
			//amount
			if myItems[# i, Item.Amount] > 1{
			draw_set_color(c_white);
			draw_set_alpha(1);
			draw_set_font(fn_8bit);
			draw_text_transformed(itemX+10, itemY+10, string(myItems[# i, Item.Amount]), 0.5, 0.5, 0);
			}
			
			//check if mouse is hovering over an item
			if (point_in_rectangle(mouse_x, mouse_y, itemX-12, itemY-12, itemX+12, itemY+12))
				{
					
					draw_sprite(s_hover_cursor, 0, itemX, itemY);					

					//drawing hovering color
					draw_set_alpha(.15);
					draw_set_color(c_black);
					draw_rectangle(itemX-16, itemY-16, itemX+16, itemY+16, false);
					draw_set_alpha(1);
					currentItemSlot = i;
					
	
				//draw item info
				if instance_exists(myItems[# i, Item.Object]) == false && draggingItem == false && itemLocked == false{
					currentItem = instance_create_layer(-32, -32,"MenuItems",myItems[# i, Item.Object]);
					currentItem.price = myItems[# i, Item.Price];
					currentItem.type = myItems[# i, Item.Type];
					currentItem.name = myItems[# i, Item.Name];
					currentItem.is_in_menu = true;
			


				if (showingDescription){
					currentItem.is_showing_info = true;
				}
				}

					
				if mouse_check_button_pressed(mb_right) && itemLocked == false && showingDescription == true {
					itemLocked = true;
					itemLockedX = itemX;
					itemLockedY = itemY;
				}
					

				else if mouse_check_button_pressed(mb_right) && itemLocked == true{
					itemLocked = false;
				}


				}
				
				//click on item drawing descrip box
				if(showingDescription) && itemLocked = true {
					//currentItem.is_showing_info = true;
					draw_set_color(c_white);
					draw_sprite_ext(s_item_description, 0, CameraX() + 65,CameraY() + 257, 1, 0.4, 0, c_white, 1);
					//write equpping code here with point in rectangle
					
					currentItem = o_coin;

					

				}
				
				draw_set_color(c_white);
				}
		

		
				//fix issue with inv icon showing a diff object & deleting oitemininv objects in game
				//ensure only one item exists at a time
				if instance_number(o_item_in_inv) > 1{
					instance_destroy(o_item_in_inv);}
				//FIXED//change enemy drop system so it doesnt drop o_item_in_inv, but chnanged to it when picked up
			
				//item locked cursor
if itemLocked == true{
	draw_sprite_ext(s_locked_hover, 0, itemLockedX, itemLockedY,1,1,0,c_white,1);
}


//dragging system not working
if keyboard_check(ord("K")){
	if instance_exists(o_item_in_inv){
		draggedItem = instance_find(o_item_in_inv,0);
		draggedItem.x = mouse_x;
		draggedItem.y = mouse_y;
		draggedItem.visible = true;
		draggedItem.image_xscale = itemScale;
		draggedItem.image_yscale = itemScale;
		draggingItem = true;
		}

		}


if keyboard_check_pressed(ord("K")){
	draggedItemSlot = currentItemSlot;
}


if keyboard_check_released(ord("K")){
		draggedItem.x = -100;
		draggedItem.y = -100;
		draggingItem = false;
		alarm[0] = 1;
	}
	

if itemLocked = true{show_debug_message("true bae")}

		}	

