



obj_inventory.inventory.item_add(cloak_name, cloak_amount, cloak_sprite, TYPE.CLOAKS, noone);
audio_play_sound(pickup_sound, 1, false);
instance_destroy(self);
instance_create_layer(x, y, "Instances", o_pop);