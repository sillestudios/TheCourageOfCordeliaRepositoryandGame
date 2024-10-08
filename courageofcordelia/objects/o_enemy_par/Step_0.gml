
switch (state){
	case states.IDLE:
		calc_entity_movement();
		check_for_player();
		if path_index != -1 state = states.MOVE;		
		enemy_anim();
	break;
	
	case states.MOVE:
		calc_entity_movement();
		check_for_player();
		if path_index == -1 state = states.IDLE;
		check_facing();
		check_walk_effect();
		enemy_anim();
	break;
	
	case states.ATTACK:
		calc_entity_movement();
		perform_attack();
		check_facing();
		check_walk_effect();
		enemy_anim();
	break;
	case states.KNOCKBACK:
		calc_knockback_movement();
		check_walk_effect();
		enemy_anim();
	break;
	
	case states.DEAD:
		calc_entity_movement();
		check_walk_effect();
		enemy_anim();


		
	break;
}

	
	if (sprite_index==o_enemy_par.s_walk) and (o_enemy_par.counter_footsteps==0){
		if !audio_is_playing(Footsteps_Dirt_01) or !audio_is_playing(Footsteps_Dirt_02) or !audio_is_playing(Footsteps_Dirt_03) or !audio_is_playing(Footsteps_Dirt_04){
		audio_play_sound(choose(Footsteps_Dirt_01,Footsteps_Dirt_02,Footsteps_Dirt_03,Footsteps_Dirt_04), 1, false);
		o_enemy_par.counter_footsteps = 20; // number of steps to wait before trying to play the sound again
	}
	}
	else if (o_enemy_par.counter_footsteps>0) o_enemy_par.counter_footsteps--;




