	db 0 ; species ID placeholder

	db  45,  65,  45, 105,  95,  45
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ICE, FLYING ; type
	db 45 ; catch rate
	db 183 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/delibird/front.dimensions"
	db VITAL_SPIRIT, HUSTLE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, WATER_PULSE, SUBSTITUTE, TOXIC, HAIL, HIDDEN_POWER, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, SWIFT, FRUSTRATION, RETURN, DOUBLE_TEAM, MUD_SLAP, AERIAL_ACE, FACADE, REST, ATTRACT, THIEF, FLY, FOCUS_PUNCH, ICE_BEAM
	; end
