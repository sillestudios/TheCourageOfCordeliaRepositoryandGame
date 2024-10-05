depth = -10010;

chest_slot_posX = 140;
chest_slot_posY = 136;


randomize();

chest_collumns = 1;
chest_rows = 1;

chest_sep = 28;

equip_chest = new Inventory();


show_debug_message(equip_chest)

can_show_inv = false;

chest_index = undefined;
chest_item = undefined;

equip_chest.item_add("Empty", 1, s_empty);


