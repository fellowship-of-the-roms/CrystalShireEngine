	db 0 ; species ID placeholder

	db  60,  95, 130,  30,  60, 110
	evs  0,   2,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, GRASS ; type
	db 75 ; catch rate
	db 128 ; base exp
	dw TINYMUSHROOM, BIG_MUSHROOM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/parasect/front.dimensions"
	db EFFECT_SPORE, EFFECT_SPORE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm TOXIC, BULLET_SEED, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, FRUSTRATION, SOLARBEAM, RETURN, DIG, DOUBLE_TEAM, SLUDGE_BOMB, AERIAL_ACE, FACADE,  REST, ATTRACT, THIEF, CUT, FLASH, ROCK_SMASH
	; end
