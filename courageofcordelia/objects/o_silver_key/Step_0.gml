calc_entity_movement();

if instance_exists(o_silver_key){
	part_particles_create(1, o_silver_key.x, o_silver_key.y - 10, lootbeam, 1)
}

if alarm[0] = -1{
	alarm[0] = 30;
}