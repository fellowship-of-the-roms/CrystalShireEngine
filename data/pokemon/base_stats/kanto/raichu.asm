	db 0 ; species ID placeholder

	db  60,  90,  55, 100,  90,  80
	evs  0,   0,   0,   3,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 75 ; catch rate
	db 122 ; base exp
	dw NO_ITEM, BERRY ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/raichu/front.dimensions"
	db STATIC, STATIC ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, SUBSTITUTE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SLEEP_TALK, HYPER_BEAM, PROTECT, RAIN_DANCE, SWIFT, FRUSTRATION, IRON_TAIL, THUNDER, RETURN, DIG, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, MUD_SLAP, AERIAL_ACE, THUNDERPUNCH, FACADE, REST, ATTRACT, SURF, STRENGTH, FLASH, ROCK_SMASH, FOCUS_PUNCH, LIGHT_SCREEN, THUNDERBOLT 
	; end
