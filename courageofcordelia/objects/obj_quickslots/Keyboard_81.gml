        if (obj_quickslots.quickslots_item[obj_quickslots.quickslots_index].name = "Health Potion") {
            obj_quickslots.quickslots.item_subtract(obj_quickslots.quickslots_item[obj_quickslots.quickslots_index].name, 1);
			obj_quickslots.quickslots.item_add("Empty", 1, s_empty, TYPE.CONSUME, noone);
			if o_player.hp <= o_player.hp_max - 5{
				o_player.hp += 5;
			}
		}