	db 0 ; species ID placeholder

	db  61,  84,  65,  70,  70,  70
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, DRAGON ; type
	db 45 ; catch rate
	db 144 ; base exp
	dw NO_ITEM, DRAGON_SCALE ; items
	db GENDER_F50 ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/dragonair/front.dimensions"
	db SHED_SKIN, SHED_SKIN ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, WATER_PULSE, SUBSTITUTE, TOXIC, ZAP_CANNON, HAIL, SLEEP_TALK, HIDDEN_POWER, SUNNY_DAY, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, SWIFT, FRUSTRATION, IRON_TAIL, DRAGONBREATH, THUNDER, RETURN, DOUBLE_TEAM, SHOCK_WAVE, FIRE_BLAST, FACADE, REST, ATTRACT, SURF, WATERFALL, WHIRLPOOL, ICE_BEAM, THUNDERBOLT, FLAMETHROWER
	; end
