	db 0 ; species ID placeholder

	db  60, 130,  80,  70,  60,  60
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FIGHTING ; type
	db 90 ; catch rate
	db 165 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/breloom/front.dimensions"
	db EFFECT_SPORE, EFFECT_SPORE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_FLUCTUATING ; growth rate
	dn EGG_FAIRY, EGG_PLANT ; egg groups

	; tm/hm learnset
	;tmhm FOCUS_PUNCH, TOXIC, BULK_UP, BULLET_SEED, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SAFEGUARD, FRUSTRATION, SOLARBEAM, IRON_TAIL, RETURN, BRICK_BREAK, DOUBLE_TEAM, SLUDGE_BOMB, FACADE, REST, ATTRACT, SNATCH, CUT, STRENGTH, FLASH, ROCK_SMASH
	; end
