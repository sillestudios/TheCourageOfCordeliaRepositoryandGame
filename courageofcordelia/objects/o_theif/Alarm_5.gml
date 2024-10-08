/// @description death timer

instance_destroy();
if instance_exists(o_pillar){
	o_pillar.kill_countdown = o_pillar.kill_countdown - 1;
	instance_create_layer(x, y, "Enemy", o_summon);
}