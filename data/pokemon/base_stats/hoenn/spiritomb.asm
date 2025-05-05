	db 0 ; species ID placeholder

	db  50,  92, 108,  35,  92, 105
	evs  0,   0,   1,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db DARK, GHOST ; type
	db 100 ; catch rate
	db 170 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/spiritomb/front.dimensions"
	db PRESSURE, PRESSURE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, SUBSTITUTE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SLEEP_TALK, SUNNY_DAY, TAUNT, PROTECT, RAIN_DANCE, SWIFT, FRUSTRATION, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SHOCK_WAVE, ROCK_TOMB, DREAM_EATER, FACADE, REST, ATTRACT, THIEF, FLASH
	; end
