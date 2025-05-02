	db 0 ; species ID placeholder

	db  70,  75,  60, 105,  95,  80
	evs  0,   0,   0,   1,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 75 ; catch rate
	db 138 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/venomoth/front.dimensions"
	db SHIELD_DUST, SHIELD_DUST ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, FRUSTRATION, SOLARBEAM, RETURN, PSYCHIC_M, DOUBLE_TEAM, SLUDGE_BOMB, AERIAL_ACE, FACADE,  REST, ATTRACT, THIEF, SKILL_SWAP, FLASH
	; end
