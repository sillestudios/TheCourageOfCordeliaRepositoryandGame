instance_destroy();
o_pillar.kill_countdown = o_pillar.kill_countdown - 1;
instance_create_layer(x, y, "Enemy", o_skull_pop);