	db 0 ; species ID placeholder

	db  40,  40,  40,  20,  70,  40
	evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 78 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/slugma/front.dimensions"
	db MAGMA_ARMOR, FLAME_BODY ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm SUBSTITUTE, TOXIC, HIDDEN_POWER, SLEEP_TALK, SUNNY_DAY, PROTECT, FRUSTRATION, RETURN, DOUBLE_TEAM, MUD_SLAP, FIRE_BLAST, FACADE, REST, ATTRACT, OVERHEAT, ROCK_SMASH, LIGHT_SCREEN, REFLECT, FLAMETHROWER
	; end
