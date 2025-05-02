	db 0 ; species ID placeholder

	db  35,  55,  30,  90,  50,  40
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 82 ; base exp
	dw NO_ITEM, BERRY ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/pikachu/front.dimensions"
	db STATIC, STATIC ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, TOXIC, HIDDEN_POWER, LIGHT_SCREEN, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, THUNDERBOLT, THUNDER, RETURN, DIG, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, FACADE,  REST, ATTRACT, STRENGTH, FLASH, ROCK_SMASH
	; end
