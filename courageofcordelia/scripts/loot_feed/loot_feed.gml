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
}


