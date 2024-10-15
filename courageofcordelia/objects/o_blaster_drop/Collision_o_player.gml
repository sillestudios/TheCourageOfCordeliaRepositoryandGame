

obj_inventory.inventory.item_add("Blaster", 1, s_blaster_drop, TYPE.WEAPON, global.PlayerWeapons[3]);
audio_play_sound(coin_pickup, 1, false);
part_system_destroy(beam)
instance_destroy();