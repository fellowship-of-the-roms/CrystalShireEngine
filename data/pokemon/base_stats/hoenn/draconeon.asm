	db 0 ; species ID placeholder

	db  95,  65,  65,  60, 110, 130
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, DRAGON ; type
	db 45 ; catch rate
	db 201 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 35 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/draconeon/front.dimensions"
	db SERENE_GRACE, SERENE_GRACE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, WATER_PULSE, SUBSTITUTE, TOXIC, HAIL, SLEEP_TALK, HIDDEN_POWER, SUNNY_DAY, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, SWIFT, FRUSTRATION, IRON_TAIL, DRAGONBREATH, THUNDER, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, FACADE, REST, ATTRACT, SURF, WATERFALL, WHIRLPOOL, ICE_BEAM
	; end
