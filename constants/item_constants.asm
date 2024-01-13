; item ids
; indexes for:
; - ItemNames (see data/items/names.asm)
; - ItemDescriptions (see data/items/descriptions.asm)
; - ItemAttributes (see data/items/attributes.asm)
; - ItemEffects (see engine/items/item_effects.asm)
	const_def
	const NO_ITEM      ; 0000
	const BRIGHTPOWDER ; 0001
	const TOWN_MAP     ; 0002
	const MOON_STONE   ; 0003
	const ANTIDOTE     ; 0004
	const BURN_HEAL    ; 0005
	const ICE_HEAL     ; 0006
	const AWAKENING    ; 0007
	const PARLYZ_HEAL  ; 0008
	const FULL_RESTORE ; 0009
	const MAX_POTION   ; 000A
	const HYPER_POTION ; 000B
	const SUPER_POTION ; 000C
	const POTION       ; 000D
	const ESCAPE_ROPE  ; 000E
	const REPEL        ; 000F
	const MAX_ELIXIR   ; 0010
	const FIRE_STONE   ; 0011
	const THUNDERSTONE ; 0012
	const WATER_STONE  ; 0013
	const ITEM_19      ; 0014
	const HP_UP        ; 0015
	const PROTEIN      ; 0016
	const IRON         ; 0017
	const CARBOS       ; 0018
	const LUCKY_PUNCH  ; 0019
	const CALCIUM      ; 001A
	const RARE_CANDY   ; 001B
	const X_ACCURACY   ; 001C
	const LEAF_STONE   ; 001D
	const METAL_POWDER ; 001E
	const NUGGET       ; 001F
	const POKE_DOLL    ; 0020
	const FULL_HEAL    ; 0021
	const REVIVE       ; 0022
	const MAX_REVIVE   ; 0023
	const GUARD_SPEC   ; 0024
	const SUPER_REPEL  ; 0025
	const MAX_REPEL    ; 0026
	const DIRE_HIT     ; 0027
	const ITEM_2D      ; 0028
	const FRESH_WATER  ; 0029
	const SODA_POP     ; 002A
	const LEMONADE     ; 002B
	const X_ATTACK     ; 002C
	const ITEM_32      ; 002D
	const X_DEFEND     ; 002E
	const X_SPEED      ; 002F
	const X_SPECIAL    ; 0030
	const POKE_FLUTE   ; 0031
	const EXP_SHARE    ; 0032
	const SILVER_LEAF  ; 0033
	const PP_UP        ; 0034
	const ETHER        ; 0035
	const MAX_ETHER    ; 0036
	const ELIXIR       ; 0037
	const MOOMOO_MILK  ; 0038
	const QUICK_CLAW   ; 0039
	const GOLD_LEAF    ; 003A
	const SOFT_SAND    ; 003B
	const SHARP_BEAK   ; 003C
	const POISON_BARB  ; 003D
	const KINGS_ROCK   ; 003E
	const TINYMUSHROOM ; 003F
	const BIG_MUSHROOM ; 0040
	const SILVERPOWDER ; 0041
	const ITEM_5A      ; 0042
	const AMULET_COIN  ; 0043
	const CLEANSE_TAG  ; 0044
	const MYSTIC_WATER ; 0045
	const TWISTEDSPOON ; 0046
	const BLACK_BELT_I ; 0047
	const ITEM_64      ; 0048
	const BLACKGLASSES ; 0049
	const SLOWPOKETAIL ; 004A
	const PINK_BOW     ; 004B
	const STICK        ; 004C
	const SMOKE_BALL   ; 004D
	const NEVERMELTICE ; 004E
	const MAGNET       ; 004F
	const PEARL        ; 0050
	const BIG_PEARL    ; 0051
	const EVERSTONE    ; 0052
	const SPELL_TAG    ; 0053
	const RAGECANDYBAR ; 0054
	const MIRACLE_SEED ; 0055
	const THICK_CLUB   ; 0056
	const FOCUS_BAND   ; 0057
	const ITEM_78      ; 0058
	const ENERGYPOWDER ; 0059
	const ENERGY_ROOT  ; 005A
	const HEAL_POWDER  ; 005B
	const REVIVAL_HERB ; 005C
	const HARD_STONE   ; 005D
	const LUCKY_EGG    ; 005E
	const STARDUST     ; 005F
	const STAR_PIECE   ; 0060
	const ITEM_87      ; 0061
	const ITEM_88      ; 0062
	const ZINC         ; 0063
	const CHARCOAL     ; 0064
	const BERRY_JUICE  ; 0065
	const SCOPE_LENS   ; 0066
	const ITEM_8D      ; 0067
	const ITEM_8E      ; 0068
	const METAL_COAT   ; 0069
	const DRAGON_FANG  ; 006A
	const ITEM_91      ; 006B
	const LEFTOVERS    ; 006C
	const ITEM_93      ; 006D
	const ITEM_94      ; 006E
	const ITEM_95      ; 006F
	const DRAGON_SCALE ; 0070
	const BERSERK_GENE ; 0071
	const ITEM_99      ; 0072
	const ITEM_9A      ; 0073
	const ITEM_9B      ; 0074
	const SACRED_ASH   ; 0075
	const FLOWER_MAIL  ; 0076
	const ITEM_A2      ; 0077
	const LIGHT_BALL   ; 0078
	const NORMAL_BOX   ; 0079
	const GORGEOUS_BOX ; 007A
	const SUN_STONE    ; 007B
	const POLKADOT_BOW ; 007C
	const ITEM_AB      ; 007D
	const UP_GRADE     ; 007E
	const ITEM_B0      ; 007F
	const ITEM_B3      ; 0080
	const BRICK_PIECE  ; 0081
	const SURF_MAIL    ; 0082
	const LITEBLUEMAIL ; 0083
	const PORTRAITMAIL ; 0084
	const LOVELY_MAIL  ; 0085
	const EON_MAIL     ; 0086
	const MORPH_MAIL   ; 0087
	const BLUESKY_MAIL ; 0088
	const MUSIC_MAIL   ; 0089
	const MIRAGE_MAIL  ; 008A
	const ITEM_BE      ; 008B
	const ITEM_DC      ; 008C
	const ITEM_C3      ; 008D
	const ITEM_FA      ; 008E
DEF NUM_ITEM_POCKET EQU const_value - 1

	const_align 8 ; Key items assume the value of HIGH(FIRST_KEY_ITEM) when storing in bag.
DEF FIRST_KEY_ITEM EQU const_value
	const BICYCLE      ; 0100
	const COIN_CASE    ; 0101
	const ITEMFINDER   ; 0102
	const OLD_ROD      ; 0103
	const GOOD_ROD     ; 0104
	const SUPER_ROD    ; 0105
	const RED_SCALE    ; 0106
	const SECRETPOTION ; 0107
	const S_S_TICKET   ; 0108
	const MYSTERY_EGG  ; 0109
	const CLEAR_BELL   ; 010A
	const SILVER_WING  ; 010B
	const GS_BALL      ; 010C
	const BLUE_CARD    ; 010D
	const CARD_KEY     ; 010E
	const MACHINE_PART ; 010F
	const EGG_TICKET   ; 0110
	const LOST_ITEM    ; 0111
	const BASEMENT_KEY ; 0112
	const PASS         ; 0113
	const SQUIRTBOTTLE ; 0114
	const RAINBOW_WING ; 0115
DEF NUM_KEY_ITEM_POCKET EQU const_value - FIRST_KEY_ITEM
assert NUM_KEY_ITEM_POCKET <= $ff

	const_align 8 ; Ball items assume the value of HIGH(FIRST_BALL_ITEM) when storing in bag.
DEF FIRST_BALL_ITEM EQU const_value
	const MASTER_BALL  ; 0200
	const ULTRA_BALL   ; 0201
	const GREAT_BALL   ; 0202
	const POKE_BALL    ; 0203
	const HEAVY_BALL   ; 0204
	const LEVEL_BALL   ; 0205
	const LURE_BALL    ; 0206
	const FAST_BALL    ; 0207
	const FRIEND_BALL  ; 0208
	const MOON_BALL    ; 0209
	const LOVE_BALL    ; 020A
	const PARK_BALL    ; 020B
DEF NUM_BALL_ITEM_POCKET EQU const_value - FIRST_BALL_ITEM
assert NUM_BALL_ITEM_POCKET <= $ff

	const_align 8 ; Berry items assume the value of HIGH(FIRST_BERRY_ITEM) when storing in bag.
DEF FIRST_BERRY_ITEM EQU const_value
	const RED_APRICORN ; 0300
	const BLU_APRICORN ; 0301
	const YLW_APRICORN ; 0302
	const GRN_APRICORN ; 0303
	const WHT_APRICORN ; 0304
	const BLK_APRICORN ; 0305
	const PNK_APRICORN ; 0306
	const PSNCUREBERRY ; 0307
	const PRZCUREBERRY ; 0308
	const BURNT_BERRY  ; 0309
	const ICE_BERRY    ; 030A
	const BITTER_BERRY ; 030B
	const MINT_BERRY   ; 030C
	const MIRACLEBERRY ; 030D
	const MYSTERYBERRY ; 030E
	const BERRY        ; 030F
	const GOLD_BERRY   ; 0310
DEF NUM_BERRY_ITEM_POCKET EQU const_value - FIRST_BERRY_ITEM
assert NUM_BERRY_ITEM_POCKET <= $ff

DEF NUM_ITEMS EQU const_value - 1

DEF __tmhm_value__ = 1

MACRO add_tmnum
	DEF \1_TMNUM EQU __tmhm_value__
	DEF __tmhm_value__ += 1
ENDM

MACRO add_tm
; Defines three constants:
; - TM_\1: the item id, starting at $bf
; - \1_TMNUM: the learnable TM/HM flag, starting at 1
; - TM##_MOVE: alias for the move id, equal to the value of \1
	const TM_\1
	DEF TM{02d:__tmhm_value__}_MOVE = \1
	add_tmnum \1
ENDM

	const_align 8 ; TMHM items assume the value of HIGH(FIRST_TMHM_ITEM) when storing in bag.
DEF FIRST_TMHM_ITEM EQU const_value
; see data/moves/tmhm_moves.asm for moves
DEF TM01 EQU const_value
	add_tm DYNAMICPUNCH ; 0400
	add_tm HEADBUTT     ; 0401
	add_tm CURSE        ; 0402
	add_tm ROLLOUT      ; 0403
	add_tm ROAR         ; 0404
	add_tm TOXIC        ; 0405
	add_tm ZAP_CANNON   ; 0406
	add_tm ROCK_SMASH   ; 0407
	add_tm PSYCH_UP     ; 0408
	add_tm HIDDEN_POWER ; 0409
	add_tm SUNNY_DAY    ; 040A
	add_tm SWEET_SCENT  ; 040B
	add_tm SNORE        ; 040C
	add_tm BLIZZARD     ; 040D
	add_tm HYPER_BEAM   ; 040E
	add_tm ICY_WIND     ; 040F
	add_tm PROTECT      ; 0410
	add_tm RAIN_DANCE   ; 0411
	add_tm GIGA_DRAIN   ; 0412
	add_tm ENDURE       ; 0413
	add_tm FRUSTRATION  ; 0414
	add_tm SOLARBEAM    ; 0415
	add_tm IRON_TAIL    ; 0416
	add_tm DRAGONBREATH ; 0417
	add_tm THUNDER      ; 0418
	add_tm EARTHQUAKE   ; 0419
	add_tm RETURN       ; 041A
	add_tm DIG          ; 041B
	add_tm PSYCHIC_M    ; 041C
	add_tm SHADOW_BALL  ; 041D
	add_tm MUD_SLAP     ; 041E
	add_tm DOUBLE_TEAM  ; 041F
	add_tm ICE_PUNCH    ; 0420
	add_tm SWAGGER      ; 0421
	add_tm SLEEP_TALK   ; 0422
	add_tm SLUDGE_BOMB  ; 0423
	add_tm SANDSTORM    ; 0424
	add_tm FIRE_BLAST   ; 0425
	add_tm SWIFT        ; 0426
	add_tm DEFENSE_CURL ; 0427
	add_tm THUNDERPUNCH ; 0428
	add_tm DREAM_EATER  ; 0429
	add_tm DETECT       ; 042A
	add_tm REST         ; 042B
	add_tm ATTRACT      ; 042C
	add_tm THIEF        ; 042D
	add_tm STEEL_WING   ; 042E
	add_tm FIRE_PUNCH   ; 042F
	add_tm FURY_CUTTER  ; 0430
	add_tm NIGHTMARE    ; 0431
DEF NUM_TMS EQU __tmhm_value__ - 1

MACRO add_hm
; Defines three constants:
; - HM_\1: the item id, starting at $f3
; - \1_TMNUM: the learnable TM/HM flag, starting at 51
; - HM##_MOVE: alias for the move id, equal to the value of \1
	const HM_\1
	DEF HM_VALUE = __tmhm_value__ - NUM_TMS
	DEF HM{02d:HM_VALUE}_MOVE = \1
	add_tmnum \1
ENDM

DEF HM01 EQU const_value
	add_hm CUT       ; 0432
	add_hm FLY       ; 0433
	add_hm SURF      ; 0434
	add_hm STRENGTH  ; 0435
	add_hm FLASH     ; 0436
	add_hm WHIRLPOOL ; 0437
	add_hm WATERFALL ; 0438
DEF NUM_HMS EQU __tmhm_value__ - NUM_TMS - 1

assert (NUM_TMS + NUM_HMS) < $ff, "TMs/HMs can't exceed 255 due to GetTMHMNumber."

MACRO add_mt
; Defines two constants:
; - \1_TMNUM: the learnable TM/HM flag, starting at 58
; - MT##_MOVE: alias for the move id, equal to the value of \1
	DEF MT_VALUE = __tmhm_value__ - NUM_TMS - NUM_HMS
	DEF MT{02d:MT_VALUE}_MOVE = \1
	add_tmnum \1
ENDM

DEF MT01 EQU const_value
	add_mt FLAMETHROWER
	add_mt THUNDERBOLT
	add_mt ICE_BEAM
DEF NUM_TUTORS = __tmhm_value__ - NUM_TMS - NUM_HMS - 1

DEF NUM_TM_HM_TUTOR EQU NUM_TMS + NUM_HMS + NUM_TUTORS

DEF USE_SCRIPT_VAR EQU $00
DEF ITEM_FROM_MEM  EQU $ffff

; leftovers from red
DEF SAFARI_BALL    EQU $08 ; MOON_STONE
DEF MOON_STONE_RED EQU $0a ; BURN_HEAL
DEF FULL_HEAL_RED  EQU $34 ; X_SPEED
