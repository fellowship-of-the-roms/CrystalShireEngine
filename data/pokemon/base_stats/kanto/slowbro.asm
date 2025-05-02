	db 0 ; species ID placeholder

	db  95,  75, 110,  30, 100,  80
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, PSYCHIC_TYPE ; type
	db 75 ; catch rate
	db 164 ; base exp
	dw NO_ITEM, KINGS_ROCK ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/slowbro/front.dimensions"
	db OBLIVIOUS, OWN_TEMPO ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, WATER_PULSE, CALM_MIND, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, SAFEGUARD, FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN, DIG, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, FACADE,  REST, ATTRACT, SKILL_SWAP, SURF, STRENGTH, FLASH, ROCK_SMASH, DIVE
	; end
