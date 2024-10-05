



obj_inventory.inventory.item_add(helm_name, helm_amount, helm_sprite, TYPE.HELMS, noone);
audio_play_sound(pickup_sound, 1, false);
instance_destroy(self);
instance_create_layer(x, y, "Instances", o_pop);