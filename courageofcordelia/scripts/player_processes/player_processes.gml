function reset_variables(){
	left = 0;
	right = 0;
	up = 0;
	down = 0;
	hmove = 0;
	vmove = 0;
	dash = false;
	fire = false
	bomb = false
	ls_h = 0;
	ls_v = 0;
	rs_h = 0;
	rs_v = 0;
}

function get_input(){
	if keyboard_check(ord("A")) left = 1;
	if keyboard_check(ord("D")) right = 1;
	if keyboard_check(ord("W")) up = 1;
	if keyboard_check(ord("S")) down = 1;
	if keyboard_check_pressed(vk_space) dash = true;
	if mouse_check_button(mb_left) fire = true;
	if mouse_check_button(mb_right) bomb = true;
	var _anykey = keyboard_check(vk_anykey);
	
	if (fire or bomb) or _anykey or !(mx == mouse_x and my == mouse_y){
		global.controller = controllers.KEYBOARD;
	}
	//store our current mouse position this step
	mx = mouse_x;
	my = mouse_y;
	
	//gamepad input
	
	var _maxpads = gamepad_get_device_count();
	for (var i = 0; i < _maxpads; i++){
		if gamepad_is_connected(i) {
			gamepad_set_axis_deadzone(i, 0.15);
			ls_h = gamepad_axis_value(i, gp_axislh);
			ls_v = gamepad_axis_value(i, gp_axislv);
			rs_h = gamepad_axis_value(i, gp_axisrh);
			rs_v = gamepad_axis_value(i, gp_axisrv);
			var _fire = gamepad_button_check(i, gp_shoulderrb);
			fire = _fire or fire;
			var _bomb = gamepad_button_check(i, gp_shoulderl);
			bomb = _bomb or bomb;
			var _dash = gamepad_button_check(i, gp_shoulderlb);
			dash = _dash != 0 or dash;
			
			if ls_h !=0 or ls_v != 0 or rs_h != 0 or rs_v != 0 or _fire or _bomb or _dash{
				i = _maxpads;
				global.controller = controllers.GAMEPAD;
			}
		}
	}
	
}
	
function calc_movement(){
	if global.controller == controllers.KEYBOARD{
		//keyboard movement
		hmove = right - left;
		vmove = down - up;
		
		if hmove != 0 or vmove != 0{
			//get movement direction
			move_dir = point_direction(0, 0, hmove, vmove);
		
			//get distance we are moving
			hmove = lengthdir_x(walk_spd, move_dir);
			vmove = lengthdir_y(walk_spd, move_dir);

		} 
		
	} else {
		//gamepad movement
		//left control stick
		
		hmove = ls_h * walk_spd;
		vmove = ls_v * walk_spd;
		
		//normalise vectors so we dont go to fast diagnolly
		var _spd = sqrt(hmove * hmove + vmove * vmove);
		if _spd !=0 {
			hmove /= _spd;
			vmove /= _spd;
		}
		
		//ensure we never walk more than our speed
		hmove *= min(_spd, walk_spd);
		vmove *= min(_spd, walk_spd);
		
		if (hmove + vmove) !=0 {
			move_dir = point_direction(0, 0, hmove, vmove);
		}
	}
	
			
	//add movement to players position
	x += hmove;
	y += vmove;
	
	if (sprite_index==s_player_walk) and (o_player.counter_footsteps==0){
    audio_play_sound(choose(Footsteps_Floor_01,Footsteps_Floor_02,Footsteps_Floor_03,Footsteps_Floor_04), 1, false);
    o_player.counter_footsteps = 20; // number of steps to wait before trying to play the sound again
	}
	else if (o_player.counter_footsteps>0) o_player.counter_footsteps--;
	
	
	/*var _facing = aim_dir < 90 or aim_dir > 270;
	if _facing == 0 _facing = -1;
	facing = _facing;*/
	
	var _facing = round(aim_dir/90);
	//if _facing == 0 _facing = -1;
	facing = _facing;
	
	
	

	//apply knockback movement
	x += hsp;
	y += vsp;
	
	switch(state){
		default: var _drag = 0.15; break;
		case states.DEAD: var _drag = 0.08; break;
	}

	//apply drag to knockback
	hsp = lerp(hsp, 0, _drag);
	vsp = lerp(vsp, 0, _drag);
	

}
	
function aim_weapon(){
	//get and set weapon aim
	var _dir = undefined;
	if global.controller == controllers.KEYBOARD{
		_dir = point_direction(x, y, mouse_x, mouse_y);
	} else{
		if rs_h + rs_v != 0{
			_dir = point_direction(0, 0, rs_h, rs_v);
		}
	}
	
	//do we need to adjust aim?
	if _dir != undefined{
		var _diff = angle_difference(aim_dir, _dir);
		aim_dir -= (min(abs(_diff), 10) * sign(_diff));
	}
	//limit aim dir between 0 and 360
	if aim_dir >= 360 aim_dir -= 360;
	else if aim_dir < 0 aim_dir += 360;
	

	my_weapon.image_angle = aim_dir;
}

function collision(){
	//set target values
	var _tx = x;
	var _ty = y;
	
	//move back to last step position, out of the collision
	x = xprevious;
	y = yprevious;
	
	//get max distance we want to move
	//take off ceil to stop fast wall speed
	var _disx = ceil(abs(_tx - x));
	var _disy = ceil(abs(_ty - y));
	
	//move as far as we can in x and y before hitting the solid
	repeat(_disx){
		if !place_meeting(x + sign(_tx - x), y, o_solid) x += sign(_tx - x);
	}
		
	repeat(_disy){
		if !place_meeting(x, y + sign(_ty - y), o_solid) y += sign(_ty - y)
	}
	
}
	
function anim(){
	switch(state){
		default:
			//use this for running anims
			//if hmove != 0 or vmove != 0{

			if facing = 0 sprite_index = s_player_idle_right;
				
			if facing = 1 sprite_index = s_player_idle_up;
			
			if facing = 2 sprite_index = s_player_idle_left;
			
			if facing = 3 sprite_index = s_player_idle_down;
				
			
		break;
		
		case states.DEAD:
			sprite_index = s_player_die;
		break;
		
		case states.DASH:
			sprite_index = s_player_dash;

		break;
	}
	depth = -bbox_bottom;
	//update previous position
	xp = x;
	yp = y;
}
	
function check_fire(){
	if fire {

		if can_attack{
			
			//add screen shake to shooting
			var _dir = aim_dir;
			
			
			screen_shake(3);
			audio_play_sound_at(my_weapon.wep_shoot_sound,x,y,100,100,100,1,false,1,1);
			
			//shell casings
			if my_weapon = global.WeaponList.sidewinder{
				instance_create_depth(my_weapon.x, my_weapon.y, -500, o_shell);
			}
			
			var _fx = instance_create_layer(x, y, "Projectile", my_weapon.wep_shoot_fx);
			with (_fx){
				direction = _dir;
				image_angle = _dir;
				image_yscale = 1;
				
				if _dir > 90 && _dir < 270
					{
					image_yscale = -1;
					}
			}
			
			can_attack = false;
			alarm[0] = my_weapon.cooldown;
			
			
			weaponOffsetDist = weaponRecoil;
			
			
			var _inst = instance_create_layer(x, y, "Projectile", my_weapon.projectile);
			with (_inst){
				

				speed = o_player.my_weapon.projectile_spd;
				direction = _dir;
				image_angle = _dir;
				owner_id = other;
			}
		}
	}
}
	
function check_bomb(){
	if bomb {
		if can_throw_bomb{
			can_throw_bomb = false;
			alarm[CAN_THROW_BOMB] = bomb_cooldown;
			var _dir = aim_dir;
			var _inst = instance_create_layer(x, y, "Instances", o_bomb);
			with(_inst){
				hsp = lengthdir_x(other.bomb_power, _dir);
				vsp = lengthdir_y(other.bomb_power, _dir);
			}
		}
	}
}
	
function collision_bounce(){
	collision();
	if place_meeting(x + sign(hsp), y, o_solid) hsp = -hsp;
	if place_meeting(x, y + sign(vsp), o_solid) vsp = -vsp;
}
	
function check_dash(){
	if  dash and can_dash and !(hmove == 0 and vmove == 0){
		image_index = image_number-1
		state = states.DASH;
		instance_create_layer(x, y, "Player", o_dust_particles)
		audio_play_sound(choose(sound_dash, sound_dash2), 1, false);
		dash_timer = dash_timer_initial;
		//get direction and distance we are moving
		hsp = lengthdir_x(dash_speed, move_dir);
		vsp = lengthdir_y(dash_speed, move_dir);
		if image_index >= 4{instance_create_layer(x, y, "Player", o_dust_particles2)}

	}
}
	
function check_walk_effect(){
	//create walk effect when timer is 0
	
	//decreases our timer by 1 and check if we should create dust this step
	if create_walk_effect_timer-- <= 0{
		//set timer for next time
		create_walk_effect_timer = create_walk_effect_timer_initial;
		
		//only create dust if moving
		if x != xp or y != yp{
			var _num = instance_number(o_walk_effect);
			if _num < 100 or object_index == o_player{
				instance_create_layer(x + random_range(-2, 2), bbox_bottom + random_range(-3, 3), "Player", o_walk_effect);
			}
			
			
		}
	}
}

function screen_shake(_amount = 4){
	with (o_camera){
		xShakeAmount = _amount;
		yShakeAmount = _amount;
	}
}
	
function draw_my_weapon()
	{
	//draw weapon


//get weapon away from player body adjusting for arm length
var _xOffset = lengthdir_x(weaponOffsetDist, aim_dir);
var _yOffset = lengthdir_y(weaponOffsetDist, aim_dir);

//flip weapon on y axis correctly
var _weaponYsc1 = 1;


if aim_dir > 90 && aim_dir < 270
	{
	_weaponYsc1 = -1;
	}


draw_sprite_ext(my_weapon.sprite, image_index, x + _xOffset, y + _yOffset, 1, _weaponYsc1, aim_dir, c_white, 1);

	
	}



//specific collisions

function door_collision(){
	//set target values
	var _tx = x;
	var _ty = y;
	
	//move back to last step position, out of the collision
	x = xprevious;
	y = yprevious;
	
	//get max distance we want to move
	var _disx = floor(abs(_tx - x));
	var _disy = floor(abs(_ty - y));
	
	//move as far as we can in x and y before hitting the solid
	repeat(_disx){
		if !place_meeting(x + sign(_tx - x), y, o_door) x += sign(_tx - x);
	}
		
	repeat(_disy){
		if !place_meeting(x, y + sign(_ty - y), o_door) y += sign(_ty - y);
	}
	
}
	
function wall_down_collision(){
	//set target values
	var _tx = x;
	var _ty = y;
	
	//move back to last step position, out of the collision
	x = xprevious;
	y = yprevious;
	
	//get max distance we want to move
	var _disx = floor(abs(_tx - x));
	var _disy = floor(abs(_ty - y));
	
	//move as far as we can in x and y before hitting the solid
	repeat(_disx){
		if !place_meeting(x + sign(_tx - x), y, o_wall_down) x += sign(_tx - x);
	}
		
	repeat(_disy){
		if !place_meeting(x, y + sign(_ty - y), o_wall_down) y += sign(_ty - y);
	}
	
}
	
	
function water_collision(){
	//set target values
	var _tx = x;
	var _ty = y;
	
	//move back to last step position, out of the collision
	x = xprevious;
	y = yprevious;
	
	//get max distance we want to move
	var _disx = floor(abs(_tx - x));
	var _disy = floor(abs(_ty - y));
	
	//move as far as we can in x and y before hitting the solid
	repeat(_disx){
		if !place_meeting(x + sign(_tx - x), y, o_solid_2) x += sign(_tx - x);
	}
		
	repeat(_disy){
		if !place_meeting(x, y + sign(_ty - y), o_solid_2) y += sign(_ty - y);
	}
	
}
	
function jar_collision(){
	//set target values
	var _tx = x;
	var _ty = y;
	
	//move back to last step position, out of the collision
	x = xprevious;
	y = yprevious;
	
	//get max distance we want to move
	var _disx = floor(abs(_tx - x));
	var _disy = floor(abs(_ty - y));
	
	//move as far as we can in x and y before hitting the solid
	repeat(_disx){
		if !place_meeting(x + sign(_tx - x), y, o_jar) x += sign(_tx - x);
	}
		
	repeat(_disy){
		if !place_meeting(x, y + sign(_ty - y), o_jar) y += sign(_ty - y);
	}
	
}
	
function vase_collision(){
	//set target values
	var _tx = x;
	var _ty = y;
	
	//move back to last step position, out of the collision
	x = xprevious;
	y = yprevious;
	
	//get max distance we want to move
	var _disx = floor(abs(_tx - x));
	var _disy = floor(abs(_ty - y));
	
	//move as far as we can in x and y before hitting the solid
	repeat(_disx){
		if !place_meeting(x + sign(_tx - x), y, o_vase) x += sign(_tx - x);
	}
		
	repeat(_disy){
		if !place_meeting(x, y + sign(_ty - y), o_vase) y += sign(_ty - y);
	}
	
}
	

	
	