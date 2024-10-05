
function saw_move(){


saw_hmove = lengthdir_x(saw_spd, saw_move_dir);
saw_vmove = lengthdir_y(saw_spd, saw_move_dir);
saw_move_dir = point_direction(0, 0, saw_hmove, saw_vmove);

x+= saw_hmove

if place_meeting(x,y,o_solid){
	x -= saw_hmove;
}
}
	
function sine_wave(time, period, amplitude, midpoint) {
    return sin(time * 2 * pi / period) * amplitude + midpoint;
}