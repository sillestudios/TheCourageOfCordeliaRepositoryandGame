if kill_countdown <= 0{
	image_index = 7;
}


if instance_number(o_enemy_par) - 1{
kill_countdown = kill_countdown - instance_number(o_enemy_par);
}
/*if instance_exists(o_enemy_par){
	kill_countdown -= instance_number(o_enemy_par);

}