	db 0 ; species ID placeholder

	db  64,  78,  52,  81,  78,  52
	evs  0,   1,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIGHTING ; type
	db 45 ; catch rate
	db 142 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/monferno/front.dimensions"
	db BLAZE, BLAZE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, TOXIC, HIDDEN_POWER, SLEEP_TALK, SUNNY_DAY, PROTECT, SWIFT, FRUSTRATION, RETURN, DIG, BRICK_BREAK, DOUBLE_TEAM, MUD_SLAP, FIRE_BLAST, ROCK_TOMB, AERIAL_ACE, THUNDERPUNCH, FACADE, REST, ATTRACT, FIRE_PUNCH, FURY_CUTTER, OVERHEAT, CUT, STRENGTH, ROCK_SMASH, FOCUS_PUNCH,FLAMETHROWER
	; end
