	db 0 ; species ID placeholder

	db  60,  50,  50,  50,  60,  70
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db WATER, GRASS ; type
	db 120 ; catch rate
	db 141 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/lombre/front.dimensions"
	db SWIFT_SWIM, RAIN_DISH ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, WATER_PULSE, SUBSTITUTE, TOXIC, HAIL, BULLET_SEED, HIDDEN_POWER, SUNNY_DAY, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, GIGA_DRAIN, SWIFT, FRUSTRATION, SOLARBEAM, RETURN, BRICK_BREAK, DOUBLE_TEAM, ICE_PUNCH, MUD_SLAP, THUNDERPUNCH, FACADE, REST, ATTRACT, THIEF, FIRE_PUNCH, SURF, STRENGTH, FLASH, ROCK_SMASH, WATERFALL, WHIRLPOOL, DIVE, ICE_BEAM
	; end
