	db 0 ; species ID placeholder

	db  40,  30,  50, 100,  55,  55
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 103 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/voltorb/front.dimensions"
	db SOUNDPROOF, STATIC ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, SUBSTITUTE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SLEEP_TALK, TAUNT, PROTECT, RAIN_DANCE, SWIFT, FRUSTRATION, THUNDER, RETURN, DOUBLE_TEAM, SHOCK_WAVE, FACADE, REST, THIEF, FLASH, LIGHT_SCREEN, THUNDERBOLT
	; end
