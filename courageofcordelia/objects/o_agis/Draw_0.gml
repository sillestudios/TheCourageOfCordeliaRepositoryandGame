
draw_self();

if display_enter && !stop_draw_enter{
	draw_set_font(fn_8bit)
	text_align(fa_center, fa_middle)
	draw_text_transformed(o_player.x, o_player.y-25, "It feels like my soul is escaping my body...", 0.2,0.2,0)
	if alarm[0] = -1{
		alarm[0] = 160;
	}
}

if agis_enter_speach = true{
	//draw_text_transformed(x, y+50,"You have become what you fear most.. ", 0.2,0.2,0)
	instance_create_layer(x, y+40, "Projectile", o_fearbubble)
}



draw_reset();
