	db 0 ; species ID placeholder

	db  90,  70, 105,  35,  80, 105
	evs  1,   0,   1,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db WATER, ROCK ; type
	db 60  ; catch rate
	db 170 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/corsoreef/front.dimensions"
	db NATURAL_CURE, NATURAL_CURE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, WATER_PULSE, SUBSTITUTE, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, BLIZZARD, PROTECT, RAIN_DANCE, FRUSTRATION, EARTHQUAKE, RETURN, DIG, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, MUD_SLAP, SANDSTORM, ROCK_TOMB, FACADE, REST, ATTRACT, SURF, STRENGTH, ROCK_SMASH, WHIRLPOOL, ICE_BEAM, LIGHT_SCREEN, REFLECT
	; end