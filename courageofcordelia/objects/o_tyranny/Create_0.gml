hsp = random(3);
vsp = random(3);

//add_item/set_item arguments for inventory
weapon_name = "Tyranny";
drop_amount = 1;
weapon_sprite = s_tyranny_drop;
type = TYPE.WEAPON;
weapon_equiping_arg = global.PlayerWeapons[5];
weapon_description = "You have no rights.";
weapon_style = "Ranged";
weapon_armor_bonus = 0
weapon_damage_bonus = 3;

pickup_sound = coin_pickup;

beam = part_system_create_layer("Projectile", true, lootbeam_blue);