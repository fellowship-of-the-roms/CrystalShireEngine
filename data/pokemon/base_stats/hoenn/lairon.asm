	db 0 ; species ID placeholder

	db  60,  90, 110,  40,  50,  65
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db STEEL, ROCK ; type
	db 90 ; catch rate
	db 152 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 35 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/lairon/front.dimensions"
	db ROCK_HEAD, STURDY ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, WATER_PULSE, SUBSTITUTE, ROAR, TOXIC, ZAP_CANNON, SLEEP_TALK, HIDDEN_POWER, SUNNY_DAY, TAUNT, PROTECT, RAIN_DANCE, ROCK_TOMB, FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN, DIG, SHOCK_WAVE, MUD_SLAP, SANDSTORM, FACADE, REST, ATTRACT, STRENGTH, ROCK_SMASH, CURSE, ROCK_SLIDE, THUNDER_WAVE, DOUBLE_EDGE
	; end
