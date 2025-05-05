	db 0 ; species ID placeholder

	db  40,  40,  50,  30,  30,  30
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 255 ; catch rate
	db 74 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/seedot/front.dimensions"
	db EARLY_BIRD, CHLOROPHYLL ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, TOXIC, BULLET_SEED, HIDDEN_POWER, SUNNY_DAY, PROTECT, GIGA_DRAIN, FRUSTRATION, SOLARBEAM, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, FACADE, REST, ATTRACT, FLASH, ROCK_SMASH
	; end
