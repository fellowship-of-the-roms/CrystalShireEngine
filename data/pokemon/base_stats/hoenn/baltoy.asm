	db 0 ; species ID placeholder

	db  40,  40,  55,  55,  40,  70
	evs  0,   0,   0,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db GROUND, PSYCHIC_TYPE ; type
	db 255 ; catch rate
	db 58 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/baltoy/front.dimensions"
	db LEVITATE, LEVITATE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, FRUSTRATION, SOLARBEAM, EARTHQUAKE, RETURN, DIG, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SANDSTORM, ROCK_TOMB, FACADE, REST, SKILL_SWAP, FLASH
	; end
