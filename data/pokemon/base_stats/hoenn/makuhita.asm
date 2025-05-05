	db 0 ; species ID placeholder

	db  72,  60,  30,  25,  20,  30
	evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 180 ; catch rate
	db 87 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/makuhita/front.dimensions"
	db THICK_FAT, GUTS ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_FLUCTUATING ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, FRUSTRATION, EARTHQUAKE, RETURN, DIG, BRICK_BREAK, DOUBLE_TEAM, ICE_PUNCH, ROCK_TOMB, THUNDERPUNCH, MUD_SLAP, FACADE, REST, ATTRACT, FIRE_PUNCH, SURF, STRENGTH, ROCK_SMASH, WHIRLPOOL, FOCUS_PUNCH
	; end
