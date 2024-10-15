
obj_inventory.inventory.item_add(weapon_name, drop_amount, weapon_sprite, type, weapon_equiping_arg, weapon_description, weapon_style, weapon_armor_bonus, weapon_damage_bonus);
audio_play_sound(pickup_sound, 1, false);
part_system_destroy(beam);
instance_destroy();