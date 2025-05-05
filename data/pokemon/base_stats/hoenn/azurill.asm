	db 0 ; species ID placeholder

	db  50,  20,  40,  20,  20,  40
	evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 150 ; catch rate
	db 33 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/azurill/front.dimensions"
	db THICK_FAT, HUGE_POWER ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, WATER_PULSE, SUBSTITUTE, TOXIC, HAIL, SLEEP_TALK, HIDDEN_POWER, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, SWIFT, FRUSTRATION, IRON_TAIL, RETURN, DIG, BRICK_BREAK, DOUBLE_TEAM, MUD_SLAP, FACADE, REST, ATTRACT, SURF, STRENGTH, ROCK_SMASH, WATERFALL, WHIRLPOOL, DIVE, ICE_BEAM
	; end