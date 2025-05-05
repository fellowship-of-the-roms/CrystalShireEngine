	db 0 ; species ID placeholder

	db  95, 109, 105,  56,  75,  85
	evs  0,   2,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GROUND ; type
	db 45 ; catch rate
	db 236 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/sceptile/front.dimensions"
	db OVERGROW, OVERGROW ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, BULLET_SEED, SLEEP_TALK, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SWIFT, FRUSTRATION, SOLARBEAM, IRON_TAIL, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, ROCK_TOMB, FACADE, REST, ATTRACT, CUT, STRENGTH, FLASH, ROCK_SMASH
	; end
