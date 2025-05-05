	db 0 ; species ID placeholder

	db  90, 100,  60,  80,  90,  60
	evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, DARK ; type
	db 45 ; catch rate
	db 181 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/shiftry/front.dimensions"
	db EARLY_BIRD, CHLOROPHYLL ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, BULLET_SEED, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SWIFT, FRUSTRATION, SOLARBEAM, RETURN, DIG, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, MUD_SLAP, ROCK_TOMB, AERIAL_ACE, FACADE, REST, ATTRACT, THIEF, FURY_CUTTER, CUT, STRENGTH, FLASH, ROCK_SMASH
	; end
