	db 0 ; species ID placeholder

	db  20,  40,  90,  25,  30,  90
	evs  0,   0,   0,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GHOST ; type
	db 190 ; catch rate
	db 97 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/duskull/front.dimensions"
	db LEVITATE, LEVITATE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm SUBSTITUTE, TOXIC, HIDDEN_POWER, SLEEP_TALK, SUNNY_DAY, TAUNT, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, FRUSTRATION, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, DREAM_EATER, FACADE, REST, ATTRACT, THIEF, FLASH, ICE_BEAM, SKILL_SWAP
	; end
