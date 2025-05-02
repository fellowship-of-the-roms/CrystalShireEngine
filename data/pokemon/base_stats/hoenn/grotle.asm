	db 0 ; species ID placeholder

	db  75,  89,  85,  36,  55,  65
	evs  0,   1,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 142 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/grotle/front.dimensions"
	db OVERGROW, OVERGROW ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, TOXIC, BULLET_SEED, HIDDEN_POWER, SUNNY_DAY, PROTECT, GIGA_DRAIN, SAFEGUARD, FRUSTRATION, SOLARBEAM, IRON_TAIL, RETURN, DIG, BRICK_BREAK, DOUBLE_TEAM, ROCK_TOMB, AERIAL_ACE, FACADE,  REST, ATTRACT, CUT, STRENGTH, FLASH, ROCK_SMASH
	; end
