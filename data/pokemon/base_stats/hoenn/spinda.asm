	db 0 ; species ID placeholder

	db  60,  60,  60,  60,  60,  60
	evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 85 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/spinda/front.dimensions"
	db OWN_TEMPO, OWN_TEMPO ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	; tmhm FOCUS_PUNCH, WATER_PULSE, CALM_MIND, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, SAFEGUARD, FRUSTRATION, RETURN, DIG, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, ROCK_TOMB, FACADE,  REST, ATTRACT, THIEF, SKILL_SWAP, SNATCH, STRENGTH, FLASH, ROCK_SMASH
	; end
