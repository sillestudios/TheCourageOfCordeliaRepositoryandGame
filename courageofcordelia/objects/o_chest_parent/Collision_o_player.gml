



obj_inventory.inventory.item_add(chest_name, chest_amount, chest_sprite, TYPE.CHESTS, noone);
audio_play_sound(pickup_sound, 1, false);
instance_destroy(self);
instance_create_layer(x, y, "Instances", o_pop);