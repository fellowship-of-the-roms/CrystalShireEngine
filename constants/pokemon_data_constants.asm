; base data struct members (see data/pokemon/base_stats/*.asm)
rsreset
DEF BASE_SPECIES            rb
DEF BASE_STATS              rb NUM_STATS
rsset BASE_STATS
DEF BASE_HP                 rb
DEF BASE_ATK                rb
DEF BASE_DEF                rb
DEF BASE_SPD                rb
DEF BASE_SAT                rb
DEF BASE_SDF                rb
DEF BASE_EVS                rw
rsset BASE_EVS
DEF BASE_HP_ATK_DEF_SPD_EVS rb
DEF BASE_SAT_SDF_EVS        rb
DEF BASE_TYPES              rw
rsset BASE_TYPES
DEF BASE_TYPE_1             rb
DEF BASE_TYPE_2             rb
DEF BASE_CATCH_RATE         rb
DEF BASE_EXP                rb
DEF BASE_ITEMS              rw
rsset BASE_ITEMS
DEF BASE_ITEM_1             rw
DEF BASE_ITEM_2             rw
DEF BASE_GENDER             rb
DEF BASE_EGG_STEPS          rb
DEF BASE_PIC_SIZE           rb
DEF BASE_FRONTPIC           rw
DEF BASE_BACKPIC            rw
DEF BASE_GROWTH_RATE        rb
DEF BASE_EGG_GROUPS         rb
DEF BASE_TMHM               rb (NUM_TM_HM_TUTOR + 7) / 8
DEF BASE_DATA_SIZE EQU _RS

; gender ratio constants
DEF GENDER_F0      EQU   0 percent
DEF GENDER_F12_5   EQU  12 percent + 1
DEF GENDER_F25     EQU  25 percent
DEF GENDER_F50     EQU  50 percent
DEF GENDER_F75     EQU  75 percent
DEF GENDER_F100    EQU 100 percent - 1
DEF GENDER_UNKNOWN EQU -1

; wBaseGrowthRate values
; GrowthRates indexes (see data/growth_rates.asm)
	const_def
	const GROWTH_MEDIUM_FAST
	const GROWTH_SLIGHTLY_FAST
	const GROWTH_SLIGHTLY_SLOW
	const GROWTH_MEDIUM_SLOW
	const GROWTH_FAST
	const GROWTH_SLOW
DEF NUM_GROWTH_RATES EQU const_value

; wBaseEggGroups values
	const_def 1
	const EGG_MONSTER       ; 1
	const EGG_WATER_1       ; 2 (Amphibian)
	const EGG_BUG           ; 3
	const EGG_FLYING        ; 4
	const EGG_GROUND        ; 5 (Field)
	const EGG_FAIRY         ; 6
	const EGG_PLANT         ; 7 (Grass)
	const EGG_HUMANSHAPE    ; 8 (Human-Like)
	const EGG_WATER_3       ; 9 (Invertebrate)
	const EGG_MINERAL       ; a
	const EGG_INDETERMINATE ; b (Amorphous)
	const EGG_WATER_2       ; c (Fish)
	const EGG_DITTO         ; d
	const EGG_DRAGON        ; e
	const EGG_NONE          ; f (Undiscovered)

; party_struct members (see macros/ram.asm)
rsreset
DEF MON_SPECIES            rb
DEF MON_ITEM               rb
DEF MON_MOVES              rb NUM_MOVES
DEF MON_ID                 rw
DEF MON_EXP                rb 3
DEF MON_EVS                rb NUM_STATS
rsset MON_EVS
DEF MON_HP_EV              rb
DEF MON_ATK_EV             rb
DEF MON_DEF_EV             rb
DEF MON_SPD_EV             rb
DEF MON_SAT_EV             rb
DEF MON_SDF_EV             rb
DEF MON_IVS                rb 4
DEF MON_PERSONALITY        rw
DEF MON_SHINY      EQU MON_PERSONALITY
DEF MON_ABILITY    EQU MON_PERSONALITY
DEF MON_NATURE     EQU MON_PERSONALITY
DEF MON_GENDER     EQU MON_PERSONALITY + 1
DEF MON_IS_EGG     EQU MON_PERSONALITY + 1
DEF MON_UNUSED_BIT EQU MON_PERSONALITY + 1
DEF MON_FORM       EQU MON_PERSONALITY + 1
                           rb_skip
DEF MON_PP                 rb NUM_MOVES
DEF MON_HAPPINESS          rb
DEF MON_POKERUS            rb
DEF MON_CAUGHTDATA         rw
rsset MON_CAUGHTDATA
DEF MON_CAUGHTTIME         rb
DEF MON_CAUGHTGENDER       rb
rsset MON_CAUGHTDATA
DEF MON_CAUGHTLEVEL        rb
DEF MON_CAUGHTLOCATION     rb
DEF MON_LEVEL              rb
DEF BOXMON_STRUCT_LENGTH EQU _RS
DEF MON_STATUS             rb
                           rb_skip
DEF MON_HP                 rw
DEF MON_MAXHP              rw
DEF MON_STATS              rw NUM_BATTLE_STATS
rsset MON_STATS
DEF MON_ATK                rw
DEF MON_DEF                rw
DEF MON_SPD                rw
DEF MON_SAT                rw
DEF MON_SDF                rw
DEF PARTYMON_STRUCT_LENGTH EQU _RS

; savemon_struct members (see macros/wram.asm)
rsreset
DEF SAVEMON_SPECIES_LOW        rb
DEF SAVEMON_ITEM_LOW           rb
DEF SAVEMON_MOVES_LOW          rb NUM_MOVES
DEF SAVEMON_ID                 rw
DEF SAVEMON_EXP                rb 3
DEF SAVEMON_EVS                rb NUM_STATS
rsset SAVEMON_EVS
DEF SAVEMON_HP_EV              rb
DEF SAVEMON_ATK_EV             rb
DEF SAVEMON_DEF_EV             rb
DEF SAVEMON_SPD_EV             rb
DEF SAVEMON_SAT_EV             rb
DEF SAVEMON_SDF_EV             rb
DEF SAVEMON_IVS                rb 4
DEF SAVEMON_PERSONALITY        rw
DEF SAVEMON_SHINY      EQU SAVEMON_PERSONALITY
DEF SAVEMON_ABILITY    EQU SAVEMON_PERSONALITY
DEF SAVEMON_NATURE     EQU SAVEMON_PERSONALITY
DEF SAVEMON_GENDER     EQU SAVEMON_PERSONALITY + 1
DEF SAVEMON_IS_EGG     EQU SAVEMON_PERSONALITY + 1
DEF SAVEMON_UNUSED_BIT EQU SAVEMON_PERSONALITY + 1
DEF SAVEMON_FORM       EQU SAVEMON_PERSONALITY + 1
                               rb_skip
; savemon_struct is identical to party_struct before this point
DEF SAVEMON_MOVES_HIGH         rb NUM_MOVES
rsset SAVEMON_MOVES_HIGH
DEF SAVEMON_PP_UPS             rb NUM_MOVES
; savemon_struct is shifted from party_struct beyond this point
DEF SAVEMON_HAPPINESS          rb
DEF SAVEMON_PKRUS              rb
DEF SAVEMON_CAUGHTDATA         rw
rsset SAVEMON_CAUGHTDATA
DEF SAVEMON_CAUGHTTIME         rb
DEF SAVEMON_CAUGHTGENDER       rb
rsset SAVEMON_CAUGHTDATA
DEF SAVEMON_CAUGHTLEVEL        rb
DEF SAVEMON_CAUGHTLOCATION     rb
DEF SAVEMON_LEVEL              rb
; savemon_struct is different from party_struct beyond this point
DEF SAVEMON_SPECIES_HIGH       rb
DEF SAVEMON_ITEM_HIGH          rb
DEF SAVEMON_NICKNAME           rb MON_NAME_LENGTH - 1
DEF SAVEMON_OT                 rb PLAYER_NAME_LENGTH - 1
DEF SAVEMON_STRUCT_LENGTH EQU _RS

DEF NICKNAMED_MON_STRUCT_LENGTH EQU PARTYMON_STRUCT_LENGTH + MON_NAME_LENGTH
DEF REDMON_STRUCT_LENGTH EQU 44

; IVs

DEF IV_UNUSED_MASK   EQU %11000000
DEF IV_ATK_MASK      EQU %00111110
DEF IV_DEF_HIGH_MASK EQU %00000001

DEF IV_DEF_LOW_MASK  EQU %11110000
DEF IV_SPD_HIGH_MASK EQU %00001111

DEF IV_SPD_LOW_MASK     EQU %10000000
DEF IV_SP_ATK_MASK      EQU %01111100
DEF IV_SP_DEF_HIGH_MASK EQU %00000011

DEF IV_SP_DEF_LOW_MASK EQU %11100000
DEF IV_HP_MASK         EQU %00011111


; personality

DEF SHINY_MASK       EQU %10000000
DEF ABILITY_MASK     EQU %01100000
DEF NATURE_MASK      EQU %00011111

DEF MON_SHINY_F      EQU 7

DEF GENDER_MASK      EQU %10000000
DEF IS_EGG_MASK      EQU %01000000
DEF UNUSED_BIT_MASK  EQU %00100000
DEF FORM_MASK        EQU %00011111

DEF IS_EGG_F EQU 6

DEF PLAIN_FORM EQU 0

; shiny probability values
DEF SHINY_NUMERATOR         EQU 16 ; 16/65536 = 1/4096
DEF CHARMED_SHINY_NUMERATOR EQU 48 ; 48/65536 = 3/4096

; savemon Move High Mask
DEF MOVES_HIGH_MASK EQU %00111111

; caught data

DEF CAUGHT_TIME_MASK  EQU %11000000
DEF CAUGHT_LEVEL_MASK EQU %00111111

DEF CAUGHT_GENDER_MASK   EQU %10000000
DEF CAUGHT_LOCATION_MASK EQU %01111111

DEF CAUGHT_BY_UNKNOWN EQU 0
DEF CAUGHT_BY_GIRL    EQU 1
DEF CAUGHT_BY_BOY     EQU 2

DEF CAUGHT_EGG_LEVEL EQU 1

DEF MON_CRY_LENGTH EQU 6

; maximum number of party pokemon
DEF PARTY_LENGTH EQU 6

; boxes
DEF MONS_PER_BOX EQU 20

DEF MONDB_ENTRIES   EQU 157
DEF MIN_MONDB_SLACK EQU 10
DEF NUM_BOXES       EQU (MONDB_ENTRIES * 2 - MIN_MONDB_SLACK) / MONS_PER_BOX ; 15

; hall of fame
; hof_mon: species, id, dvs, level, nicknames
DEF HOF_MON_LENGTH EQU 2 + 2 + 2 + 1 + (MON_NAME_LENGTH - 1)
; hall_of_fame: win count, party, terminator
DEF HOF_LENGTH EQU 1 + HOF_MON_LENGTH * PARTY_LENGTH + 2
DEF NUM_HOF_TEAMS EQU 30

; evolution types (used in data/pokemon/evos_attacks.asm)
	const_def 1
	const EVOLVE_LEVEL
	const EVOLVE_ITEM
	const EVOLVE_TRADE
	const EVOLVE_HAPPINESS
	const EVOLVE_STAT

; EVOLVE_HAPPINESS triggers
	const_def 1
	const TR_ANYTIME
	const TR_MORNDAY
	const TR_NITE

; EVOLVE_STAT triggers
	const_def 1
	const ATK_GT_DEF
	const ATK_LT_DEF
	const ATK_EQ_DEF

; wild data

DEF NUM_GRASSMON EQU 7 ; data/wild/*_grass.asm table size
DEF NUM_WATERMON EQU 3 ; data/wild/*_water.asm table size

DEF GRASS_WILDDATA_LENGTH EQU 2 + (1 + NUM_GRASSMON * 3) * 3
DEF WATER_WILDDATA_LENGTH EQU 2 + (1 + NUM_WATERMON * 3) * 1
DEF FISHGROUP_DATA_LENGTH EQU 1 + 2 * 3

DEF NUM_ROAMMON_MAPS EQU 16 ; RoamMaps table size (see data/wild/roammon_maps.asm)

; treemon sets
; TreeMons indexes (see data/wild/treemons.asm)
	const_def
	const TREEMON_SET_CITY
	const TREEMON_SET_CANYON
	const TREEMON_SET_TOWN
	const TREEMON_SET_ROUTE
	const TREEMON_SET_KANTO
	const TREEMON_SET_LAKE
	const TREEMON_SET_FOREST
	const TREEMON_SET_ROCK
DEF NUM_TREEMON_SETS EQU const_value

; treemon scores
	const_def
	const TREEMON_SCORE_BAD  ; 0
	const TREEMON_SCORE_GOOD ; 1
	const TREEMON_SCORE_RARE ; 2

; ChangeHappiness arguments (see data/events/happiness_changes.asm)
	const_def 1
	const HAPPINESS_GAINLEVEL         ; 01
	const HAPPINESS_USEDITEM          ; 02
	const HAPPINESS_USEDXITEM         ; 03
	const HAPPINESS_GYMBATTLE         ; 04
	const HAPPINESS_LEARNMOVE         ; 05
	const HAPPINESS_FAINTED           ; 06
	const HAPPINESS_POISONFAINT       ; 07
	const HAPPINESS_BEATENBYSTRONGFOE ; 08
	const HAPPINESS_OLDERCUT1         ; 09
	const HAPPINESS_OLDERCUT2         ; 0a
	const HAPPINESS_OLDERCUT3         ; 0b
	const HAPPINESS_YOUNGCUT1         ; 0c
	const HAPPINESS_YOUNGCUT2         ; 0d
	const HAPPINESS_YOUNGCUT3         ; 0e
	const HAPPINESS_BITTERPOWDER      ; 0f
	const HAPPINESS_ENERGYROOT        ; 10
	const HAPPINESS_REVIVALHERB       ; 11
	const HAPPINESS_GROOMING          ; 12
	const HAPPINESS_GAINLEVELATHOME   ; 13
DEF NUM_HAPPINESS_CHANGES EQU const_value - 1

; significant happiness values
DEF BASE_HAPPINESS        EQU 70
DEF FRIEND_BALL_HAPPINESS EQU 200
DEF HAPPINESS_TO_EVOLVE   EQU 220
DEF HAPPINESS_THRESHOLD_1 EQU 100
DEF HAPPINESS_THRESHOLD_2 EQU 200

; PP
DEF PP_UP_MASK EQU %11000000
DEF PP_UP_ONE  EQU %01000000
DEF PP_MASK    EQU %00111111

; significant EV values
DEF MAX_EV EQU 252
DEF MAX_TOTAL_EV EQU 510
