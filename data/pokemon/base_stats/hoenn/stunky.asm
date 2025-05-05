	db 0 ; species ID placeholder

	db  63,  63,  47,  74,  41,  41
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db POISON, DARK ; type
	db 225 ; catch rate
	db 66 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/stunky/front.dimensions"
	db STENCH, STENCH ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, SUBSTITUTE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SLEEP_TALK, SUNNY_DAY, TAUNT, PROTECT, RAIN_DANCE, GIGA_DRAIN, SWIFT, FRUSTRATION, IRON_TAIL, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, MUD_SLAP, SLUDGE_BOMB, FIRE_BLAST, FACADE, REST, ATTRACT, THIEF, STRENGTH, ROCK_SMASH, FLAMETHROWER
	; end
