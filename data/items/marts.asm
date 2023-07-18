Marts:
; entries correspond to MART_* constants (see constants/mart_constants.asm)
	table_width 2, Marts
	dw MartCherrygrove
	dw MartCherrygroveDex
	dw MartViolet
	dw MartAzalea
	dw MartCianwood
	dw MartGoldenrod2F1
	dw MartGoldenrod2F2
	dw MartGoldenrod3F
	dw MartGoldenrod4F
	dw MartGoldenrod5F1
	dw MartGoldenrod5F2
	dw MartGoldenrod5F3
	dw MartGoldenrod5F4
	dw MartOlivine
	dw MartEcruteak
	dw MartMahogany1
	dw MartMahogany2
	dw MartBlackthorn
	dw MartViridian
	dw MartPewter
	dw MartCerulean
	dw MartLavender
	dw MartVermilion
	dw MartCeladon2F1
	dw MartCeladon2F2
	dw MartCeladon3F
	dw MartCeladon4F
	dw MartCeladon5F1
	dw MartCeladon5F2
	dw MartFuchsia
	dw MartSaffron
	dw MartMtMoon
	dw MartIndigoPlateau
	dw MartUnderground
	assert_table_length NUM_MARTS

MartCherrygrove:
	db 4 ; # items
	dw POTION
	dw ANTIDOTE
	dw PARLYZ_HEAL
	dw AWAKENING

MartCherrygroveDex:
	db 5 ; # items
	dw POKE_BALL
	dw POTION
	dw ANTIDOTE
	dw PARLYZ_HEAL
	dw AWAKENING

MartViolet:
	db 10 ; # items
	dw POKE_BALL
	dw POTION
	dw ESCAPE_ROPE
	dw ANTIDOTE
	dw PARLYZ_HEAL
	dw AWAKENING
	dw X_DEFEND
	dw X_ATTACK
	dw X_SPEED
	dw FLOWER_MAIL

MartAzalea:
	db 9 ; # items
	dw CHARCOAL
	dw POKE_BALL
	dw POTION
	dw SUPER_POTION
	dw ESCAPE_ROPE
	dw REPEL
	dw ANTIDOTE
	dw PARLYZ_HEAL
	dw FLOWER_MAIL

MartCianwood:
	db 5 ; # items
	dw POTION
	dw SUPER_POTION
	dw HYPER_POTION
	dw FULL_HEAL
	dw REVIVE

MartGoldenrod2F1:
	db 7 ; # items
	dw POTION
	dw SUPER_POTION
	dw ANTIDOTE
	dw PARLYZ_HEAL
	dw AWAKENING
	dw BURN_HEAL
	dw ICE_HEAL

MartGoldenrod2F2:
	db 8 ; # items
	dw POKE_BALL
	dw GREAT_BALL
	dw ESCAPE_ROPE
	dw REPEL
	dw REVIVE
	dw FULL_HEAL
	dw POKE_DOLL
	dw FLOWER_MAIL

MartGoldenrod3F:
	db 7 ; # items
	dw X_SPEED
	dw X_SPECIAL
	dw X_DEFEND
	dw X_ATTACK
	dw DIRE_HIT
	dw GUARD_SPEC
	dw X_ACCURACY

MartGoldenrod4F:
	db 5 ; # items
	dw PROTEIN
	dw IRON
	dw CARBOS
	dw CALCIUM
	dw HP_UP

MartGoldenrod5F1:
	db 3 ; # items
	dw TM_THUNDERPUNCH
	dw TM_FIRE_PUNCH
	dw TM_ICE_PUNCH

MartGoldenrod5F2:
	db 4 ; # items
	dw TM_THUNDERPUNCH
	dw TM_FIRE_PUNCH
	dw TM_ICE_PUNCH
	dw TM_HEADBUTT

MartGoldenrod5F3:
	db 4 ; # items
	dw TM_THUNDERPUNCH
	dw TM_FIRE_PUNCH
	dw TM_ICE_PUNCH
	dw TM_ROCK_SMASH

MartGoldenrod5F4:
	db 5 ; # items
	dw TM_THUNDERPUNCH
	dw TM_FIRE_PUNCH
	dw TM_ICE_PUNCH
	dw TM_HEADBUTT
	dw TM_ROCK_SMASH

MartOlivine:
	db 9 ; # items
	dw GREAT_BALL
	dw SUPER_POTION
	dw HYPER_POTION
	dw ANTIDOTE
	dw PARLYZ_HEAL
	dw AWAKENING
	dw ICE_HEAL
	dw SUPER_REPEL
	dw SURF_MAIL

MartEcruteak:
	db 10 ; # items
	dw POKE_BALL
	dw GREAT_BALL
	dw POTION
	dw SUPER_POTION
	dw ANTIDOTE
	dw PARLYZ_HEAL
	dw AWAKENING
	dw BURN_HEAL
	dw ICE_HEAL
	dw REVIVE

MartMahogany1:
	db 4 ; # items
	dw TINYMUSHROOM
	dw SLOWPOKETAIL
	dw POKE_BALL
	dw POTION

MartMahogany2:
	db 9 ; # items
	dw RAGECANDYBAR
	dw GREAT_BALL
	dw SUPER_POTION
	dw HYPER_POTION
	dw ANTIDOTE
	dw PARLYZ_HEAL
	dw SUPER_REPEL
	dw REVIVE
	dw FLOWER_MAIL

MartBlackthorn:
	db 9 ; # items
	dw GREAT_BALL
	dw ULTRA_BALL
	dw HYPER_POTION
	dw MAX_POTION
	dw FULL_HEAL
	dw REVIVE
	dw MAX_REPEL
	dw X_DEFEND
	dw X_ATTACK

MartViridian:
	db 9 ; # items
	dw ULTRA_BALL
	dw HYPER_POTION
	dw FULL_HEAL
	dw REVIVE
	dw ANTIDOTE
	dw PARLYZ_HEAL
	dw AWAKENING
	dw BURN_HEAL
	dw FLOWER_MAIL

MartPewter:
	db 7 ; # items
	dw GREAT_BALL
	dw SUPER_POTION
	dw SUPER_REPEL
	dw ANTIDOTE
	dw PARLYZ_HEAL
	dw AWAKENING
	dw BURN_HEAL

MartCerulean:
	db 9 ; # items
	dw GREAT_BALL
	dw ULTRA_BALL
	dw SUPER_POTION
	dw SUPER_REPEL
	dw FULL_HEAL
	dw X_DEFEND
	dw X_ATTACK
	dw DIRE_HIT
	dw SURF_MAIL

MartLavender:
	db 8 ; # items
	dw GREAT_BALL
	dw POTION
	dw SUPER_POTION
	dw MAX_REPEL
	dw ANTIDOTE
	dw PARLYZ_HEAL
	dw AWAKENING
	dw BURN_HEAL

MartVermilion:
	db 8 ; # items
	dw ULTRA_BALL
	dw SUPER_POTION
	dw HYPER_POTION
	dw REVIVE
	dw PARLYZ_HEAL
	dw AWAKENING
	dw BURN_HEAL
	dw LITEBLUEMAIL

MartCeladon2F1:
	db 7 ; # items
	dw POTION
	dw SUPER_POTION
	dw HYPER_POTION
	dw MAX_POTION
	dw REVIVE
	dw SUPER_REPEL
	dw MAX_REPEL

MartCeladon2F2:
	db 10 ; # items
	dw POKE_BALL
	dw GREAT_BALL
	dw ULTRA_BALL
	dw ESCAPE_ROPE
	dw FULL_HEAL
	dw ANTIDOTE
	dw BURN_HEAL
	dw ICE_HEAL
	dw AWAKENING
	dw PARLYZ_HEAL

MartCeladon3F:
	db 5 ; # items
	dw TM_HIDDEN_POWER
	dw TM_SUNNY_DAY
	dw TM_PROTECT
	dw TM_RAIN_DANCE
	dw TM_SANDSTORM

MartCeladon4F:
	db 3 ; # items
	dw POKE_DOLL
	dw LOVELY_MAIL
	dw SURF_MAIL

MartCeladon5F1:
	db 5 ; # items
	dw HP_UP
	dw PROTEIN
	dw IRON
	dw CARBOS
	dw CALCIUM

MartCeladon5F2:
	db 7 ; # items
	dw X_ACCURACY
	dw GUARD_SPEC
	dw DIRE_HIT
	dw X_ATTACK
	dw X_DEFEND
	dw X_SPEED
	dw X_SPECIAL

MartFuchsia:
	db 7 ; # items
	dw GREAT_BALL
	dw ULTRA_BALL
	dw SUPER_POTION
	dw HYPER_POTION
	dw FULL_HEAL
	dw MAX_REPEL
	dw FLOWER_MAIL

MartSaffron:
	db 8 ; # items
	dw GREAT_BALL
	dw ULTRA_BALL
	dw HYPER_POTION
	dw MAX_POTION
	dw FULL_HEAL
	dw X_ATTACK
	dw X_DEFEND
	dw FLOWER_MAIL

MartMtMoon:
	db 6 ; # items
	dw POKE_DOLL
	dw FRESH_WATER
	dw SODA_POP
	dw LEMONADE
	dw REPEL
	dw PORTRAITMAIL

MartIndigoPlateau:
	db 7 ; # items
	dw ULTRA_BALL
	dw MAX_REPEL
	dw HYPER_POTION
	dw MAX_POTION
	dw FULL_RESTORE
	dw REVIVE
	dw FULL_HEAL

MartUnderground:
	db 4 ; # items
	dw ENERGYPOWDER
	dw ENERGY_ROOT
	dw HEAL_POWDER
	dw REVIVAL_HERB

DefaultMart:
	db 2 ; # items
	dw POKE_BALL
	dw POTION
