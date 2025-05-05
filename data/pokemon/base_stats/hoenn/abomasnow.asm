	db 0 ; species ID placeholder

	db  90,  92,  75,  60,  92,  85
	evs  0,   1,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, ICE ; type
	db 60 ; catch rate
	db 173 ; base exp
	dw NO_ITEM, NEVERMELTICE ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/abomasnow/front.dimensions"
	db SOUNDPROOF, SOUNDPROOF ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, WATER_PULSE, SUBSTITUTE, TOXIC, HAIL, SLEEP_TALK, BULLET_SEED, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, GIGA_DRAIN, FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, ICE_PUNCH, MUD_SLAP, FACADE, REST, ATTRACT, FLASH, ICE_BEAM
	; end
