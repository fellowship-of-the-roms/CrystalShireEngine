	db 0 ; species ID placeholder

	db  90,  92,  75,  60,  92,  85
	evs  0,   1,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, ICE ; type
	db 60 ; catch rate
	db 173 ; base exp
	dw NO_ITEM, NEVERMELTICE ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/abomasnow/front.dimensions"
	db SOUNDPROOF, SOUNDPROOF ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, TOXIC, HAIL, HIDDEN_POWER, TAUNT, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, FRUSTRATION, EARTHQUAKE, RETURN, SHADOW_BALL, DOUBLE_TEAM, TORMENT, FACADE, REST, ATTRACT, FLASH
	; end
