event_inherited();

//hp default
hp = 5;
hp_max = hp;

//footstep counter
counter_footsteps = 20;

//are we chasing the player
alert = false;

//alert distance is distance we can start chasing the player
alert_dis = 160;



//distance we stop from the player before starting the attack
attack_dis = 25;
//the frame we perform the attack
attack_frame = 4;
//can we attack?
can_attack = true;
//attack delay
attack_cooldown = 75;
//how much damage do we deal
damage = 2;
//how long do we knock back the player for?
knockback_targt_time = 10;



//create path resource
path = path_add();

//speed at wich we chase the player
move_spd = 1;

//set delay for calculating path
calc_path_delay = 30;

//set a timer for when we calc a path
calc_path_timer = irandom(60);

death_timer = 10;


