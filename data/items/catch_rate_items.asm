; Pokémon traded from RBY do not have held items, so GSC usually interprets the
; catch rate as an item. However, if the catch rate appears in this table, the
; item associated with the table entry is used instead.

TimeCapsule_CatchRateItems:
	dbw 3,   BRIGHTPOWDER
	dbw 25,  LEFTOVERS
	dbw 30,  LUCKY_PUNCH
	dbw 35,  METAL_POWDER
	dbw 45,  BITTER_BERRY
	dbw 50,  GOLD_BERRY
	dbw 60,  SILVER_LEAF
	dbw 75,  GOLD_LEAF
	dbw 90,  BERRY
	dbw 100, BERRY
	dbw 120, BERRY
	dbw 135, BERRY
	dbw 150, MYSTERYBERRY
	dbw 170, POLKADOT_BOW
	dbw 180, BRICK_PIECE
	dbw 190, BERRY
	dbw 195, BERRY
	dbw 200, TM_PSYCH_UP
	dbw 220, BERRY
	dbw 225, TM_ICE_PUNCH
	dbw 235, TM_DETECT
	dbw 250, BERRY
	dbw 255, BERRY
	db 0 ; end
