	db 0 ; species ID placeholder

	db 100, 125,  52,  71, 105,  52
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, FLYING ; type
	db 30 ; catch rate
	db 177 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/honchkrow/front.dimensions"
	db INSOMNIA, INSOMNIA ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm SUBSTITUTE, TOXIC, HIDDEN_POWER, SLEEP_TALK, SUNNY_DAY, TAUNT, ICY_WIND, PROTECT, RAIN_DANCE, SWIFT, FRUSTRATION, RETURN, SHADOW_BALL, DOUBLE_TEAM, MUD_SLAP, AERIAL_ACE, DREAM_EATER, FACADE, REST, ATTRACT, THIEF, STEEL_WING, FLY
	; end
