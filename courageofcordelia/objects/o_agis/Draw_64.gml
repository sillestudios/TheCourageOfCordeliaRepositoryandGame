
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
	var _bub = instance_create_layer(x+10, y-10, "Projectile", o_fearbubble);
	with(_bub){
		image_xscale = 0.15;
		image_yscale = 0.15;
	}
	agis_enter_speach = false;
}


if !instance_exists(o_fearbubble) && draw_next{
	var _bub = instance_create_layer(x+10, y-10, "Projectile", o_nowyoudie);
	with(_bub){
		image_xscale = 0.15;
		image_yscale = 0.15;
	}
	draw_next = false;
}

if state = states.IDLE && end_stage_1{
	var _bub = instance_create_layer(x+10, y-10, "Projectile", o_youwillsuffer);
		with(_bub){
		image_xscale = 0.15;
		image_yscale = 0.15;
	}
	end_stage_1 = false;
}


