	db 0 ; species ID placeholder

	db  80, 100,  80, 100,  80,  80
	evs  0,   1,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GROUND, DRAGON ; type
	db 45 ; catch rate
	db 197 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/flygon/front.dimensions"
	db LEVITATE, LEVITATE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm DRAGON_CLAW, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, FRUSTRATION, SOLARBEAM, IRON_TAIL, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, FLAMETHROWER, SANDSTORM, FIRE_BLAST, ROCK_TOMB, FACADE,  REST, ATTRACT, STEEL_WING, FLY, STRENGTH, ROCK_SMASH
	; end
