	db 0 ; species ID placeholder

	db  60,  60,  75,  80,  60,  75
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, PSYCHIC_TYPE ; type
	db 90 ; catch rate
	db 153 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/medicham/front.dimensions"
	db PURE_POWER, PURE_POWER ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, SWIFT, FRUSTRATION, RETURN, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, ICE_PUNCH, ROCK_TOMB, THUNDERPUNCH, MUD_SLAP, DREAM_EATER, FACADE, REST, ATTRACT, FIRE_PUNCH, STRENGTH, FLASH, ROCK_SMASH, FOCUS_PUNCH, LIGHT_SCREEN, REFLECT
	; end
