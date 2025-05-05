	db 0 ; species ID placeholder

	db  63,  81,  48,  57,  68,  53
	evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db FIRE, GROUND ; type
	db 255 ; catch rate
	db 88 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/smoguana/front.dimensions"
	db OBLIVIOUS, OBLIVIOUS ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, SUBSTITUTE, TOXIC, HIDDEN_POWER, SLEEP_TALK, SUNNY_DAY, PROTECT, FRUSTRATION, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, MUD_SLAP, SANDSTORM, FIRE_BLAST, ROCK_TOMB, FACADE, REST, ATTRACT, OVERHEAT, STRENGTH, ROCK_SMASH, FLAMETHROWER
	; end
