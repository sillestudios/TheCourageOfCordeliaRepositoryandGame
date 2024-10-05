/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//footstep counter
counter_footsteps = 20;

//enemy projectile
enemy_projectile = o_water_bolt;

//healthbar
headheight = 9;

hp_max = 15;
hp = hp_max;

attack_dis = 100;
attack_frame = 4;
if attack_frame = 4 fire = true;
can_attack = true;

//shooting
aim_dir = point_direction(x, y, o_player.x, o_player.y);
fire_power = 3; //bullet speed

shoot_cooldown = 25;


//assign sprites
s_idle = s_ratmage_idle;
s_walk = s_ratmage_run;
s_attack = s_ratmage_attack;
s_dead = s_ratmage_die;
s_hurt = s_ratmage_hit;


death_timer = 120;