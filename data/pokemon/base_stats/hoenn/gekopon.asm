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
	tmhm FOCUS_PUNCH, WATER_PULSE, TOXIC, HAIL, BULLET_SEED, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, GIGA_DRAIN, FRUSTRATION, SOLARBEAM, RETURN, BRICK_BREAK, DOUBLE_TEAM, FACADE,  REST, ATTRACT, THIEF, SURF, STRENGTH, FLASH, ROCK_SMASH, WATERFALL, DIVE
	; end

