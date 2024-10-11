function calc_entity_movement(){
	//moves enemy and apply drag
	
	//apply movement
	x += hsp;
	y += vsp;

	
	//slowdown
	hsp *= global.drag;
	vsp *= global.drag;
	
	check_if_stopped();
}
	
function calc_knockback_movement(){
	//moves enemy and applies drag during knockback
	
	//apply movement
	x += hsp;
	y += vsp;
	
	//slowdown
	hsp *= 0.91;
	vsp *= 0.91;
	
	check_if_stopped();
	
	//exit state
	if knockback_time <= 0 state = states.IDLE;
}

function check_facing(){
	//check wich way we are moving and set facing
	if knockback_time <= 0 {
		var _facing = sign(x - xp);
		if _facing != 0 facing = _facing;
	}
}

function check_for_player(){
	//ensure player is alive and exists
	if instance_exists(o_player){
		if o_player.state == states.DEAD exit;
	
		//check if player is close enough to the enemy to start chasing the player
		var _dis = distance_to_object(o_player);
	
		//can we start chasing? or are we already alert and out of attack distance
		if ((_dis <= alert_dis) or alert) and _dis > attack_dis{
			//enemy is now alert
			alert = true;
		
			//should we calc our path?
			if calc_path_timer-- <= 0{
				//reset timer
				calc_path_timer = calc_path_delay;
	
				//can we make a path to the player?
				if x == xp and y == yp var _type = 0 else _type = 1;
				var _found_player = mp_grid_path(global.mp_grid, path, x, y, o_player.x, o_player.y, choose(_type));
	
				//start path if we can reach the player
				if _found_player{
					path_start(path, move_spd, path_action_stop, false);
				}
			}

	}		else{
			//are we close enough to attack
			if _dis <= attack_dis{
				path_end();
				state = states.ATTACK;
				}
			}
	}
}

function enemy_anim(){
	
	switch (state){
		case states.IDLE:
			sprite_index = s_idle;
			show_hurt()
		break;
	
		case states.MOVE:
			sprite_index = s_walk;
			show_hurt();
		break;
		
		case states.KNOCKBACK:
			show_hurt();
		break;
		
		case states.ATTACK:
			sprite_index = s_attack;
		break;
	
		case states.DEAD:
			sprite_index = s_dead;
		break;
		
		case states.SPAWNER:
			sprite_index = s_warlock_spawn;
		break;
		
		case states.HAILSTORM:
			sprite_index = s_necromancer_spawn;
		break;
		
		case states.LASERPHASE:
			sprite_index = s_necromancer_shoot
		break;
	}
	//set depth
	depth = -bbox_bottom;
	
	//update our previous position
	xp = x;
	yp = y;

}
	
function show_hurt(){
	//show hit/hurt sprite when being knocked back
	if knockback_time-- > 0 {sprite_index = s_hurt}
}
	
function perform_attack(){
	//attack player when we are at the correct frame
	if image_index >= attack_frame and can_attack{
		//reset for next attack
		can_attack = false;
		alarm[0] = attack_cooldown;
		
		//get attack direction
		var _dir = point_direction(x, y, o_player.x, o_player.y);
		
		//get attack position
		var _xx = x + lengthdir_x(attack_dis, _dir);
		var _yy = y + lengthdir_y(attack_dis, _dir);
		
		//create hitbox and pass our variables to the hitbox
		var _inst = instance_create_layer(_xx + 20 *facing, _yy, "Instances", o_enemy_hitbox);
		_inst.owner_id = id;
		_inst.damage = damage;
		_inst.knockback_time = knockback_time;
	}
	
}
	
function enemy_aim_weapon(){
	//get and set weapon aim
	//var _dir = undefined;

	var _dir = point_direction(x, y, o_player.x, o_player.y);
		
	//?????figure out how to stop enemies from shooting walls with collison line?????
	
	//if collision_line(x, y, o_player.x, o_player.y, o_solid, false, false){	
	//}

	
	//do we need to adjust aim?
	if _dir != undefined{
		var _diff = angle_difference(aim_dir, _dir);
		aim_dir -= (min(abs(_diff), 10) * sign(_diff));
	}
	//limit aim dir between 0 and 360
	if aim_dir >= 360 aim_dir -= 360;
	else if aim_dir < 0 aim_dir += 360;
	

}

function perform_ranged_attack(){
	//attack player when we are at the correct frame
	if image_index >= attack_frame and can_attack{
		//reset for next attack
		can_attack = false;
		alarm[0] = attack_cooldown;
		
		//get attack direction
		var _dir = point_direction(x, y, o_player.x, o_player.y);
		
		//get attack position
		var _xx = x + lengthdir_x(attack_dis, _dir);
		var _yy = y + lengthdir_y(attack_dis, _dir);
		
		//create hitbox and pass our variables to the hitbox
		var _inst = instance_create_layer(_xx + 20 *facing, _yy, "Instances", o_enemy_hitbox);
		_inst.owner_id = id;
		_inst.damage = damage;
		_inst.knockback_time = knockback_time;
	}
	
}
	
function enemy_shoot(){
	if fire {
		if can_attack{

			can_attack = false;
			alarm[0] = shoot_cooldown;
			var _dir = aim_dir;
			var _inst = instance_create_layer(x, y, "Projectile", enemy_projectile);
			if enemy_projectile = o_necro_bullet{
				var _muzzle = instance_create_layer(x + 20, y, "Enemy", o_necro_bullet_muzzle);
				with(_muzzle){
					direction = _dir;
					image_angle = _dir;
				}
			}
			with(_inst){
				hsp = lengthdir_x(other.fire_power, _dir);
				vsp = lengthdir_y(other.fire_power, _dir);
				direction = _dir;
				image_angle = _dir;

			
		}
	}
}
	
}
	
function enemy_check_spawn_spawner(){
	alarm[3] = spawner_cooldown;
	if can_spawn_spawner{
		can_spawn_spawner = false;
		alarm[3] = spawner_cooldown;
		var _dir = aim_dir;
		if !instance_exists(o_spawner){
			sprite_index = s_spawn_spawner;
			var _inst = instance_create_layer(x + random(64), y + random(64), "Enemy", o_spawner);
			screen_shake(12);
			with _inst{
				direction = _dir;
				//image_angle = _dir;
			}
			if place_meeting(o_spawner.x, o_spawner.y, o_solid){
				instance_destroy(o_spawner);
				
			}
			
		}
	}
	if instance_exists(o_spawner){
		if o_spawner.image_index >= 9 {state = states.IDLE}
	}
}
	
function summons_room_check(){
	if instance_exists(o_pillar){
	instance_create_layer(x, y, "Enemy", o_summon);
	instance_create_layer(x, y, "Enemy", o_death_skulls);
	}
}
	
	
	
//necromancer specific
	
function spawn_hail_cloud(){
	if !instance_exists(o_hail_storm){
	instance_create_layer(o_necromancer.x, o_necromancer.y - 25, "Enemy", o_hail_storm);
	hailstorm_active = true;
	}
}
	
function spawn_time_rip(){
	if !instance_exists(o_time_rip) && can_spawn_rip{
			instance_create_depth(o_player.x, o_player.y - 30, -2001, o_time_rip)
			can_spawn_rip = false;
	}
}
	
function hailstorm_attack(){
	
	
	//attack player when we are at the correct frame
	if can_attack && !instance_exists(o_time_rip){
		
		instance_create_layer(px, py, "Enemy", o_purp_circ);
		
		//reset for next attack
		can_attack = false;
		alarm[0] = hailstorm_cooldown;
		
		
		
		//get attack direction
		//var _dir = point_direction(x, y, o_player.x, o_player.y);
		
		var _hail = instance_create_depth(random_range(px + 50, px - 50), random_range(py - 50, py + 50), -2000, o_hail_rain);
		screen_shake(5)

		//create hitbox and pass our variables to the hitbox
		var _inst = instance_create_depth(_hail.x, _hail.y, -1000, o_hailstorm_hitbox);
		_inst.owner_id = id;
		_inst.damage = damage;
		_inst.knockback_time = knockback_time;

		}
		
		if alarm[3] == -1{
			alarm[3] = next_phase_countdown;
		}
		
		if stay_in_phase = false {
			if instance_exists(o_hail_storm){
				instance_create_layer(o_hail_storm.x, o_hail_storm.y, "Enemy", o_hail_storm_end);
				instance_destroy(o_hail_storm);
				
				//testing wait time in between states.
				//sprite_index = s_necromancer_laugh
				//alarm[5] = 
				
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
}

function necro_check_for_player(){
	//ensure player is alive and exists
	if instance_exists(o_player){
		if o_player.state == states.DEAD exit;
	
		//check if player is close enough to the enemy to start attacking the player
		var _dis = distance_to_object(o_player);
	
		//can we start attacking or are we already alert and out of attack distance
		if ((_dis <= alert_dis) or alert){
			//enemy is now alert
			alert = true;
			if _dis <= attack_dis{
				state = states.HAILSTORM;
				state_timer = 0;
			}
		}
	}
}
	
function set_hailstorm_phase(){
		if alarm[4] == -1{
			alarm[4] = next_phase_countdown2;
		}
		
		if stay_in_laserphase = false {
			state = states.HAILSTORM;
			state_timer = 0;
			stay_in_laserphase = true;
			alarm[4] = -1;
			next_phase_countdown2 = 280;
		}
}
	




