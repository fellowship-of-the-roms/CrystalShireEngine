	db 0 ; species ID placeholder

	db  53,  51,  53,  40,  61,  56
	evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 45 ; catch rate
	db 63 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/piplup/front.dimensions"
	db TORRENT, TORRENT ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, RETURN, DIG, DOUBLE_TEAM, ROCK_TOMB, FACADE, SECRET_POWER, REST, ATTRACT, SURF, STRENGTH, ROCK_SMASH, WATERFALL, DIVE
	; end
