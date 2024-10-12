

switch(state){
	default:
		reset_variables();
		get_input();
		calc_movement();
		aim_weapon();
		check_dash();
		check_fire();
		check_bomb();
		check_walk_effect();
		anim();
		
	break;
	
	case states.DASH:
		reset_variables();
		x += hsp;
		y += vsp;
		if dash_timer-- <= 0 {
			state = states.MOVE;
			hsp = 0;
			vsp = 0;
			can_dash = false
			alarm[CAN_DASH] = dash_cooldown;
		}
		aim_weapon();
		check_walk_effect();
		anim();
		
	break;
	
	case states.KNOCKBACK:
		aim_weapon();
		reset_variables();
		calc_movement();
		if knockback_time-- <= 0 state = states.IDLE;
		check_walk_effect();
		anim();
		
	break;
	
	case states.DEAD:
	
		reset_variables();
		calc_movement();
		if ready_to_restart and mouse_check_button_pressed(mb_left) game_restart();
		anim();
		
	break;
}



//sort of working gun anims?
//if fire && can_attack == false my_weapon.sprite = s_sidewinder_recoil;				
//if !fire my_weapon.sprite = s_sidewinder;






#region Stair Vfx
if place_meeting(x, y, o_stair_shake){
	screen_shake(.75);

}
#endregion

#region Trader Collision for inv_controller

if place_meeting(x, y, o_trader){
	trader_collision = true;
}

if !place_meeting(x, y, o_trader){
	trader_collision = false;
}

#endregion

			if right or left{
				walk_spd = 3;
			}


//if my_weapon = global.WeaponList.vector && keyboard_check(ord("U")){
	//my_weapon.sprite = vector_reload_gif;
//}

//loot logs
for (var i = 0; i < ds_list_size(loot_feed_text); i++)
{
    loot_feed_alpha[| i] -= 0.01;
 
    if (!loot_feed_alpha[| i])
    {
        ds_list_delete(loot_feed_text, i);
        ds_list_delete(loot_feed_alpha, i);
    }
}