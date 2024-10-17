
switch (state){
	case states.ENTERSTAGE:
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

	break;
	
	//@@
	
	case states.ATTACK1:
	
	sprite_index = s_agis_attack_1;
	image_speed = 1;
	
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
	
	break
	
	//@@
}