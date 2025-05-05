	db 0 ; species ID placeholder

	db  95,  60,  79,  81, 100, 125
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 60 ; catch rate
	db 213 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/milotic/front.dimensions"
	db MARVEL_SCALE, MARVEL_SCALE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_ERRATIC ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, SUBSTITUTE, TOXIC, HAIL, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, SWIFT, FRUSTRATION, IRON_TAIL, DRAGONBREATH, RETURN, DOUBLE_TEAM, FACADE, REST, ATTRACT, SURF, WATERFALL, WHIRLPOOL, DIVE, ICE_BEAM
	; end
