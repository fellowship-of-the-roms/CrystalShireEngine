	db 0 ; species ID placeholder

	db  90,  70,  70,  60,  90, 160
	evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, GRASS ; type
	db 45 ; catch rate
	db 208 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/fusang/front.dimensions"
	db SHIELD_DUST, SHIELD_DUST ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_DRAGON, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, BULLET_SEED, SLEEP_TALK, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SWIFT, FRUSTRATION, SOLARBEAM, IRON_TAIL, DRAGONBREATH, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, FIRE_BLAST, ROCK_TOMB, FACADE, REST, ATTRACT, CUT, STRENGTH, FLASH, ROCK_SMASH, FLAMETHROWER
	; end
