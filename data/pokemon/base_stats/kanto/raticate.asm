	db 0 ; species ID placeholder

	db  55,  81,  60,  97,  50,  70
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 116 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/raticate/front.dimensions"
	db RUN_AWAY, GUTS ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, TAUNT, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, THUNDERBOLT, THUNDER, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, SHOCK_WAVE, FACADE,  REST, ATTRACT, THIEF, CUT, STRENGTH, ROCK_SMASH
	; end
