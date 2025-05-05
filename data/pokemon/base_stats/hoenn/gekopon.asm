	db 0 ; species ID placeholder

	db 109,  64,  81,  45, 103,  73
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, GRASS ; type
	db 45 ; catch rate
	db 154 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/gekopon/front.dimensions"
	db DAMP, DAMP ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_1, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, TOXIC, BULLET_SEED, HIDDEN_POWER, SLEEP_TALK, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, FRUSTRATION, SOLARBEAM, RETURN, DOUBLE_TEAM, SLUDGE_BOMB, FACADE, REST, ATTRACT, THIEF, CUT, FLASH, ROCK_SMASH
	; end

