
//get cam width and height
var _camW = camera_get_view_width( view_camera[0]);
var _camH = camera_get_view_height( view_camera[0]);

	
	if room = Rooms5_1{
		var _camW = camera_get_view_width( view_camera[0]);
		var _camH = camera_get_view_height( view_camera[0])*1.5;
		new_cam_size = true;
	}
	
	if new_cam_size{
	new_cam_size = true;
	camera_set_view_size(view_camera[0], 625, 352);
	}
	new_cam_size = false;


//center on the player
if instance_exists(o_player){
	x = lerp(o_player.x  - _camW/1.75, mouse_x, 0.14);
	y = lerp(o_player.y - _camH/1.75, mouse_y, 0.14);
}

