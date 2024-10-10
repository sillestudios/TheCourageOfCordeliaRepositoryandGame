//macros
//alarms
#macro CAN_ATTACK		0
#macro HURT				1
#macro CAN_THROW_BOMB	2
#macro CAN_DASH         3


//enums
enum states{
	IDLE,
	MOVE,
	ATTACK,
	DEAD,
	KNOCKBACK,
	DASH,
	SPAWNER,
	HAILSTORM,
	LASERPHASE,
	INBETWEEN
	
}

enum controllers{
	GAMEPAD,
	KEYBOARD,
}

