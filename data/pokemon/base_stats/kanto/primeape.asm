	db 0 ; species ID placeholder

	db  65, 105,  60, 105,  60,  70
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 75 ; catch rate
	db 149 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/primeape/front.dimensions"
	db VITAL_SPIRIT, VITAL_SPIRIT ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, TOXIC, BULK_UP, HIDDEN_POWER, SUNNY_DAY, TAUNT, HYPER_BEAM, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, DIG, BRICK_BREAK, DOUBLE_TEAM, ROCK_TOMB, AERIAL_ACE, FACADE,  REST, ATTRACT, THIEF, OVERHEAT, STRENGTH, ROCK_SMASH
	; end
