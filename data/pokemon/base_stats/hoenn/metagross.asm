	db 0 ; species ID placeholder

	db  80, 135, 130,  70,  95,  90
	evs  0,   0,   3,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db STEEL, PSYCHIC_TYPE ; type
	db 3 ; catch rate
	db 210 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/metagross/front.dimensions"
	db CLEAR_BODY, CLEAR_BODY ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, SUBSTITUTE, TOXIC, HIDDEN_POWER, SLEEP_TALK, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, FRUSTRATION, EARTHQUAKE, RETURN, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, ICE_PUNCH, SLUDGE_BOMB, SANDSTORM, ROCK_TOMB, AERIAL_ACE, THUNDERPUNCH, FACADE, REST, FURY_CUTTER, CUT, STRENGTH, FLASH, ROCK_SMASH, REFLECT
	; end
