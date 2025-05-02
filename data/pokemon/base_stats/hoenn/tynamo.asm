	db 0 ; species ID placeholder

	db  35,  55,  40,  60,  45,  40
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 150 ; catch rate should be 190
	db 55 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/tynamo/front.dimensions"
	db LEVITATE, LEVITATE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, WATER_PULSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, LIGHT_SCREEN, PROTECT, RAIN_DANCE, GIGA_DRAIN, FRUSTRATION, SOLARBEAM, THUNDERBOLT, THUNDER, RETURN, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, AERIAL_ACE, FACADE,  REST, ATTRACT, THIEF, FLASH
	; end
