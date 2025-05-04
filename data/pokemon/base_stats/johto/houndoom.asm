	db 0 ; species ID placeholder

	db  75,  90,  50,  95, 110,  80
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, FIRE ; type
	db 45 ; catch rate
	db 204 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/houndoom/front.dimensions"
	db EARLY_BIRD, FLASH_FIRE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, ROAR, SUBSTITUTE, TOXIC, HIDDEN_POWER, SLEEP_TALK, SUNNY_DAY, TAUNT, HYPER_BEAM, PROTECT, SWIFT, FRUSTRATION, SOLARBEAM, IRON_TAIL, RETURN, SHADOW_BALL, DOUBLE_TEAM, MUD_SLAP, SLUDGE_BOMB, FIRE_BLAST, DREAM_EATER, FACADE, REST, ATTRACT, THIEF, OVERHEAT, STRENGTH, ROCK_SMASH, FLAMETHROWER
	; end
