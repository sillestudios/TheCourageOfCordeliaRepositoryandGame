event_inherited();

//footstep sound timer (player calc move script)
counter_footsteps = 20;

//trader?
trader_collision = false;

//obj collisions
vase_col = true;

//healthbar
headheight = 12;

//money
money = 100;

//movement
walk_spd = 2;
move_dir = 0;

//hp
hp_max = 20;
hp = hp_max;

//xp
experience_max = 100;
experience = 2;

//throwing bomb

can_throw_bomb = true;
bomb_cooldown = 120;
alarm[2] = bomb_cooldown;
bomb_power = 8;

//dash variables
dash_speed = 5;
can_dash = true;

dash_cooldown = 60;
dash_timer_initial = 20;
dash_timer = dash_timer_initial;


//weapon
//add weapons to players inventory
array_push(global.PlayerWeapons, global.WeaponList.bow);			//0
array_push(global.PlayerWeapons, global.WeaponList.staff);			//1
array_push(global.PlayerWeapons, global.WeaponList.sidewinder);		//2
array_push(global.PlayerWeapons, global.WeaponList.blaster);		//3
array_push(global.PlayerWeapons, global.WeaponList.purgatory);		//4
array_push(global.PlayerWeapons, global.WeaponList.tyranny);		//5
array_push(global.PlayerWeapons, global.WeaponList.empty);			//6
array_push(global.PlayerWeapons, global.WeaponList.vector);			//7
array_push(global.PlayerWeapons, global.WeaponList.wood_bow);		//8



selectedWeapon = 0;
my_weapon = global.PlayerWeapons[selectedWeapon];
weaponOffsetDistInitial = my_weapon.wep_offset;//offset gun for length of arms
weaponOffsetDist = weaponOffsetDistInitial
weaponRecoil = my_weapon.wep_recoil;


//weapon_shoot_fx = global.PlayerWeapons[selectedWeapon].wep_shoot_fx;
//weapon_shoot_sound = global.PlayerWeapons[selectedWeapon].wep_shoot_sound;
//projectile_spd = global.PlayerWeapons[selectedWeapon].projectile_spd;


aim_dir = 0;


can_attack = true;



//used to detect if mouse has moved this step
mx = mouse_x;
my = mouse_y;
window_set_cursor(cr_none);

ready_to_restart = false // ensures we can restart after death animation

death_timer = 30






