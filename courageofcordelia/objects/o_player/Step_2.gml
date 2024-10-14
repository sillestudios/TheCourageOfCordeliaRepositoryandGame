
if aim_dir > 0 && aim_dir < 180 var _depth = 1;
else _depth = -1;

my_weapon.depth = depth + _depth;


//my_weapon.x = x + lengthdir_x(weaponOffsetDist, aim_dir);
//my_weapon.y = y + lengthdir_y(weaponOffsetDist, aim_dir);

//weaponOffsetDist = lerp( weaponOffsetDist, weaponOffsetDistInitial, 0.1)

my_weapon.x = x + lengthdir_x(my_weapon.wep_offset, aim_dir);
my_weapon.y = y + lengthdir_y(my_weapon.wep_offset, aim_dir);

my_weapon.wep_offset = lerp( my_weapon.wep_offset, my_weapon.wep_offset_init, 0.1)




