	db 0 ; species ID placeholder

	db  90,  65,  65,  15,  40,  40
	evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, PSYCHIC_TYPE ; type
	db 190 ; catch rate
	db 99 ; base exp
	dw NO_ITEM, KINGS_ROCK ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/slowpoke/front.dimensions"
	db OBLIVIOUS, OWN_TEMPO ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, CALM_MIND, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, SAFEGUARD, FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN, DIG, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, FACADE,  REST, ATTRACT, SKILL_SWAP, SURF, STRENGTH, FLASH, DIVE
	; end
