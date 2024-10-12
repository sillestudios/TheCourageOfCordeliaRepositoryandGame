depth = -10010;

can_show_quickslots = true;

quickslots1_slot_posX = 225;
quickslots1_slot_posY = 275;


randomize();

quickslots1_collumns = 1;
quickslots1_rows = 1;

quickslots1_sep = 28;

quickslots1 = new Inventory();


show_debug_message(quickslots1)

can_show_inv = false;

quickslots1_index = undefined;
quickslots1_item = undefined;

quickslots1.item_add("Empty", 1, s_empty, TYPE.CONSUME, noone);

can_heal = true
draw_heal_fx = false;



