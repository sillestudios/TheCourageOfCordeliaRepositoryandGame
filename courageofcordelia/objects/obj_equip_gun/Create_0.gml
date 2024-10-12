depth = -10002;

gun_slot_posX = 235;
gun_slot_posY = 110;


randomize();

gun_collumns = 1;
gun_rows = 1;

gun_sep = 28;

equip_gun = new Inventory();


show_debug_message(equip_gun)

can_show_inv = false;

gun_index = undefined;
gun_item = undefined;

equip_gun.item_add("Empty", 1, s_empty, TYPE.WEAPON, noone);


weapon_name = noone;
drop_amount = 0;
weapon_sprite = noone;

