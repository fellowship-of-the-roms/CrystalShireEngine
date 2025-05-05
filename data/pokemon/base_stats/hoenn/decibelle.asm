	db 0 ; species ID placeholder

	db  75,  60, 105,  35,  99, 105
	evs  0,   0,   1,   0,   1,   1
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 30 ; catch rate
	db 222 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/decibelle/front.dimensions"
	db LEVITATE, LEVITATE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, SUBSTITUTE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SLEEP_TALK, SUNNY_DAY, TAUNT, HYPER_BEAM, PROTECT, RAIN_DANCE, SWIFT, FRUSTRATION, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SHOCK_WAVE, DREAM_EATER, FACADE, REST, ATTRACT, FLASH, LIGHT_SCREEN, REFLECT, SKILL_SWAP
	; end
