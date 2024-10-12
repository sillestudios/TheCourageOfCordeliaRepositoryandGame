



obj_inventory.inventory.item_add(cloak_name, cloak_amount, cloak_sprite, TYPE.CLOAKS, noone, cloak_description, cloak_style, cloak_armor_bonus, cloak_damage_bonus);
audio_play_sound(pickup_sound, 1, false);
instance_destroy(self);
instance_create_layer(x, y, "Instances", o_pop);