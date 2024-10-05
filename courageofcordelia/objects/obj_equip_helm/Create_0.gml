depth = -10010;

helm_slot_posX = 175;
helm_slot_posY = 75;


randomize();

helm_collumns = 1;
helm_rows = 1;

helm_sep = 28;

equip_helm = new Inventory();


show_debug_message(equip_helm)

can_show_inv = false;

helm_index = undefined;
helm_item = undefined;

equip_helm.item_add("Empty", 1, s_empty);


