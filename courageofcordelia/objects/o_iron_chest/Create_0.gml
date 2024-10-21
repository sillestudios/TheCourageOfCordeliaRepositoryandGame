hsp = random(3);
vsp = random(3);

chest_name = "Iron Chest"
chest_amount = 1; 
chest_sprite = s_iron_chest;
chest_description = "Smelted by the goblins";
chest_style = "Melee";
chest_armor_bonus = 2;
chest_damage_bonus = 1;

pickup_sound = coin_pickup;

beam = part_system_create_layer("Projectile", true, lootbeam_blue);