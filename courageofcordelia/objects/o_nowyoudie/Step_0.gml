/// @description STATE CHANGE IN HERE
// You can write your code in this editor
 if anim_end{
	despawn_timer++
	if despawn_timer >= 120{
		instance_destroy();
		o_agis.state = states.ATTACK1;


	}
 }
 