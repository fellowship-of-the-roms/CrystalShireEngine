	db 0 ; species ID placeholder

	db  70, 120,  40,  95,  95,  40
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, DARK ; type
	db 60 ; catch rate
	db 175 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/sharpedo/front.dimensions"
	db ROUGH_SKIN, ROUGH_SKIN ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, ROAR, TOXIC, HAIL, HIDDEN_POWER, TAUNT, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, FRUSTRATION, EARTHQUAKE, RETURN, DOUBLE_TEAM, ROCK_TOMB, TORMENT, FACADE,  REST, ATTRACT, THIEF, SURF, STRENGTH, ROCK_SMASH, WATERFALL, DIVE
	; end
