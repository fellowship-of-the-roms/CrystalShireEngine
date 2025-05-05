	db 0 ; species ID placeholder

	db 135,  85,  40,   5,  40,  85
	evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 50 ; catch rate
	db 78 ; base exp
	dw LEFTOVERS, LEFTOVERS ; items
	db GENDER_F12_5 ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/munchlax/front.dimensions"
	db PICKUP, THICK_FAT ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, WATER_PULSE, SUBSTITUTE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SLEEP_TALK, SUNNY_DAY, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, FRUSTRATION, SOLARBEAM, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, ICE_PUNCH, SHOCK_WAVE, MUD_SLAP, SANDSTORM, FIRE_BLAST, ROCK_TOMB, THUNDERPUNCH, FACADE, REST, ATTRACT, FIRE_PUNCH, SURF, STRENGTH, WHIRLPOOL, FOCUS_PUNCH, ICE_BEAM, FLAMETHROWER
	; end
