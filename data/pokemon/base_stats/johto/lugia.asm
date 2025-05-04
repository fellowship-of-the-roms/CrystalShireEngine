	db 0 ; species ID placeholder

	db 106,  90, 130, 110,  90, 154
	evs  0,   0,   0,   0,   0,   3
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, FLYING ; type
	db 3 ; catch rate
	db 220 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 120 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/lugia/front.dimensions"
	db PRESSURE, PRESSURE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, WATER_PULSE, SUBSTITUTE, ROAR, TOXIC, ZAP_CANNON, HAIL, SLEEP_TALK, HIDDEN_POWER, SUNNY_DAY, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, GIGA_DRAIN, SWIFT, FRUSTRATION, IRON_TAIL, DRAGONBREATH, THUNDER, EARTHQUAKE, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SHOCK_WAVE, MUD_SLAP, SANDSTORM, AERIAL_ACE, DREAM_EATER, FACADE, REST, STEEL_WING, SKILL_SWAP, FLY, SURF, STRENGTH, ROCK_SMASH, WATERFALL, WHIRLPOOL, DIVE, ICE_BEAM, LIGHT_SCREEN, THUNDERBOLT, REFLECT
	; end
