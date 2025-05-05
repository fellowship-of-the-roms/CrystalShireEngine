	db 0 ; species ID placeholder

	db  65,  40,  50,  30, 125,  60
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 100 ; catch rate
	db 130 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/duosion/front.dimensions"
	db CLOUD_NINE, CLOUD_NINE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm SUBSTITUTE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SLEEP_TALK, SUNNY_DAY, TAUNT, PROTECT, RAIN_DANCE, SWIFT, FRUSTRATION, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SHOCK_WAVE, FACADE, REST, ATTRACT, THIEF, SKILL_SWAP, FLASH, LIGHT_SCREEN, REFLECT
	; end
