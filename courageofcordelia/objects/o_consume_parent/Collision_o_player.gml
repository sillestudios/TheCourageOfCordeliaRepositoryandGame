



obj_inventory.inventory.item_add(consume_name, consume_amount, consume_sprite, TYPE.CONSUME, noone);
audio_play_sound(pickup_sound, 1, false);
instance_destroy(self);
instance_create_layer(x, y, "Instances", o_pop);