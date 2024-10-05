



obj_inventory.inventory.item_add(amulet_name, amulet_amount, amulet_sprite, TYPE.AMULETS, noone);
audio_play_sound(pickup_sound, 1, false);
instance_destroy(self);
instance_create_layer(x, y, "Instances", o_pop);