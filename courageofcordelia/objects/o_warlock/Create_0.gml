event_inherited();

//footstep counter
counter_footsteps = 20;

//healthbar
headheight = 20;

//enemy projectile
enemy_projectile = o_enemy_flame_bolt;

//spawner info
can_spawn_spawner = false;
spawner_cooldown = 10;

hp_max = 15;
hp = hp_max;

attack_dis = 100;
attack_frame = 4;
if attack_frame = 4 fire = true;
can_attack = true;

//shooting
aim_dir = point_direction(x, y, o_player.x, o_player.y);
fire_power = 5; //bullet speed

shoot_cooldown = 25;


//assign sprites
s_idle = s_warlock_idle;
s_walk = s_warlock_walk;
s_attack = s_warlock_attack;
s_dead = s_warlock_die;
s_hurt = s_warlock_hit;
s_spawn_spawner = s_warlock_spawn;


death_timer = 120;