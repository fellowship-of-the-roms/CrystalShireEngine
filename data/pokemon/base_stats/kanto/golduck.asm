	db 0 ; species ID placeholder

	db  80,  82,  78,  85,  95,  80
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 75 ; catch rate
	db 174 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/golduck/front.dimensions"
	db DAMP, CLOUD_NINE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, WATER_PULSE, CALM_MIND, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, RETURN, DIG, BRICK_BREAK, DOUBLE_TEAM, AERIAL_ACE, FACADE,  REST, ATTRACT, SURF, STRENGTH, FLASH, ROCK_SMASH, WATERFALL, DIVE
	; end
