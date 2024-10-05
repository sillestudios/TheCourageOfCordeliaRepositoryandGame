

var _dir = point_direction(x, y, other.x, other.y); //get dir to push entity
var _force = force; //set force as local var for ease
with(other){
	hsp = lengthdir_x(_force, _dir); // push entity horizontally
	vsp = lengthdir_y(_force, _dir); // push entity away vertically
	
}

damage_entity(other, id, damage, random_range(45, 60)); //damage entity