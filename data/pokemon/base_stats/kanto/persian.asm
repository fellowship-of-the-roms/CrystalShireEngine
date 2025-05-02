	db 0 ; species ID placeholder

	db  65,  95,  60, 115,  80,  65
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 148 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/persian/front.dimensions"
	db LIMBER, LIMBER ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, TAUNT, HYPER_BEAM, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, THUNDERBOLT, THUNDER, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, SHOCK_WAVE, AERIAL_ACE, TORMENT, FACADE,  REST, ATTRACT, THIEF, SNATCH, CUT, FLASH
	; end
