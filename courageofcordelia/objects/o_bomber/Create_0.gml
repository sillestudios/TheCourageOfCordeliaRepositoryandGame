/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//footstep counter
counter_footsteps = 20;

//healthbar
headheight = 13;

hp_max = 12;
hp = hp_max;

attack_dis = 75;
attack_frame = 10;

//throwing bomb
aim_dir = 0;
can_throw_bomb = true;
bomb_cooldown = 120;
bomb_power = 8;
if attack_frame = 10 bomb = true;


//assign sprites
s_idle = s_bomber_idle;
s_walk = s_bomber_run;
s_attack = s_bomber_attack;
s_dead = s_bomber_die;
s_hurt = s_bomber_hit;


death_timer = 120;