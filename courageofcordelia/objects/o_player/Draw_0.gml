/// @description Insert description here
// You can write your code in this editor


//draw weapon behind the player


if aim_dir > 45 && aim_dir < 135 {
	if state != states.DASH{
		draw_my_weapon();
	}
}



// Inherit the parent event
event_inherited();

//draw weapon
if aim_dir >= 135 or aim_dir <= 45 {
	if state != states.DASH{
		draw_my_weapon();
	}
}



