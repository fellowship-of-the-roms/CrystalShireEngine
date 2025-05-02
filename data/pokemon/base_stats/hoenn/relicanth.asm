	db 0 ; species ID placeholder

	db 100, 110, 130,  55,  45,  65
	evs  1,   1,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, ROCK ; type
	db 25 ; catch rate
	db 198 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/relicanth/front.dimensions"
	db ROCK_HEAD, SWIFT_SWIM ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_1, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, CALM_MIND, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, SAFEGUARD, FRUSTRATION, EARTHQUAKE, RETURN, DOUBLE_TEAM, SANDSTORM, ROCK_TOMB, FACADE,  REST, ATTRACT, SURF, ROCK_SMASH, WATERFALL, DIVE
	; end
