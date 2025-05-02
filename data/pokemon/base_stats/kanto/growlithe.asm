	db 0 ; species ID placeholder

	db  55,  70,  45,  60,  70,  50
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 91 ; base exp
	dw BURNT_BERRY, BURNT_BERRY ; items
	db GENDER_F25 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/growlithe/front.dimensions"
	db INTIMIDATE, FLASH_FIRE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, FRUSTRATION, IRON_TAIL, RETURN, DIG, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, AERIAL_ACE, FACADE,  REST, ATTRACT, THIEF, OVERHEAT, STRENGTH, ROCK_SMASH
	; end
