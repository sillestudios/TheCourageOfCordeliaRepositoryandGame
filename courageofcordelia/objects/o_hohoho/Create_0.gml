hsp = random(3);
vsp = random(3);

//add_item/set_item arguments for inventory
weapon_name = "Santa's Helper";
drop_amount = 1;
weapon_sprite = s_hohoho_drop;
type = TYPE.WEAPON;
weapon_equiping_arg = global.PlayerWeapons[12];
weapon_description = "Ho Ho Ho!";
weapon_style = "Ranged";
weapon_armor_bonus = 0
weapon_damage_bonus = 3;

pickup_sound = coin_pickup;

beam = part_system_create_layer("Projectile", true, lootbeam_blue);