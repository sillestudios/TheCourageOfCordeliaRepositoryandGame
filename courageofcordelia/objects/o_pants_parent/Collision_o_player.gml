



obj_inventory.inventory.item_add(pants_name, pants_amount, pants_sprite, TYPE.PANTS, noone, pants_description, pants_style, pants_armor_bonus, pants_damage_bonus);
audio_play_sound(pickup_sound, 1, false);
instance_destroy(self);
instance_create_layer(x, y, "Instances", o_pop);

part_system_destroy(beam);