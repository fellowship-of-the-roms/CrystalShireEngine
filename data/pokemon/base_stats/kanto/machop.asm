	db 0 ; species ID placeholder

	db  70,  80,  50,  35,  35,  35
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 180 ; catch rate
	db 88 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/machop/front.dimensions"
	db GUTS, GUTS ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, TOXIC, BULK_UP, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, FRUSTRATION, EARTHQUAKE, RETURN, DIG, BRICK_BREAK, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, ROCK_TOMB, FACADE,  REST, ATTRACT, THIEF, STRENGTH, ROCK_SMASH
	; end
