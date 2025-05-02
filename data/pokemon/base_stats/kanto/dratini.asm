	db 0 ; species ID placeholder

	db  41,  64,  45,  50,  50,  50
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, DRAGON ; type
	db 45 ; catch rate
	db 67 ; base exp
	dw NO_ITEM, DRAGON_SCALE ; items
	db GENDER_F50 ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/dratini/front.dimensions"
	db SHED_SKIN, SHED_SKIN ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, SAFEGUARD, FRUSTRATION, IRON_TAIL, THUNDERBOLT, THUNDER, RETURN, DOUBLE_TEAM, SHOCK_WAVE, FLAMETHROWER, FIRE_BLAST, FACADE,  REST, ATTRACT, SURF, WATERFALL
	; end
