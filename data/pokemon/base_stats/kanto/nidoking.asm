	db 0 ; species ID placeholder

	db  81,  92,  77,  85,  85,  75
	evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db POISON, GROUND ; type
	db 45 ; catch rate
	db 195 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/nidoking/front.dimensions"
	db POISON_POINT, POISON_POINT ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, WATER_PULSE, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, TAUNT, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, DIG, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, FLAMETHROWER, SLUDGE_BOMB, SANDSTORM, FIRE_BLAST, ROCK_TOMB, TORMENT, FACADE,  REST, ATTRACT, THIEF, CUT, SURF, STRENGTH, ROCK_SMASH
	; end
