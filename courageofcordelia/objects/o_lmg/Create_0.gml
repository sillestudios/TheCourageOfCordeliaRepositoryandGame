hsp = random(3);
vsp = random(3);

//add_item/set_item arguments for inventory
weapon_name = "LMG";
drop_amount = 1;
weapon_sprite = s_lmg;
type = TYPE.WEAPON;
weapon_equiping_arg = global.PlayerWeapons[10];
weapon_description = "boom boom boom boom.";
weapon_style = "Ranged";
weapon_armor_bonus = 0
weapon_damage_bonus = 3;

pickup_sound = coin_pickup;

beam = part_system_create_layer("Projectile", true, lootbeam_purple);