obj_inventory.inventory.item_add("Blaster", 1, s_blaster_drop, TYPE.WEAPON,
global.PlayerWeapons[3], "Woah.. Jimbo..", "Ranged",
	0, 3, 2000);
audio_play_sound(coin_pickup, 1, false);
instance_destroy();