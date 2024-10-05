instance_create_layer(x, y, "Instances", o_explosion);
audio_play_sound(choose(sound_bomb_boom, sound_bomb_boom2), 1, false);
screen_shake(10);
instance_destroy();