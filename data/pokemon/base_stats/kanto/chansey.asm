	db 0 ; species ID placeholder

	db 250,  05,  05,  50,  35, 105
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 255 ; base exp
	dw NO_ITEM, LUCKY_EGG ; items
	db GENDER_F100 ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/chansey/front.dimensions"
	db NATURAL_CURE, SERENE_GRACE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, WATER_PULSE, SUBSTITUTE, SLEEP_TALK, TOXIC, ZAP_CANNON, HAIL, HIDDEN_POWER, SUNNY_DAY, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, FRUSTRATION, SOLARBEAM, IRON_TAIL, THUNDER, EARTHQUAKE, RETURN, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, MUD_SLAP, SANDSTORM, FIRE_BLAST, ROCK_TOMB, DREAM_EATER, FACADE, REST, ATTRACT, SKILL_SWAP, STRENGTH, FLASH, ROCK_SMASH, FOCUS_PUNCH, ICE_BEAM, LIGHT_SCREEN, THUNDERBOLT, FLAMETHROWER
	; end
