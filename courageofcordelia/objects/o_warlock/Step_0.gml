

switch (state){
	case states.IDLE:
		calc_entity_movement();
		check_for_player();
		if path_index != -1 state = states.MOVE;		
		enemy_anim();
	break;
	
	case states.MOVE:
		enemy_check_spawn_spawner();
		calc_entity_movement();
		check_for_player();
		if path_index == -1 state = states.IDLE;
		check_facing();
		check_walk_effect();
		enemy_anim();
	break;
	
	case states.ATTACK:

		calc_entity_movement();
		enemy_aim_weapon();
		enemy_shoot()
		check_facing();
		check_walk_effect();
		enemy_anim();
	break;
	
	case states.SPAWNER:
		enemy_check_spawn_spawner();
		enemy_anim();
	break;
	
	case states.KNOCKBACK:
		calc_knockback_movement();
		check_walk_effect();
		enemy_anim();
	break;
	
	case states.DEAD:
		calc_entity_movement();
		check_walk_effect()
		enemy_anim();
	break;
}

show_debug_message(string(state));