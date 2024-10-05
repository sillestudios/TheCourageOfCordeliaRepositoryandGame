



obj_inventory.inventory.item_add(ring_name, ring_amount, ring_sprite, TYPE.RINGS, noone);
audio_play_sound(pickup_sound, 1, false);
instance_destroy(self);
instance_create_layer(x, y, "Instances", o_pop);