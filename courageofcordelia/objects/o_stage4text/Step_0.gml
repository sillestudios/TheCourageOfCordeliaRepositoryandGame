/// @description 
// You can write your code in this editor
 if anim_end{
	despawn_timer2++
	if despawn_timer2 >= 60{

		instance_destroy();
		o_agis.stage_4_end_text = true;

	}
 }
 