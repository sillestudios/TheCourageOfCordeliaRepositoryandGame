



obj_inventory.inventory.item_add(amulet_name, amulet_amount, amulet_sprite, TYPE.AMULETS, noone, amulet_description, amulet_style, amulet_armor_bonus, amulet_damage_bonus);
audio_play_sound(pickup_sound, 1, false);
instance_destroy(self);
instance_create_layer(x, y, "Instances", o_pop);

part_system_destroy(beam);