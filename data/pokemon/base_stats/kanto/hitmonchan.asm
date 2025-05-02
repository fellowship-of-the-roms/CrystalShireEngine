	db 0 ; species ID placeholder

	db  40,  75,  89,  76,  75, 110
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 140 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/hitmonchan/front.dimensions"
	db KEEN_EYE, KEEN_EYE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, TOXIC, BULK_UP, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, FRUSTRATION, EARTHQUAKE, RETURN, BRICK_BREAK, DOUBLE_TEAM, ROCK_TOMB, FACADE,  REST, ATTRACT, THIEF, STRENGTH, ROCK_SMASH
	; end
