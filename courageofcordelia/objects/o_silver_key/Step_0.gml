calc_entity_movement();

if instance_exists(o_silver_key){

	part_system_position(beam, x, y-20)
}

if alarm[0] = -1{
	alarm[0] = 30;
}