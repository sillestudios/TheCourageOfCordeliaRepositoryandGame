hsp = random(3);
vsp = random(3);

helm_name = "Green Mage Hat";
helm_amount = 1;
helm_sprite = s_green_mage_hat;
helm_description = "Made from goblin-skin.";
helm_style = "Magic";
helm_armor_bonus = 2;
helm_damage_bonus = 1;

pickup_sound = coin_pickup;

beam = part_system_create_layer("Projectile", true, lootbeam_green);