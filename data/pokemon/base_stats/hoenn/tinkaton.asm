	db 0 ; species ID placeholder

	db  85,  75,  77,  94,  70, 105
	evs  0,   0,   0,   0,   0,   3
	;   hp  atk  def  spd  sat  sdf

	db STEEL, STEEL ; type
	db 45 ; catch rate
	db 199 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F100 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/tinkaton/front.dimensions"
	db PICKUP, PICKUP ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, TAUNT, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, FRUSTRATION, SOLARBEAM, EARTHQUAKE, RETURN, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, FLAMETHROWER, FIRE_BLAST, TORMENT, FACADE,  REST, ATTRACT, OVERHEAT, STRENGTH, ROCK_SMASH
	; end
