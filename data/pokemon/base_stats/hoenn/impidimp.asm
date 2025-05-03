	db 0 ; species ID placeholder

	db  45,  45,  30,  50,  55,  40
	evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 190 ; catch rate
	db 53 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F0  ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/impidimp/front.dimensions"
	db PICKUP, PICKUP ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, SUBSTITUTE, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, FRUSTRATION, EARTHQUAKE, RETURN, DOUBLE_TEAM, SANDSTORM, ROCK_TOMB, FACADE, REST, ATTRACT, SURF, WATERFALL, DIVE
	; end
