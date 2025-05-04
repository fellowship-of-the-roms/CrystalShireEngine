	db 0 ; species ID placeholder

	db  95,  80, 105, 100,  40,  70
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 200 ; base exp
	dw MOOMOO_MILK, MOOMOO_MILK ; items
	db GENDER_F100 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/miltank/front.dimensions"
	db THICK_FAT, THICK_FAT ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, WATER_PULSE, SUBSTITUTE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SLEEP_TALK, SUNNY_DAY, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, FRUSTRATION, SOLARBEAM, IRON_TAIL, THUNDER, EARTHQUAKE, RETURN, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, ICE_PUNCH, SHOCK_WAVE, MUD_SLAP, SANDSTORM, ROCK_TOMB, THUNDERPUNCH, FACADE, REST, ATTRACT, FIRE_PUNCH, SURF, STRENGTH, ROCK_SMASH, WHIRLPOOL, FOCUS_PUNCH, ICE_BEAM, THUNDERBOLT
	; end
