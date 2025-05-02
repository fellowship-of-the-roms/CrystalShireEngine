	db 0 ; species ID placeholder

	db  70,  62,  67,  56,  55,  55
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 120 ; catch rate
	db 117 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F100 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/nidorina/front.dimensions"
	db POISON_POINT, POISON_POINT ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, THUNDERBOLT, THUNDER, RETURN, DIG, DOUBLE_TEAM, SHOCK_WAVE, SLUDGE_BOMB, AERIAL_ACE, FACADE,  REST, ATTRACT, THIEF, CUT, STRENGTH, ROCK_SMASH
	; end
