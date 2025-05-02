	db 0 ; species ID placeholder

	db 150,  80,  70,  45,  75,  50
	evs  3,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 50 ; catch rate
	db 109 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/wigglytuff/front.dimensions"
	db CUTE_CHARM, CUTE_CHARM ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, WATER_PULSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, FRUSTRATION, SOLARBEAM, THUNDERBOLT, THUNDER, RETURN, DIG, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, REFLECT, SHOCK_WAVE, FLAMETHROWER, FIRE_BLAST, FACADE,  REST, ATTRACT, SNATCH, STRENGTH, FLASH
	; end
