
//get cam width and height
var _camW = camera_get_view_width( view_camera[0]);
var _camH = camera_get_view_height( view_camera[0]);

//use this cam for agis fight
// if o_agis var _camH = camera_get_view_height( view_camera[0])*1.5;





//center on the player
if instance_exists(o_player){
	
	x = lerp(o_player.x  - _camW/1.75, mouse_x, 0.14);
	y = lerp(o_player.y - _camH/1.75, mouse_y, 0.14);

}

	
	

	
//clamp cam pos to room borders
//x = clamp(x, 0, room_width - _camW);
//y = clamp(y, 0, room_height - _camH);

//set the camera
//camera_set_view_pos( view_camera[0], x, y);