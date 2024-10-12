depth = -10010;

can_show_quickslots = true;

quickslots_slot_posX = 225;
quickslots_slot_posY = 275;


randomize();

quickslots_collumns = 1;
quickslots_rows = 1;

quickslots_sep = 28;

quickslots = new Inventory();


show_debug_message(quickslots)

can_show_inv = false;

quickslots_index = undefined;
quickslots_item = undefined;

quickslots.item_add("Empty", 1, s_empty, TYPE.CONSUME, noone);



