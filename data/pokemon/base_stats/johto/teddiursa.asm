	db 0 ; species ID placeholder

	db  60,  80,  50,  40,  50,  50
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 120 ; catch rate
	db 124 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/teddiursa/front.dimensions"
	db PICKUP, PICKUP ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, ROAR, TOXIC, ZAP_CANNON, HIDDEN_POWER, SUNNY_DAY, TAUNT, PROTECT, RAIN_DANCE, SWIFT, FRUSTRATION, EARTHQUAKE, RETURN, DIG, BRICK_BREAK, DOUBLE_TEAM, ICE_PUNCH, MUD_SLAP, AERIAL_ACE, THUNDERPUNCH, FACADE, REST, ATTRACT, THIEF, FIRE_PUNCH, FURY_CUTTER, CUT, STRENGTH, ROCK_SMASH, FOCUS_PUNCH
	; end
