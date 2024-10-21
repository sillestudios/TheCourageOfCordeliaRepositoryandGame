hsp = random(3);
vsp = random(3);

cloak_name = "Basic Red Cloak" ;
cloak_amount = 1;
cloak_sprite = s_red_cloak;
cloak_description = "I can feel its previous owner.";
cloak_style = "All";
cloak_armor_bonus = 1;
cloak_damage_bonus = 0;

pickup_sound = coin_pickup;

beam = part_system_create_layer("Projectile", true, lootbeam_green);