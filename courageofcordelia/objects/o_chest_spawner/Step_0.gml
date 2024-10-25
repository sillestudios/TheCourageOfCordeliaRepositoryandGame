

var _chance = random_range(1,5);
var _chest_type = irandom(100);


if can_spawn_chest && !place_meeting(x, y, o_solid){
	can_spawn_chest = false;
	
	if _chest_type <= 88
	repeat(_chance)
	{
	 var xx = x + random_range(-35,35);
	 var yy = y + random_range(-35,35);
	  instance_create_layer(xx, yy, "Instances", o_chest);
	}
	
	if _chest_type > 88 && _chest_type <= 99
	repeat(_chance)
	{
	 var xx = x + random_range(-35,35);
	 var yy = y + random_range(-35,35);
	  instance_create_layer(xx, yy, "Instances", o_chest);
	}
}