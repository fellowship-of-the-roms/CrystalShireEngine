	db 0 ; species ID placeholder

	db  50,  45,  45,  58,  35,  64
	evs  0,   0,   0,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db STEEL, STEEL ; type
	db 168 ; catch rate
	db 59 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F100 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/tinkatink/front.dimensions"
	db PICKUP, PICKUP ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, FRUSTRATION, SOLARBEAM, RETURN, SHADOW_BALL, DOUBLE_TEAM, SHOCK_WAVE, FLAMETHROWER, FIRE_BLAST, FACADE,  REST, ATTRACT
	; end
