state = states.IDLE;
//init prevous positions
xp = x;
yp = y;

//facing direction
facing = 1;

hsp = 0;
vsp = 0;

//how long we are knocked back for
knockback_time = 10;

hurt_time = 30; //hurt frames
flash_initial = 16;
flash = flash_initial/2;
show_flash_initial = 4;
show_flash = show_flash_initial;

//walk effect
create_walk_effect_timer_initial = 8;
create_walk_effect_timer = 0;

//healthbar
headheight = 0;
headheight_spacer = 7;