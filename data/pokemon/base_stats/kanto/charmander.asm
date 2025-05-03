	db 0 ; species ID placeholder

	db  39,  52,  43,  65,  60,  50
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 65 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/charmander/front.dimensions"
	db BLAZE, BLAZE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, SUBSTITUTE, TOXIC, SLEEP_TALK, HIDDEN_POWER, SUNNY_DAY, PROTECT, FRUSTRATION, IRON_TAIL, DRAGONBREATH, RETURN, DIG, BRICK_BREAK, DOUBLE_TEAM, MUD_SLAP, FIRE_BLAST, AERIAL_ACE, FACADE, REST, ATTRACT, FIRE_PUNCH, OVERHEAT, CUT, STRENGTH, ROCK_SMASH, FOCUS_PUNCH, FLAMETHROWER
	; end
