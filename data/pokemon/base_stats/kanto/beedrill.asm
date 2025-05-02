	db 0 ; species ID placeholder

	db  65,  90,  40,  80,  45,  80
	evs  0,   2,   0,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 45 ; catch rate
	db 159 ; base exp
	dw NO_ITEM, POISON_BARB ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/beedrill/front.dimensions"
	db SWARM, SWARM ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, FRUSTRATION, SOLARBEAM, RETURN, BRICK_BREAK, DOUBLE_TEAM, SLUDGE_BOMB, AERIAL_ACE, FACADE,  REST, ATTRACT, THIEF, CUT, ROCK_SMASH
	; end
