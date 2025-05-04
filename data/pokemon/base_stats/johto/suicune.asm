	db 0 ; species ID placeholder

	db 100,  75, 115,  85,  90, 115
	evs  0,   0,   1,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 3 ; catch rate
	db 215 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 80 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/suicune/front.dimensions"
	db PRESSURE, PRESSURE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, WATER_PULSE, SUBSTITUTE, ROAR, TOXIC, HAIL, SLEEP_TALK, HIDDEN_POWER, SUNNY_DAY, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, SWIFT, FRUSTRATION, IRON_TAIL, RETURN, DIG, DOUBLE_TEAM, MUD_SLAP, SANDSTORM, FACADE, REST, CUT, SURF, ROCK_SMASH, WATERFALL, WHIRLPOOL, DIVE, ICE_BEAM, REFLECT
	; end
