//constructor template for weapons

function create_weapon(_sprite, _spriteIcon, _projectile_spd,
_weaponOffset, _weaponOffset_init, _weaponRecoil, _projectileObj, _cooldown,
_wep_shoot_fx, _wep_shoot_sound,
_bulletNum = 1, _bulletSpread = 0) constructor
{
sprite = _sprite;
sprite_icon = _spriteIcon;
projectile_spd = _projectile_spd;
wep_offset = _weaponOffset; //distance from the player
wep_offset_init = _weaponOffset_init
wep_recoil = _weaponRecoil; //how close will the weapon get to the player
projectile = _projectileObj;
cooldown = _cooldown;
wep_shoot_fx = _wep_shoot_fx;
wep_shoot_sound = _wep_shoot_sound;
bulletNum = _bulletNum;
spread = _bulletSpread;

}


//the players weapon inventory
global.PlayerWeapons = array_create(0);


//the weapons

global.WeaponList = 
	{
		
	bow : new create_weapon(
		s_bow,
		s_bow,
		7,
		13,
		13,
		7,
		o_arrow,
		30,
		o_bow_shoot_fx,
		sound_bow_shoot_1
		),
		
	bow2 : new create_weapon(
		s_bow2,
		s_bow2,
		7,
		13,
		13,
		10,
		o_arrow,
		25,
		o_bow_shoot_fx,
		sound_bow_shoot_1
		),

	staff : new create_weapon(
		s_staff,
		s_staff_icon,
		5,
		20,
		20,
		12,
		o_flame_bolt,
		15,
		o_bow_shoot_fx,
		sound_bow_shoot_1
		),
		
	sidewinder : new create_weapon(
		s_sidewinder,
		s_sidewinder,
		6,
		9,
		9,
		-5,
		o_pistol_bullet,
		45,
		o_pistol_muzzle,
		choose(pistol_shot,pistol_shot2)
		),
		
	blaster : new create_weapon(
		s_blaster,
		s_blaster,
		6,
		11,
		11,
		-12,
		o_blaster_bullet,
		45,
		o_blaster_muzzle,
		choose(pistol_shot,pistol_shot2)
	),
	
	purgatory : new create_weapon(
		s_purgatory,
		s_purgatory,
		6,
		9,
		9,
		-9,
		o_purgatory_bullet,
		25,
		o_purgatory_muzzle,
		choose(pistol_shot, pistol_shot2)
	
	),
	
	tyranny : new create_weapon(
		s_tyranny,
		s_tyranny,
		6,
		10,
		10,
		-15,
		o_tyranny_bullet,
		20,
		o_tyranny_muzzle,
		choose(pistol_shot, pistol_shot2)
	
	),
	
	vector : new create_weapon(
		s_vector,
		s_vector,
		9,
		11,
		11,
		0,
		o_pistol_bullet,
		5,
		o_pistol_muzzle,
		sound_vector_shot
		),
	
	empty : new create_weapon(
		s_empty,
		s_empty,
		0,
		0,
		0,
		0,
		o_empty,
		0,
		o_empty,
		sound_empty
	),
	
	wood_bow : new create_weapon(
		s_wood_bow,
		s_wood_bow,
		7,
		13,
		13,
		4,
		o_wood_bow_arrow,
		30,
		o_empty,
		sound_bow_shoot_1
		),
		
	fn : new create_weapon(
		s_fn,
		s_fn,
		7,
		9,
		9,
		0,
		o_pistol_bullet,
		40,
		o_pistol_muzzle,
		fn_shot
		),
		
	lmg : new create_weapon(
		s_lmg,
		s_lmg,
		7,
		14,
		14,
		0,
		o_pistol_bullet,
		15,
		o_pistol_muzzle,
		lmg_shot
		),
	
	
	
		
	
	}

