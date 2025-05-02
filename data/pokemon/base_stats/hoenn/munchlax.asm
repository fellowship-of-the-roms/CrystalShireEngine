	db 0 ; species ID placeholder

	db 135,  85,  40,   5,  40,  85
	evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 50 ; catch rate
	db 78 ; base exp
	dw LEFTOVERS, LEFTOVERS ; items
	db GENDER_F12_5 ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/munchlax/front.dimensions"
	db PICKUP, THICK_FAT ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, WATER_PULSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, FRUSTRATION, SOLARBEAM, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, FLAMETHROWER, SANDSTORM, FIRE_BLAST, ROCK_TOMB, FACADE,  REST, ATTRACT, SURF, STRENGTH
	; end
