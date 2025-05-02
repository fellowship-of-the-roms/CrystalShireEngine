	db 0 ; species ID placeholder

	db  95, 125,  79,  81,  60, 100
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, FLYING ; type
	db 45 ; catch rate
	db 214 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 5 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/gyarados/front.dimensions"
	db INTIMIDATE, INTIMIDATE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_2, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, ROAR, TOXIC, HAIL, HIDDEN_POWER, TAUNT, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, FRUSTRATION, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, DOUBLE_TEAM, FLAMETHROWER, SANDSTORM, FIRE_BLAST, TORMENT, FACADE,  REST, ATTRACT, SURF, STRENGTH, ROCK_SMASH, WATERFALL, DIVE
	; end
