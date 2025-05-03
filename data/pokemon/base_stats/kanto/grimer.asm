	db 0 ; species ID placeholder

	db  80,  80,  50,  25,  40,  50
	evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 190 ; catch rate
	db 90 ; base exp
	dw NO_ITEM, NUGGET ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/grimer/front.dimensions"
	db STENCH, STICKY_HOLD ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm SUBSTITUTE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SLEEP_TALK, SUNNY_DAY, TAUNT, PROTECT, RAIN_DANCE, GIGA_DRAIN, FRUSTRATION, THUNDER, RETURN, DIG, DOUBLE_TEAM, ICE_PUNCH, SHOCK_WAVE, MUD_SLAP, SLUDGE_BOMB, FIRE_BLAST, ROCK_TOMB, THUNDERPUNCH, FACADE, REST, ATTRACT, THIEF, FIRE_PUNCH, THUNDERBOLT, FLAMETHROWER, CURSE
	; end
