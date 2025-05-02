	db 0 ; species ID placeholder

	db 255,  10,  10,  55,  75, 135
	evs  3,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 255 ; base exp
	dw NO_ITEM, LUCKY_EGG ; items
	db GENDER_F100 ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/blissey/front.dimensions"
	db NATURAL_CURE, SERENE_GRACE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, WATER_PULSE, CALM_MIND, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, FRUSTRATION, SOLARBEAM, IRON_TAIL, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, FLAMETHROWER, SANDSTORM, FIRE_BLAST, ROCK_TOMB, FACADE,  REST, ATTRACT, SKILL_SWAP, SNATCH, STRENGTH, FLASH, ROCK_SMASH
	; end
