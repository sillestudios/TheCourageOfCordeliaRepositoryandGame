



obj_inventory.inventory.item_add(boots_name, boots_amount, boots_sprite, TYPE.BOOTS, noone);
audio_play_sound(pickup_sound, 1, false);
instance_destroy(self);
instance_create_layer(x, y, "Instances", o_pop);