
if display_enter && !stop_draw_enter{
	//draw_set_font(fn_8bit)
	//text_align(fa_center, fa_middle)
	//draw_text_transformed(o_player.x, o_player.y-25, "It feels like my soul is escaping my body...", 0.2,0.2,0)
	player_text = instance_create_layer(o_player.x, o_player.y, "Projectile", o_souldrain);
	with (player_text){
		image_xscale = 0.1;
		image_yscale = 0.1;
	}
	stop_draw_enter = true;
	
	if alarm[0] = -1{
		alarm[0] = 160;
	}
}
//draw_reset();



if agis_enter_speach = true{
	var _bub = instance_create_depth(x+10, y-10, -3000, o_fearbubble);
	with(_bub){
		image_xscale = 0.15;
		image_yscale = 0.15;
	}
	agis_enter_speach = false;
}


if !instance_exists(o_fearbubble) && draw_next{
	var _bub = instance_create_depth(x+10, y-10, -3000, o_nowyoudie);
	with(_bub){
		image_xscale = 0.15;
		image_yscale = 0.15;
	}
	draw_next = false;
}

if state = states.IDLE && end_stage_1{
	var _bub = instance_create_depth(x+10, y-10, -3000, o_youwillsuffer);
		with(_bub){
		image_xscale = 0.15;
		image_yscale = 0.15;
	}
	end_stage_1 = false;
}

if state = states.IDLE && end_stage_2{
	var _bub = instance_create_depth(x+10, y-10, -3000, o_preparefordeath);
		with(_bub){
		image_xscale = 0.15;
		image_yscale = 0.15;
	}
	end_stage_2 = false;
}

if state = states.IDLE && end_stage_3{
	var _bub = instance_create_depth(x+10, y-10, -3000, o_riseminions);
		with(_bub){
		image_xscale = 0.15;
		image_yscale = 0.15;
	}
	end_stage_3 = false;
}
if state = states.IDLE && end_stage_4{
	var _bub = instance_create_depth(x+10, y-10, -3000, o_stage4text);
		with(_bub){
		image_xscale = 0.15;
		image_yscale = 0.15;
	}
	end_stage_4 = false;
}

if state != states.ENTERSTAGE{
	var _healthPercent = hp/hp_max;
	var _hpImage = _healthPercent * (sprite_get_number(s_health_percent) -1 );
	
	draw_sprite_ext(s_agis_box, 0, 360, 10, 1, 1, image_angle, image_blend, image_alpha)
	draw_sprite_ext(s_health_percent, _hpImage,  372, 32, 1, 1, image_angle, image_blend, image_alpha);
	
	draw_set_font(fn_8bit);
	text_align(fa_center, fa_middle);
	draw_set_color(c_white);
	draw_text_transformed(431, 35.5, string(hp) + " / " + string(hp_max), 0.2, 0.2, 0);
	draw_text_transformed(432, 23, "Agis, Conjurer of Forgotten Souls", 0.19, 0.19, 0);
	draw_reset();
}

