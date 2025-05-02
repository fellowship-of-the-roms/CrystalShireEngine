	db 0 ; species ID placeholder

	db 100, 150, 140,  90, 100,  90
	evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 3 ; catch rate
	db 218 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 120 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/groudon/front.dimensions"
	db DROUGHT, DROUGHT ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm DRAGON_CLAW, ROAR, TOXIC, BULK_UP, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, SAFEGUARD, FRUSTRATION, SOLARBEAM, IRON_TAIL, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, DIG, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, FLAMETHROWER, SANDSTORM, FIRE_BLAST, ROCK_TOMB, AERIAL_ACE, FACADE,  REST, OVERHEAT, CUT, STRENGTH, ROCK_SMASH
	; end
