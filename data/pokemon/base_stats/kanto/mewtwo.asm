	db 0 ; species ID placeholder

	db 106, 110,  90, 130, 154,  90
	evs  0,   0,   0,   0,   3,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 3 ; catch rate
	db 220 ; base exp
	dw NO_ITEM, BERSERK_GENE ; items
	db GENDER_UNKNOWN ; gender ratio
	db 120 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/mewtwo/front.dimensions"
	db PRESSURE, PRESSURE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, WATER_PULSE, CALM_MIND, TOXIC, HAIL, BULK_UP, HIDDEN_POWER, SUNNY_DAY, TAUNT, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, FRUSTRATION, SOLARBEAM, IRON_TAIL, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, REFLECT, SHOCK_WAVE, FLAMETHROWER, SANDSTORM, FIRE_BLAST, ROCK_TOMB, AERIAL_ACE, TORMENT, FACADE,  REST, SKILL_SWAP, SNATCH, STRENGTH, FLASH, ROCK_SMASH
	; end
