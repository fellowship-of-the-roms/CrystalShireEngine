	db 0 ; species ID placeholder

	db  40,  80, 100,  20,  30,  30
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GROUND ; type
	db 255 ; catch rate
	db 86 ; base exp
	dw NO_ITEM, EVERSTONE ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/geodude/front.dimensions"
	db ROCK_HEAD, STURDY ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, FRUSTRATION, EARTHQUAKE, RETURN, DIG, BRICK_BREAK, DOUBLE_TEAM, FLAMETHROWER, SANDSTORM, FIRE_BLAST, ROCK_TOMB, FACADE,  REST, ATTRACT, STRENGTH, ROCK_SMASH
	; end
