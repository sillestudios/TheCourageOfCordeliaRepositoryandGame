
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
	
	case states.ATTACK1:
	
	if o_player.state = states.DEAD {
		sprite_index = s_agis_idle
		exit;
	}
	
	#region ATTACK1
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
	
	break;
	
	//@@
	
	case states.ATTACK3:
	
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
	
	break
	
	//@@
}