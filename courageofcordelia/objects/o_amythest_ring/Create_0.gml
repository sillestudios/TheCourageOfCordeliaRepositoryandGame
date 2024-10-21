hsp = random(3);
vsp = random(3);

ring_name = "Ring of Lost Souls";
ring_amount = 1;
ring_sprite = tile320;
ring_description = "Harnesses dark energy..";
ring_style = "All";
ring_armor_bonus = -5;
ring_damage_bonus = 9;

pickup_sound = coin_pickup;

beam = part_system_create_layer("Projectile", true, lootbeam_purple);