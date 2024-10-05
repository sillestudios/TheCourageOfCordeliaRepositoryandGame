



obj_inventory.inventory.item_add(gloves_name, gloves_amount, gloves_sprite, TYPE.GLOVES, noone);
audio_play_sound(pickup_sound, 1, false);
instance_destroy(self);
instance_create_layer(x, y, "Instances", o_pop);