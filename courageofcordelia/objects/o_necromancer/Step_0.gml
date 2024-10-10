
switch (state){
	case states.IDLE:
		necro_check_for_player();
		enemy_anim();
	break;
	
	case states.HAILSTORM:
		check_facing();
		spawn_hail_cloud();
		hailstorm_attack();
		enemy_anim();
	break;
	
	case states.LASERPHASE:
		check_facing();
		enemy_aim_weapon();
		enemy_shoot();
		enemy_anim();
	break;

	case states.DEAD:
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




