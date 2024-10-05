



obj_inventory.inventory.item_add(pants_name, pants_amount, pants_sprite, TYPE.PANTS, noone);
audio_play_sound(pickup_sound, 1, false);
instance_destroy(self);
instance_create_layer(x, y, "Instances", o_pop);