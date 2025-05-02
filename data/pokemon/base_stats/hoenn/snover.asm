	db 0 ; species ID placeholder

	db  60,  62,  50,  40,  62,  60
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, ICE ; type
	db 120 ; catch rate
	db 67 ; base exp
	dw NO_ITEM, NEVERMELTICE ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/snover/front.dimensions"
	db SOUNDPROOF, SOUNDPROOF ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, FRUSTRATION, RETURN, SHADOW_BALL, DOUBLE_TEAM, FACADE,  REST, ATTRACT, FLASH
	; end
