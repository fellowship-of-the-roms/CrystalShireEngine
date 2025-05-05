	db 0 ; species ID placeholder

	db  30,  40,  55,  60,  40,  55
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, PSYCHIC_TYPE ; type
	db 180 ; catch rate
	db 91 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/meditite/front.dimensions"
	db PURE_POWER, PURE_POWER ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, SWIFT, FRUSTRATION, RETURN, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, ICE_PUNCH, ROCK_TOMB, THUNDERPUNCH, MUD_SLAP, DREAM_EATER, FACADE, REST, ATTRACT, FIRE_PUNCH, STRENGTH, FLASH, ROCK_SMASH, FOCUS_PUNCH, LIGHT_SCREEN, REFLECT
	; end
