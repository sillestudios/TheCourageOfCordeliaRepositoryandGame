/// @description Insert description here
// You can write your code in this editor
image_index = 36;
image_speed = 0;
despawn_timer++

if despawn_timer <= 0{
	if despawn_timer = 120{
		instance_destroy(self);
		despawn_timer = 0;
	}
}
