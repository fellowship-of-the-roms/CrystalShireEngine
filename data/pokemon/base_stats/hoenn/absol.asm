	db 0 ; species ID placeholder

	db  65, 130,  60,  90,  90,  60
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 30 ; catch rate
	db 174 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/absol/front.dimensions"
	db PRESSURE, PRESSURE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, WATER_PULSE, SUBSTITUTE, TOXIC, ZAP_CANNON, HAIL, SLEEP_TALK, HIDDEN_POWER, SUNNY_DAY, TAUNT, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, SWIFT, FRUSTRATION, IRON_TAIL, THUNDER, RETURN, SHADOW_BALL, DOUBLE_TEAM, MUD_SLAP, SHOCK_WAVE, SANDSTORM, FIRE_BLAST, AERIAL_ACE, DREAM_EATER, FACADE, REST, ATTRACT, THIEF, FURY_CUTTER, CUT, STRENGTH, FLASH, ROCK_SMASH, ICE_BEAM, THUNDERBOLT, FLAMETHROWER
	; end
