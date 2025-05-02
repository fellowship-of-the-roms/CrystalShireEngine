	db 0 ; species ID placeholder

	db 155, 105,  75,  25, 105,  75
	evs  0,   1,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, FIRE ; type
	db 45 ; catch rate
	db 204 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/kujinought/front.dimensions"
	db WATER_VEIL, WATER_VEIL ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, TOXIC, BULLET_SEED, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, FRUSTRATION, RETURN, PSYCHIC_M, DOUBLE_TEAM, FLAMETHROWER, SLUDGE_BOMB, FIRE_BLAST, FACADE,  REST, ATTRACT, THIEF, SURF, WATERFALL, DIVE
	; end
