
//ENTERSTAGE PHASE
display_enter = false;
stop_draw_enter = false;

alert = false;
attack_dis = 200;
alert_dis = 200;

sprite_index = s_agis_tele_in;
image_index = 0;
image_speed = 0;

ready_to_tele_in = false;
agis_enter_speach = false;

draw_next = false;

//ATTACK1
fire_power = 8
attack_frame = 14;
fire = false;
can_attack = true;
shoot_cooldown = 45;
enemy_projectile = o_agis_projectile;

attack_dis = 500;
aim_dir = point_direction(x, y, o_player.x, o_player.y);
//fire_power = 3; //bullet speed


knockback_time = 0;


state = states.ENTERSTAGE;