obj_inventory.inventory.item_add("Blaster", 1, s_blaster_drop, TYPE.WEAPON, global.WeaponList.blaster);
audio_play_sound(coin_pickup, 1, false);
instance_destroy();