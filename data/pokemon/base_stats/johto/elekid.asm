	db 0 ; species ID placeholder

	db  45,  63,  37,  95,  65,  55
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 106 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/elekid/front.dimensions"
	db STATIC, STATIC ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, SUBSTITUTE, TOXIC, HIDDEN_POWER, SLEEP_TALK, LIGHT_SCREEN, PROTECT, RAIN_DANCE, FRUSTRATION, THUNDERBOLT, THUNDER, RETURN, PSYCHIC_M, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, FACADE, REST, ATTRACT, THIEF, FLASH, ROCK_SMASH
	; end
