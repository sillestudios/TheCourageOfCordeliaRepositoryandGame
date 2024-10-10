

switch(state){
	case states.DEAD:
		image_index = image_number -1;
		image_speed = 0;
	break;
	
	case states.HAILSTORM:
		image_index = 0;
		//state = states.IDLE;
	break;
}