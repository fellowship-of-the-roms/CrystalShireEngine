	db 0 ; species ID placeholder

	db  45,  30,  15,  65,  85,  65
	evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db ICE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 87 ; base exp
	dw ICE_BERRY, ICE_BERRY ; items
	db GENDER_F100 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/smoochum/front.dimensions"
	db OBLIVIOUS, OBLIVIOUS ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, WATER_PULSE, SUBSTITUTE, TOXIC, HAIL, HIDDEN_POWER, TAUNT, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, FRUSTRATION, RETURN, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, ICE_PUNCH, MUD_SLAP, DREAM_EATER, FACADE, REST, ATTRACT, THIEF, FLASH, FOCUS_PUNCH, ICE_BEAM, LIGHT_SCREEN, REFLECT, SKILL_SWAP
	; end
