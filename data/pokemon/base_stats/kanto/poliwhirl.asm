	db 0 ; species ID placeholder

	db  65,  65,  65,  90,  50,  50
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 120 ; catch rate
	db 131 ; base exp
	dw NO_ITEM, KINGS_ROCK ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/poliwhirl/front.dimensions"
	db WATER_ABSORB, DAMP ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, WATER_PULSE, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, FRUSTRATION, EARTHQUAKE, RETURN, DIG, PSYCHIC_M, BRICK_BREAK, DOUBLE_TEAM, FACADE,  REST, ATTRACT, THIEF, SURF, STRENGTH, ROCK_SMASH, WATERFALL, DIVE
	; end
