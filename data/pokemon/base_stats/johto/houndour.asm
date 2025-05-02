	db 0 ; species ID placeholder

	db  45,  60,  30,  65,  80,  50
	evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, FIRE ; type
	db 120 ; catch rate
	db 114 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/houndour/front.dimensions"
	db EARLY_BIRD, FLASH_FIRE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, TAUNT, PROTECT, FRUSTRATION, SOLARBEAM, IRON_TAIL, RETURN, SHADOW_BALL, DOUBLE_TEAM, FLAMETHROWER, SLUDGE_BOMB, FIRE_BLAST, TORMENT, FACADE,  REST, ATTRACT, THIEF, SNATCH, OVERHEAT, ROCK_SMASH
	; end
