	db 0 ; species ID placeholder

	db  50,  65,  90,  15,  35,  35
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, BUG ; type
	db 190 ; catch rate
	db 60 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/pineco/front.dimensions"
	db STURDY, STURDY ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, SUNNY_DAY, LIGHT_SCREEN, PROTECT, GIGA_DRAIN, FRUSTRATION, SOLARBEAM, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, REFLECT, SANDSTORM, FACADE,  REST, ATTRACT, STRENGTH, ROCK_SMASH
	; end
