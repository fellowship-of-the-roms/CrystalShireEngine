	db 0 ; species ID placeholder

	db  40,  60, 130,  25, 100, 130
	evs  0,   0,   1,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GHOST ; type
	db 90 ; catch rate
	db 179 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/dusclops/front.dimensions"
	db PRESSURE, PRESSURE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, SUBSTITUTE, TOXIC, HIDDEN_POWER, SLEEP_TALK, SUNNY_DAY, TAUNT, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, FRUSTRATION, EARTHQUAKE, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, ICE_PUNCH, ROCK_TOMB, THUNDERPUNCH, DREAM_EATER, FACADE, REST, ATTRACT, THIEF, FIRE_PUNCH, STRENGTH, FLASH, ROCK_SMASH, FOCUS_PUNCH, ICE_BEAM, SKILL_SWAP
	; end
