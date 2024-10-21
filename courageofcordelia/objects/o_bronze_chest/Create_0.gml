hsp = random(3);
vsp = random(3);

chest_name = "Bronze Chest"
chest_amount = 1; 
chest_sprite = s_bronze_chest;
chest_description = "The weakest platebody.";
chest_style = "Melee";
chest_armor_bonus = 1;
chest_damage_bonus = 0;

pickup_sound = coin_pickup;

beam = part_system_create_layer("Projectile", true, lootbeam_green);