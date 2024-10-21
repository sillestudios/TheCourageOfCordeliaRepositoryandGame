



obj_inventory.inventory.item_add(chest_name, chest_amount, chest_sprite, TYPE.CHESTS, noone, chest_description, chest_style, chest_armor_bonus, chest_damage_bonus);
audio_play_sound(pickup_sound, 1, false);
instance_destroy(self);
instance_create_layer(x, y, "Instances", o_pop);

part_system_destroy(beam);