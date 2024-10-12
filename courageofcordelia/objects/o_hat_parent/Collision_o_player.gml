



obj_inventory.inventory.item_add(helm_name, helm_amount, helm_sprite, TYPE.HELMS, noone, helm_description, helm_style, helm_armor_bonus, helm_damage_bonus);
audio_play_sound(pickup_sound, 1, false);
instance_destroy(self);
instance_create_layer(x, y, "Instances", o_pop);