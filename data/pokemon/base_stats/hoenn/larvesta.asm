	db 0 ; species ID placeholder

	db  55,  85,  55,  60,  50,  55
	evs  0,   1,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, FIRE ; type
	db 45 ; catch rate
	db 72 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/larvesta/front.dimensions"
	db SWARM, SWARM ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm CALM_MIND, TOXIC, HIDDEN_POWER, ICE_BEAM, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, FRUSTRATION, EARTHQUAKE, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SANDSTORM, ROCK_TOMB, FACADE,  REST, SKILL_SWAP, FLASH
	; end
