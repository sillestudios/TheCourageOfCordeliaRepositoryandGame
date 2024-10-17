
//random vars
hsp = 0; //from damage_entity()
vsp = 0; //from damage_entity()
hurt_time = 0; //from damage_entity()
knockback_time = 0; //from damage_entity()
state = states.ENTERSTAGE;

//health
hp = 1;

//death
death_timer = 120;


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
attack1_timer = 0;
fire_power = 8
attack_frame = 14;
fire = true;
can_attack = true;
shoot_cooldown = 42;
enemy_projectile = o_agis_projectile;
attack_dis = 500;
end_stage_1 = false;
stage_1_end_text = false;




