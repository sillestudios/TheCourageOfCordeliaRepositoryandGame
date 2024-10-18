
switch (state){
	case states.ENTERSTAGE:
	
	#region ENTER STAGE
			//check if player is close enough for boss fight to start
		var _dis = distance_to_object(o_player);
	
		//can we start interation or are we already alert and out of attack distance
		if (_dis <= alert_dis){
			//boss interaction has now started
			alert = true;
		}
		
		if alert{
			display_enter = true;
			if alarm[1] = -1{
				alarm[1] = 200;
			}
			
			if ready_to_tele_in{
				image_speed = 1;
			}
			
			if image_index >= 29 {
				sprite_index = s_agis_idle;
				agis_enter_speach = true;
			}
			
			if instance_exists(o_souldrain){
				o_souldrain.x = o_player.x + 2;
				o_souldrain.y = o_player.y -12;
			}
			
		}
		
		#endregion

	break;
	
	//@@
	
	case states.IDLE:
	
	sprite_index = s_agis_idle;
	if stage_1_end_text{
		state = states.ATTACK2
	}
	
	break;
	
	//@@
	
	case states.ATTACK1:
	
		if o_player.state = states.DEAD {
		sprite_index = s_agis_idle
		exit;
	}
	
		#region ATTACK1
	attack1_timer++
	if attack1_timer = 60{
		end_stage_1 = true;
		state = states.IDLE;
		attack1_timer = 0;

	}
	sprite_index = s_agis_attack_1;
	image_speed = 1;
	
	//if image_index > 16 && image_index < 18 can_attack = true
	if alarm[3] = -1{
		alarm[3] = shoot_cooldown;
	}
	
		if fire {
		if can_attack {
			
			show_debug_message("agis can attack")

			can_attack = false;
			aim_dir = point_direction(x, y-40, o_player.x, o_player.y)
			var _dir = aim_dir;
			var _inst = instance_create_layer(x, y-40, "Projectile", enemy_projectile);
			screen_shake(3);
			show_debug_message("agis bullet created")
			with(_inst){
				hsp = lengthdir_x(bullet_spd, _dir);
				vsp = lengthdir_y(bullet_spd, _dir);
				direction = _dir;
				image_angle = _dir;

			
		}
	}
}

#endregion
	
	break;
	
	//@@
	
	case states.ATTACK2:
		
		stage_1_end_text = false;
	
		if o_player.state = states.DEAD {
			sprite_index = s_agis_idle
		exit;
	}
			
		#region ATTACK2
	
		attack1_timer++
		if attack1_timer = 60{
			end_stage_2 = true;
			state = states.IDLE;
			attack1_timer = 0;
		}

		sprite_index = s_agis_attack_2;
		
		if image_index >=15{
			start_attacks2 = true;
			
		}
		fire_bomb_attack();
		
		
		if image_index >= 23{
			switch_to_idle_sprite = true;
			
			}
			
		if switch_to_idle_sprite{
			sprite_index = s_agis_idle;
		}
		
		#endregion
	
	break;
	
	//@@
	
	case states.ATTACK3:
	
		if o_player.state = states.DEAD {
			sprite_index = s_agis_idle
		exit;
		}
			
		sprite_index = s_agis_attack_3
		
	
	
	//attack player when we are at the correct frame
	if can_attack {
		
		instance_create_layer(px, py, "Instances", o_red_square);
		
		//reset for next attack
		can_attack = false;
		alarm[0] = hailstorm_cooldown;
		
		
		
		//get attack direction
		//var _dir = point_direction(x, y, o_player.x, o_player.y);
		
		var _hail = instance_create_depth(random_range(px + 50, px - 50), random_range(py - 50, py + 50), -2000, o_hail_rain);
		screen_shake(5)


		}
		
		if alarm[3] == -1{
			alarm[3] = next_phase_countdown;
		}
		
		if stay_in_phase = false {
			if instance_exists(o_hail_storm){
				instance_create_layer(o_hail_storm.x, o_hail_storm.y, "Enemy", o_hail_storm_end);
				instance_destroy(o_hail_storm);
				
			}
		
		state = states.LASERPHASE;
		
		instance_create_layer(o_purp_circ.x, o_purp_circ.y, "Enemy", o_purp_circ_end);
		instance_destroy(o_purp_circ);
		
		can_spawn_rip = true;
		state_timer = 0;
		stay_in_phase = true;
		alarm[3] = -1
		next_phase_countdown = 280;
		
		}

	
	break;
	
	//@@
	
	case states.ATTACK4:
	
	break;
	
	//@@
	
	case states.ATTACK5:
	
	break;
	
	//@@
	
	case states.DEAD:
		screen_shake(3)
		sprite_index = s_agis_die;
	
	break;
	
	//@@
}