	db 0 ; species ID placeholder

	db  60,  80,  50,  30,  40,  40
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 190 ; catch rate
	db 63 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/snubbull/front.dimensions"
	db INTIMIDATE, RUN_AWAY ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, WATER_PULSE, SUBSTITUTE, ROAR, TOXIC, ZAP_CANNON, HIDDEN_POWER, SUNNY_DAY, TAUNT, PROTECT, RAIN_DANCE, FRUSTRATION, SOLARBEAM, THUNDER, EARTHQUAKE, RETURN, DIG, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, ICE_PUNCH, SHOCK_WAVE, MUD_SLAP, SLUDGE_BOMB, FIRE_BLAST, THUNDERPUNCH, FACADE, REST, ATTRACT, THIEF, FIRE_PUNCH, OVERHEAT, STRENGTH, ROCK_SMASH, FOCUS_PUNCH, THUNDERBOLT, FLAMETHROWER
	; end
