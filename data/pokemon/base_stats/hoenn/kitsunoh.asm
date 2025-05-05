	db 0 ; species ID placeholder

	db  55, 115,  73,  94,  60,  73
	evs  0,   2,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GHOST, NORMAL ; type
	db 60 ; catch rate
	db 177 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/kitsunoh/front.dimensions"
	db LIMBER, LIMBER ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, WATER_PULSE, SUBSTITUTE, ROAR, TOXIC, ZAP_CANNON, HIDDEN_POWER, SLEEP_TALK, SUNNY_DAY, TAUNT, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, THUNDERBOLT, THUNDER, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, SHOCK_WAVE, MUD_SLAP, AERIAL_ACE, DREAM_EATER, FACADE, REST, ATTRACT, THIEF, CUT, FLASH
	; end
