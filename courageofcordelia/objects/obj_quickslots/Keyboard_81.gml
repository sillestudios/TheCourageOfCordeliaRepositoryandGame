        if (obj_quickslots.quickslots_item[obj_quickslots.quickslots_index].name = "Health Potion") {

			if o_player.hp <= o_player.hp_max - 5 && can_heal{
				instance_create_depth(o_player.x, o_player.y, -2010, o_heal_up);
				obj_quickslots.quickslots.item_subtract(obj_quickslots.quickslots_item[obj_quickslots.quickslots_index].name, 1);
				obj_quickslots.quickslots.item_add("Empty", 1, s_empty, TYPE.CONSUME, noone);
				o_player.hp += 5;
				audio_play_sound(sound_potion_heal, 1, false);
				can_heal = false;
			}
		}
		can_heal = true;