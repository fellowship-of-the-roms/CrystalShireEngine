	db 0 ; species ID placeholder

	db  80, 130, 115,  75,  50,  50
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 60 ; catch rate
	db 206 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/kingler/front.dimensions"
	db HYPER_CUTTER, SHELL_ARMOR ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, SUBSTITUTE, TOXIC, HAIL, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, FRUSTRATION, RETURN, DIG, DOUBLE_TEAM, MUD_SLAP, ROCK_TOMB, FACADE, REST, ATTRACT, THIEF, FURY_CUTTER, CUT, SURF, STRENGTH, ROCK_SMASH, WHIRLPOOL, DIVE, ICE_BEAM
	; end
