	db 0 ; species ID placeholder

	db  79,  83, 100,  78,  85, 110
	evs  0,   0,   0,   0,   0,   3
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 45 ; catch rate
	db 210 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/blastoise/front.dimensions"
	db TORRENT, TORRENT ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, WATER_PULSE, SUBSTITUTE, ROAR, TOXIC, ZAP_CANNON, SLEEP_TALK, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN, DIG, BRICK_BREAK, DOUBLE_TEAM, ICE_PUNCH, MUD_SLAP, FACADE, REST, ATTRACT, SURF, STRENGTH, ROCK_SMASH, WATERFALL, DIVE, WHIRLPOOL, FOCUS_PUNCH, ICE_BEAM, DOUBLE_EDGE
	; end
