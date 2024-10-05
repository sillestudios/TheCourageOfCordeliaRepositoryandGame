/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var _healthPercent = hp/hp_max;
var _hpImage = _healthPercent * (sprite_get_number(s_small_health_bar) -1 );
draw_sprite_ext(s_small_health_bar, _hpImage, x , y - headheight - headheight_spacer, 0.75, 0.75, image_angle, image_blend, image_alpha );