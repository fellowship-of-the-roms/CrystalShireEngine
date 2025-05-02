	db 0 ; species ID placeholder

	db  80, 120,  79,  70,  95,  79
	evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db  45 ; catch rate
	db 194 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/luxray/front.dimensions"
	db INTIMIDATE, INTIMIDATE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ROAR, TOXIC, HIDDEN_POWER, HYPER_BEAM, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, THUNDERBOLT, THUNDER, RETURN, DOUBLE_TEAM, SHOCK_WAVE, FACADE,  REST, ATTRACT, THIEF, STRENGTH, FLASH
	; end
