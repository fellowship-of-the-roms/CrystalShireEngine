	db 0 ; species ID placeholder

	db  50,  70, 100,  30,  40,  40
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db STEEL, ROCK ; type
	db 180 ; catch rate
	db 96 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 35 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/aron/front.dimensions"
	db ROCK_HEAD, STURDY ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, WATER_PULSE, SUBSTITUTE, SUBSTITUTE, ROAR, TOXIC, ZAP_CANNON, SLEEP_TALK, HIDDEN_POWER, SUNNY_DAY, TAUNT, PROTECT, RAIN_DANCE, ROCK_TOMB, FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN, DIG, SHOCK_WAVE, MUD_SLAP, SANDSTORM, FACADE, REST, ATTRACT, STRENGTH, ROCK_SMASH, CURSEROCK_SLIDE, THUNDERWAVE, DOUBLE_EDGE
	; end
