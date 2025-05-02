	db 0 ; species ID placeholder

	db  95,  95,  85,  55, 125,  75
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 212 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/exeggutor/front.dimensions"
	db CHLOROPHYLL, CHLOROPHYLL ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm TOXIC, BULLET_SEED, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, GIGA_DRAIN, FRUSTRATION, SOLARBEAM, RETURN, PSYCHIC_M, DOUBLE_TEAM, REFLECT, SLUDGE_BOMB, FACADE,  REST, ATTRACT, THIEF, SKILL_SWAP, STRENGTH, FLASH
	; end
