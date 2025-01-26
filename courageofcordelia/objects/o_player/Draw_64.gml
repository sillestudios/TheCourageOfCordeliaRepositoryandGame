if global.controller = controllers.KEYBOARD{
	//using keyboard and mouse//setting mouse cursor
	cursor_sprite = s_cursor;
} else {
	//gamepadcontrol
	cursor_sprite = cr_none;
	
	var _ratio = display_get_gui_width() / camera_get_view_width(view_camera[0]);
	
	//players x and y gui position
	var _xg = (x - camera_get_view_x(view_camera[0])) * _ratio;
	var _yg = (y - camera_get_view_y(view_camera[0])) * _ratio;
	
	//how we find the position around the player to draw the aim sprite
	var _len = 192
	var _x = _xg + lengthdir_x(_len, round(aim_dir));
	var _y = _yg + lengthdir_y(_len, round(aim_dir));
	
	//draw the sprite
	draw_sprite(s_cursor, 0, _x, _y);
}

//save game testing
draw_text(100, 100, save_tester);

//healthbar
draw_sprite_ext(s_health_bar_panel, 0, 10, 10, 1, 1, 0, c_white, 1);

var _healthPercent = hp/hp_max;
var _hpImage = _healthPercent * (sprite_get_number(s_health_percent) -1 );
draw_sprite_ext(s_health_percent, _hpImage,  55, 21, 1, 1, image_angle, image_blend, image_alpha);
draw_set_font(fn_8bit);
text_align(fa_center, fa_middle);
draw_set_color(c_white);
draw_text_transformed(115, 24.5, string(o_player.hp) + " / " + string(o_player.hp_max), 0.25, 0.25, 0);
draw_reset();

//xp bar
var _xpPercent = experience/experience_max;
var _xpImage = _xpPercent * (sprite_get_number(s_xp_percent) );
draw_sprite_ext(s_xp_percent, _xpImage, 55, 36, 1, 1, image_angle, image_blend, image_alpha);



//hotkey boxes
/*draw_sprite_ext(s_hotkey_box, 0, display_get_gui_width()/2 + 150, 975, 2.5, 2.5, image_angle, image_blend, image_alpha);
draw_sprite_ext(s_hotkey_box, 0, display_get_gui_width()/2 + 50, 975, 2.5, 2.5, image_angle, image_blend, image_alpha);
draw_sprite_ext(s_hotkey_box, 0, display_get_gui_width()/2 -50, 975, 2.5, 2.5, image_angle, image_blend, image_alpha);
draw_sprite_ext(s_hotkey_box, 0, display_get_gui_width()/2 - 150, 975, 2.5, 2.5, image_angle, image_blend, image_alpha);
draw_sprite_ext(s_hotkey_box, 0, display_get_gui_width()/2 - 250, 975, 2.5, 2.5, image_angle, image_blend, image_alpha);
draw_sprite_ext(s_bomb, 0, display_get_gui_width()/2 - 209, 1017, 3, 3, image_angle, image_blend, image_alpha);
*/
//cooldown fx
if !can_throw_bomb{
	var _cooldownImage = (alarm[2]/bomb_cooldown) * (sprite_get_number(s_cooldown_percent));
	draw_sprite_ext(s_cooldown_percent, _cooldownImage,
	display_get_gui_width()/2 - 232, 993, 3, 3, image_angle, image_blend, 0.8);
}

