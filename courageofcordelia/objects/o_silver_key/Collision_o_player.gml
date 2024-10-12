



obj_inventory.inventory.item_add(tool_name, tool_amount, tool_sprite, TYPE.TOOL, noone, tool_description, tool_style, tool_armor_bonus, tool_damage_bonus);
audio_play_sound(pickup_sound, 1, false);
instance_destroy(self);
instance_create_layer(x, y, "Instances", o_pop);