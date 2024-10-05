// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function damage_entity(_tid, _sid, _damage, _time){
	//@ description damage target and return dead status
	
	//@arg tid		real		target_id
	//@arg sid		real		source_id
	//@arg damage	real		how much damage to deal
	//@arg time		real		how long to knockback target
	
	with(_tid){
		if alarm[HURT] > 0 or state == states.DEAD exit;
		
		hp -= _damage;
		var _dead = is_dead();
		path_end();
		//set knockback distance
		if _dead var _dis = 5 else var _dis = 3;
		var _dir = point_direction(_sid.x, _sid.y, x, y);
		hsp += lengthdir_x(_dis, _dir);
		vsp += lengthdir_y(_dis, _dir);
		calc_path_timer = _time;
		alert = true;
		knockback_time = _time;
		alarm[HURT] = hurt_time;
		if !_dead state = states.KNOCKBACK;
		image_index = 0;
		
		//setting screen shake for player getting hit
		if object_index = o_player{
			audio_play_sound(choose(sound_player_get_hit, sound_player_get_hit2, sound_player_get_hit3), 1, false)
			screen_shake(7);
		}
		
		
		//creating hit effect on enemy
		var _inst = instance_create_layer(x, y, "Projectile", o_hit_effect);
		_inst.depth = -room_height;
		return _dead;
		
	}
}

function is_dead(){
	//checks if the instance running this is dead?
	
	if state != states.DEAD{
		if hp <= 0{
			alarm[5] = death_timer
			state = states.DEAD;
			hp = 0;
			image_index = 0;
			//set death sound
			switch(object_index){
				default:

				break;
				
				case o_player:
					//not working
					if instance_exists(my_weapon) instance_destroy(my_weapon);
					//player sound
				break;
				
				//drop tables
				case  o_theif :
				audio_play_sound(choose(GS2_Fall_1, GS2_Fall_2, GS2_Fall_3), 1, false);
				drop_table_2()
				break;
				
				case o_enemy :
				audio_play_sound(choose(GS2_Fall_1, GS2_Fall_2, GS2_Fall_3), 1, false);
				drop_table_1()
				break;
				
				case o_bomber :
				audio_play_sound(choose(GS2_Fall_1, GS2_Fall_2, GS2_Fall_3), 1, false);
				drop_table_2()
				break;
				
				case o_ratmage :
				audio_play_sound(choose(GS2_Fall_1, GS2_Fall_2, GS2_Fall_3), 1, false);
				drop_table_2();
				break;
			
			}
			return true;
		}
	} else return true;
}
	
function check_if_stopped(){
	if abs(hsp) < 0.1 hsp = 0;
	if abs(vsp) < 0.1 vsp = 0;
}

function show_healthbar(){
	//show healthbar above entities head
	if hp != hp_max and hp > 0 {
		draw_healthbar(x-7, y-16, x+7, y-14, hp/hp_max*100, $003300, $3232FF, $00B200, 0, 1, 1);
	}
}
