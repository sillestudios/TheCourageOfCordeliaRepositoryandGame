snap_to_player = true;

xShake = 0;
xShakeDir = 0;
xShakeDirSpd = 45;
xShakeAmount = 0;
xShakeAmountSpd = 1/4;

yShake = 0;
yShake = 0;
yShakeDir = 0;
yShakeDirSpd = 60;
yShakeAmount = 0;
yShakeAmountSpd = 1/4;






//Resize
window_set_rectangle((display_get_width() - view_wport[0]) * 0.5, (display_get_height() - view_hport[0]) * 0.5, view_wport[0], view_hport[0]);
surface_resize(application_surface,view_wport[0],view_hport[0]);

