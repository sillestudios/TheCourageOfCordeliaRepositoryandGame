//get collected by the player
if place_meeting(x, y, o_player)
	{
			obj_inventory.inventory.item_add("hat", 1, s_hat);
			instance_destroy();
	}
	