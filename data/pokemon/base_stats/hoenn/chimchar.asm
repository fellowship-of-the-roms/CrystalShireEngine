	db 0 ; species ID placeholder

	db  44,  58,  44,  61,  58,  44
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 62 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/chimchar/front.dimensions"
	db BLAZE, BLAZE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, SUBSTITUTE, TOXIC, HIDDEN_POWER, SLEEP_TALK, SLEEP_TALK, SUNNY_DAY, PROTECT, SWIFT, FRUSTRATION, RETURN, DIG, DOUBLE_TEAM, MUD_SLAP, FIRE_BLAST, ROCK_TOMB, AERIAL_ACE, FACADE, REST, ATTRACT, OVERHEAT, CUT, STRENGTH, ROCK_SMASH, FLAMETHROWER
	; end
