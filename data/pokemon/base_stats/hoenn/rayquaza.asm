	db 0 ; species ID placeholder

	db 105, 150,  90,  95, 150,  90
	evs  0,   2,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, FLYING ; type
	db 3 ; catch rate
	db 220 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 120 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/rayquaza/front.dimensions"
	db AIR_LOCK, AIR_LOCK ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, WATER_PULSE, SUBSTITUTE, ROAR, TOXIC, ZAP_CANNON, HIDDEN_POWER, SLEEP_TALK, SUNNY_DAY, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, SWIFT, FRUSTRATION, SOLARBEAM, IRON_TAIL, DRAGONBREATH, THUNDER, EARTHQUAKE, RETURN, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, SANDSTORM, FIRE_BLAST, AERIAL_ACE, FACADE, REST, FURY_CUTTER, OVERHEAT, FLY, SURF, STRENGTH, ROCK_SMASH, WATERFALL, WHIRLPOOL, DIVE, ICE_BEAM, THUNDERBOLT, FLAMETHROWER
	; end
