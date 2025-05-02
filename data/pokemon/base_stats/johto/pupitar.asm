	db 0 ; species ID placeholder

	db  70,  84,  70,  51,  65,  70
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 144 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/pupitar/front.dimensions"
	db SHED_SKIN, SHED_SKIN ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, SUNNY_DAY, TAUNT, HYPER_BEAM, PROTECT, RAIN_DANCE, FRUSTRATION, EARTHQUAKE, RETURN, DIG, BRICK_BREAK, DOUBLE_TEAM, SANDSTORM, TORMENT, FACADE,  REST, ATTRACT, ROCK_SMASH
	; end
