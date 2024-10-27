

var _chance1 = random_range(1,5);
var _chance2 = random_range(1,3);
var _chance3 = random_range(1,2);
var _chest_type = irandom(100);


if can_spawn_chest && !place_meeting(x, y, o_solid){
	can_spawn_chest = false;
	
	if _chest_type <= 5
	repeat(_chance3)
	{
	 var xx = x + random_range(-35,35);
	 var yy = y + random_range(-35,35);
	  instance_create_layer(xx, yy, "Instances", o_gold_chest);
	}
	
	if _chest_type <= 20
	repeat(_chance2)
	{
	 var xx = x + random_range(-35,35);
	 var yy = y + random_range(-35,35);
	  instance_create_layer(xx, yy, "Instances", o_green_chest);
	}

	
	if _chest_type <= 99
	repeat(_chance1)
	{
	 var xx = x + random_range(-35,35);
	 var yy = y + random_range(-35,35);
	  instance_create_layer(xx, yy, "Instances", o_chest);
	}
}