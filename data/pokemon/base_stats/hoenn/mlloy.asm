	db 0 ; species ID placeholder

	db  68, 118,  75,  93,  58,  63
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FLYING ; type
	db 45 ; catch rate
	db 157 ; base exp
	dw NO_ITEM, STICK ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/mlloy/front.dimensions"
	db KEEN_EYE, INNER_FOCUS ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, SUBSTITUTE, TOXIC, HIDDEN_POWER, SLEEP_TALK, SUNNY_DAY, PROTECT, SWIFT, FRUSTRATION, IRON_TAIL, RETURN, BRICK_BREAK, DOUBLE_TEAM, MUD_SLAP, AERIAL_ACE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, FURY_CUTTER, CUT, FLY
	; end
