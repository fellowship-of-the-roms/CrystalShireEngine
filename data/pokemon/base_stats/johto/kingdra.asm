	db 0 ; species ID placeholder

	db  75,  95,  95,  85,  95,  95
	evs  0,   1,   0,   0,   1,   1
	;   hp  atk  def  spd  sat  sdf

	db WATER, DRAGON ; type
	db 45 ; catch rate
	db 207 ; base exp
	dw NO_ITEM, DRAGON_SCALE ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/kingdra/front.dimensions"
	db SWIFT_SWIM, SWIFT_SWIM ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, WATER_PULSE, SUBSTITUTE, TOXIC, ZAP_CANNON, HAIL, SLEEP_TALK, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, SWIFT, FRUSTRATION, DRAGONBREATH, RETURN, DOUBLE_TEAM, FACADE, REST, ATTRACT, SURF, WATERFALL, WHIRLPOOL, DIVE, ICE_BEAM
	; end
