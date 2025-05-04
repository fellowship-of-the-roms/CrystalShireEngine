	db 0 ; species ID placeholder

	db  90,  85,  75, 115, 115, 100
	evs  0,   0,   0,   2,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 3 ; catch rate
	db 216 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 80 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/raikou/front.dimensions"
	db PRESSURE, PRESSURE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, ROAR, SUBSTITUTE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SLEEP_TALK, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, SWIFT, FRUSTRATION, IRON_TAIL, THUNDER, RETURN, DIG, DOUBLE_TEAM, SHOCK_WAVE, MUD_SLAP, SANDSTORM, FACADE, REST, CUT, STRENGTH, FLASH, ROCK_SMASH, THUNDERBOLT, REFLECT
	; end
