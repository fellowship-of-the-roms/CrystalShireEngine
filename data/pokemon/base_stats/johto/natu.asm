	db 0 ; species ID placeholder

	db  40,  50,  45,  70,  70,  45
	evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, FLYING ; type
	db 190 ; catch rate
	db 73 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/natu/front.dimensions"
	db SYNCHRONIZE, EARLY_BIRD ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm CALM_MIND, TOXIC, HIDDEN_POWER, SUNNY_DAY, LIGHT_SCREEN, PROTECT, RAIN_DANCE, GIGA_DRAIN, FRUSTRATION, SOLARBEAM, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, REFLECT, AERIAL_ACE, FACADE,  REST, ATTRACT, THIEF, STEEL_WING, SKILL_SWAP, FLASH
	; end
