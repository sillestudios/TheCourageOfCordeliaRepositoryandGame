/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

facing = 1;

//footstep counter
counter_footsteps = 20;

//healthbar
headheight = 10;

hp_max = 100;
hp = hp_max;

alert_dis = 4000;
attack_dis = 750
hailstorm_cooldown = 35;
hailstorm_active = false;
attack_frame = 1;

stay_in_phase = true;
stay_in_laserphase = true;
next_phase_countdown = 280;
next_phase_countdown2 = 280;

//shooting
enemy_projectile = o_necro_bullet;
attack_dis = 500;
attack_frame = 2;
if attack_frame = 2 fire = true;
can_attack = true;
aim_dir = point_direction(x, y, o_player.x, o_player.y);
fire_power = 3; //bullet speed
shoot_cooldown = 25;

knockback_time = 0;





//assign sprites
s_idle = s_necromancer_idle;
s_attack = s_necromancer_shoot;
s_dead = s_necromancer_die;
s_hurt = s_necromancer_hit;
s_walk = s_necromancer_die


death_timer = 120;

