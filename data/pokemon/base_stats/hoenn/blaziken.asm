	db 0 ; species ID placeholder

	db  80, 120,  70,  80, 110,  70
	evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIGHTING ; type
	db 45 ; catch rate
	db 209 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/blaziken/front.dimensions"
	db BLAZE, BLAZE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, ROAR, TOXIC, BULK_UP, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, FRUSTRATION, EARTHQUAKE, RETURN, DIG, BRICK_BREAK, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, ROCK_TOMB, AERIAL_ACE, FACADE, REST, ATTRACT, OVERHEAT, CUT, STRENGTH, ROCK_SMASH
	; end
