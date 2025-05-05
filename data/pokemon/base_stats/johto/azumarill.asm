	db 0 ; species ID placeholder

	db 100,  50,  80,  50,  50,  80
	evs  3,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, NORMAL ; type
	db 75 ; catch rate
	db 153 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/azumarill/front.dimensions"
	db THICK_FAT, HUGE_POWER ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, WATER_PULSE, SUBSTITUTE, TOXIC, HAIL, SLEEP_TALK, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, SWIFT, FRUSTRATION, IRON_TAIL, RETURN, DIG, BRICK_BREAK, DOUBLE_TEAM, ICE_PUNCH, MUD_SLAP, FACADE, REST, ATTRACT, SURF, STRENGTH, ROCK_SMASH, WATERFALL, WHIRLPOOL, DIVE, FOCUS_PUNCH, ICE_BEAM
	; end
