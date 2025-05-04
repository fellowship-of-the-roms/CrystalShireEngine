	db 0 ; species ID placeholder

	db  85,  40,  70,  70,  80, 140
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db WATER, FLYING ; type
	db 25 ; catch rate
	db 168 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/mantine/front.dimensions"
	db SWIFT_SWIM, WATER_ABSORB ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, WATER_PULSE, SUBSTITUTE, TOXIC, HAIL, HIDDEN_POWER, BLIZZARD, PROTECT, RAIN_DANCE, SWIFT, FRUSTRATION, EARTHQUAKE, RETURN, DOUBLE_TEAM, MUD_SLAP, AERIAL_ACE, FACADE, REST, ATTRACT, SURF, WATERFALL, WHIRLPOOL, DIVE, ICE_BEAM
	; end
