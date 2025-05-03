	db 0 ; species ID placeholder

	db  50, 130,  53,  87,  35, 110
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 139 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/hitmonlee/front.dimensions"
	db LIMBER, LIMBER ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, SWIFT, FRUSTRATION, EARTHQUAKE, RETURN, BRICK_BREAK, DOUBLE_TEAM, MUD_SLAP, ROCK_TOMB, FACADE, REST, ATTRACT, THIEF, STRENGTH, ROCK_SMASH, FOCUS_PUNCH
	; end
