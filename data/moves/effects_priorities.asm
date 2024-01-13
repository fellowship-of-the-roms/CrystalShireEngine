MoveEffectPriorities:
	dw PROTECT,      3
	dw DETECT,       3
	dw ENDURE,       3
	dw EXTREMESPEED, 1
	dw MACH_PUNCH,   1
	dw QUICK_ATTACK, 1
	; everything else at 0
	dw VITAL_THROW  -1
	dw COUNTER,     -5
	dw MIRROR_COAT, -5
	dw ROAR,        -6
	dw WHIRLWIND,   -6
	db -1
