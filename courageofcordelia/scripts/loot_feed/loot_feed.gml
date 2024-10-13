// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function loot_feed() constructor{
	loot_feed_text = [];
	
	add_feed = function(_color, _text, _item, _alpha){
		array_push(loot_feed_text, {
		color : _color,
		text : _text,
		item : _item,
		alpha : _alpha
		})
	}
	
	step_loop = function(){
		//loot logs
		for (var i = 0; i < array_length(loot_feed_text); i++)
		{
		    loot_feed_text[i].alpha -= 0.009;
 
		    if (loot_feed_text[i].alpha) <= 0
		    {
				array_delete(loot_feed_text, i, 1);
		    }
		}
	}
	
	draw_loop = function(){
		//loot feed
		for (var i = 0; i < array_length(loot_feed_text); i++)
		{
		    draw_set_alpha(loot_feed_text[i].alpha);
			draw_set_font(fn_8bit);
			draw_set_color(loot_feed_text[i].color)
			text_align(fa_left, fa_center)
		    draw_text_transformed(425, 10 + 8* i, "Loot from chest:" + loot_feed_text[i].item, 0.25,0.25,0);
		}
		draw_reset();
		draw_set_color(c_white)
		draw_set_alpha(1);
	}
}


