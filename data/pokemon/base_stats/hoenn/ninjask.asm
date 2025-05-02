	db 0 ; species ID placeholder

	db  61,  90,  45, 160,  50,  50
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 120 ; catch rate
	db 155 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/ninjask/front.dimensions"
	db SPEED_BOOST, SPEED_BOOST ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_ERRATIC ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, FRUSTRATION, SOLARBEAM, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, SANDSTORM, AERIAL_ACE, FACADE,  REST, ATTRACT, THIEF, CUT, FLASH
	; end
