	db 0 ; species ID placeholder

	db  80,  45,  65,  80,  90, 110
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 60 ; catch rate
	db 164 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/grumpig/front.dimensions"
	db THICK_FAT, OWN_TEMPO ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	;tmhm FOCUS_PUNCH, CALM_MIND, TOXIC, HIDDEN_POWER, SUNNY_DAY, TAUNT, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SHOCK_WAVE, TORMENT, FACADE,  REST, ATTRACT, THIEF, SKILL_SWAP, SNATCH, FLASH
	; end
