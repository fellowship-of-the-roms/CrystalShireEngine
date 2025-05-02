; battle_anim_struct members (see macros/ram.asm)
rsreset
DEF BATTLEANIMSTRUCT_INDEX           rb ; 00
DEF BATTLEANIMSTRUCT_OAMFLAGS        rb ; 01
DEF BATTLEANIMSTRUCT_FIX_Y           rb ; 02
DEF BATTLEANIMSTRUCT_FRAMESET_ID     rw ; 03
DEF BATTLEANIMSTRUCT_FUNCTION        rb ; 04
DEF BATTLEANIMSTRUCT_PALETTE         rb ; 05
DEF BATTLEANIMSTRUCT_TILEID          rb ; 06
DEF BATTLEANIMOBJ_LENGTH EQU _RS - 1 ; discount BATTLEANIMSTRUCT_INDEX
DEF BATTLEANIMSTRUCT_XCOORD          rb ; 07
DEF BATTLEANIMSTRUCT_YCOORD          rb ; 08
DEF BATTLEANIMSTRUCT_XOFFSET         rb ; 09
DEF BATTLEANIMSTRUCT_YOFFSET         rb ; 0a
DEF BATTLEANIMSTRUCT_PARAM           rb ; 0b
DEF BATTLEANIMSTRUCT_DURATION        rb ; 0c
DEF BATTLEANIMSTRUCT_FRAME           rb ; 0d
DEF BATTLEANIMSTRUCT_JUMPTABLE_INDEX rb ; 0e
DEF BATTLEANIMSTRUCT_VAR1            rb ; 0f
DEF BATTLEANIMSTRUCT_VAR2            rb ; 10
                                     rb_skip 6
DEF BATTLEANIMSTRUCT_LENGTH EQU _RS
DEF NUM_BATTLE_ANIM_STRUCTS EQU 10 ; see wActiveAnimObjects

DEF BATTLEANIMSTRUCT_OAMFLAGS_FIX_COORDS_F EQU 0

; wBattleAnimTileDict size (see wram.asm)
DEF NUM_BATTLEANIMTILEDICT_ENTRIES EQU 5

; Start tile for battle animation graphics
DEF BATTLEANIM_BASE_TILE EQU 7 * 7  ; Maximum size of a pokemon picture

; BattleAnimObjects indexes (see data/battle_anims/objects.asm)
	const_def
	const BATTLE_ANIM_OBJ_HIT_BIG_YFIX            ; 000
	const BATTLE_ANIM_OBJ_HIT_YFIX                ; 001
	const BATTLE_ANIM_OBJ_HIT_SMALL_YFIX          ; 002
	const BATTLE_ANIM_OBJ_HIT_BIG                 ; 003
	const BATTLE_ANIM_OBJ_HIT                     ; 004
	const BATTLE_ANIM_OBJ_HIT_SMALL               ; 005
	const BATTLE_ANIM_OBJ_PUNCH                   ; 006
	const BATTLE_ANIM_OBJ_KICK                    ; 007
	const BATTLE_ANIM_OBJ_PALM                    ; 008
	const BATTLE_ANIM_OBJ_FANG                    ; 009
	const BATTLE_ANIM_OBJ_PUNCH_SHAKE             ; 00a
	const BATTLE_ANIM_OBJ_EMBER                   ; 00b
	const BATTLE_ANIM_OBJ_DRAGON_RAGE             ; 00c
	const BATTLE_ANIM_OBJ_FLAMETHROWER            ; 00d
	const BATTLE_ANIM_OBJ_FIRE_SPIN               ; 00e
	const BATTLE_ANIM_OBJ_FIRE_BLAST              ; 00f
	const BATTLE_ANIM_OBJ_BURNED                  ; 010
	const BATTLE_ANIM_OBJ_BLIZZARD                ; 011
	const BATTLE_ANIM_OBJ_ICE                     ; 012
	const BATTLE_ANIM_OBJ_ICE_BEAM                ; 013
	const BATTLE_ANIM_OBJ_RAZOR_LEAF              ; 014
	const BATTLE_ANIM_OBJ_POKE_BALL               ; 015
	const BATTLE_ANIM_OBJ_POKE_BALL_BLOCKED       ; 016
	const BATTLE_ANIM_OBJ_EXPLOSION1              ; 017
	const BATTLE_ANIM_OBJ_EXPLOSION2              ; 018
	const BATTLE_ANIM_OBJ_ACID                    ; 019
	const BATTLE_ANIM_OBJ_SLUDGE                  ; 01a
	const BATTLE_ANIM_OBJ_BALL_POOF_YFIX          ; 01b
	const BATTLE_ANIM_OBJ_BALL_POOF               ; 01c
	const BATTLE_ANIM_OBJ_BIG_ROCK                ; 01d
	const BATTLE_ANIM_OBJ_SMALL_ROCK              ; 01e
	const BATTLE_ANIM_OBJ_STRENGTH                ; 01f
	const BATTLE_ANIM_OBJ_SEISMIC_TOSS            ; 020
	const BATTLE_ANIM_OBJ_BUBBLE                  ; 021
	const BATTLE_ANIM_OBJ_SURF                    ; 022
	const BATTLE_ANIM_OBJ_SING                    ; 023
	const BATTLE_ANIM_OBJ_WATER_GUN               ; 024
	const BATTLE_ANIM_OBJ_HYDRO_PUMP              ; 025
	const BATTLE_ANIM_OBJ_POWDER                  ; 026
	const BATTLE_ANIM_OBJ_BEAM                    ; 027
	const BATTLE_ANIM_OBJ_BEAM_TIP                ; 028
	const BATTLE_ANIM_OBJ_ICE_BUILDUP             ; 029
	const BATTLE_ANIM_OBJ_FROZEN                  ; 02a
	const BATTLE_ANIM_OBJ_MASTER_BALL_SPARKLE     ; 02b
	const BATTLE_ANIM_OBJ_RECOVER                 ; 02c
	const BATTLE_ANIM_OBJ_THUNDER_CENTER          ; 02d
	const BATTLE_ANIM_OBJ_THUNDER_LEFT            ; 02e
	const BATTLE_ANIM_OBJ_THUNDER_RIGHT           ; 02f
	const BATTLE_ANIM_OBJ_THUNDER_WAVE            ; 030
	const BATTLE_ANIM_OBJ_THUNDERBOLT_SPARKS      ; 031
	const BATTLE_ANIM_OBJ_THUNDERBOLT_CORE        ; 032
	const BATTLE_ANIM_OBJ_THUNDERSHOCK_SPARKS     ; 033
	const BATTLE_ANIM_OBJ_THUNDERSHOCK_CORE       ; 034
	const BATTLE_ANIM_OBJ_CLAMP                   ; 035
	const BATTLE_ANIM_OBJ_BITE                    ; 036
	const BATTLE_ANIM_OBJ_CUT_DOWN_LEFT           ; 037
	const BATTLE_ANIM_OBJ_CUT_DOWN_RIGHT          ; 038
	const BATTLE_ANIM_OBJ_CUT_UP_RIGHT            ; 039
	const BATTLE_ANIM_OBJ_CUT_LONG_DOWN_LEFT      ; 03a
	const BATTLE_ANIM_OBJ_CUT_LONG_DOWN_RIGHT     ; 03b
	const BATTLE_ANIM_OBJ_SOLAR_BEAM_CHARGE       ; 03c
	const BATTLE_ANIM_OBJ_ABSORB_CENTER           ; 03d
	const BATTLE_ANIM_OBJ_GUST                    ; 03e
	const BATTLE_ANIM_OBJ_VINE_WHIP1              ; 03f
	const BATTLE_ANIM_OBJ_VINE_WHIP2              ; 040
	const BATTLE_ANIM_OBJ_RAZOR_WIND1             ; 041
	const BATTLE_ANIM_OBJ_RAZOR_WIND2             ; 042
	const BATTLE_ANIM_OBJ_WARP                    ; 043
	const BATTLE_ANIM_OBJ_ABSORB                  ; 044
	const BATTLE_ANIM_OBJ_EGG                     ; 045
	const BATTLE_ANIM_OBJ_FOCUS                   ; 046
	const BATTLE_ANIM_OBJ_BIND1                   ; 047
	const BATTLE_ANIM_OBJ_BIND2                   ; 048
	const BATTLE_ANIM_OBJ_LEECH_SEED              ; 049
	const BATTLE_ANIM_OBJ_SOUND                   ; 04a
	const BATTLE_ANIM_OBJ_WAVE                    ; 04b
	const BATTLE_ANIM_OBJ_CONFUSE_RAY             ; 04c
	const BATTLE_ANIM_OBJ_LEER                    ; 04d
	const BATTLE_ANIM_OBJ_LEER_TIP                ; 04e
	const BATTLE_ANIM_OBJ_SCREEN                  ; 04f
	const BATTLE_ANIM_OBJ_CHICK                   ; 050
	const BATTLE_ANIM_OBJ_AMNESIA                 ; 051
	const BATTLE_ANIM_OBJ_ASLEEP                  ; 052
	const BATTLE_ANIM_OBJ_SKULL                   ; 053
	const BATTLE_ANIM_OBJ_DIG_SAND                ; 054
	const BATTLE_ANIM_OBJ_DIG_PILE                ; 055
	const BATTLE_ANIM_OBJ_SAND                    ; 056
	const BATTLE_ANIM_OBJ_PARALYZED               ; 057
	const BATTLE_ANIM_OBJ_STRING_SHOT             ; 058
	const BATTLE_ANIM_OBJ_HAZE                    ; 059
	const BATTLE_ANIM_OBJ_MIST                    ; 05a
	const BATTLE_ANIM_OBJ_SMOG                    ; 05b
	const BATTLE_ANIM_OBJ_POISON_GAS              ; 05c
	const BATTLE_ANIM_OBJ_HORN                    ; 05d
	const BATTLE_ANIM_OBJ_NEEDLE                  ; 05e
	const BATTLE_ANIM_OBJ_PETAL_DANCE             ; 05f
	const BATTLE_ANIM_OBJ_SLUDGE_BOMB             ; 060
	const BATTLE_ANIM_OBJ_PAY_DAY                 ; 061
	const BATTLE_ANIM_OBJ_MIMIC                   ; 062
	const BATTLE_ANIM_OBJ_ATTRACT                 ; 063
	const BATTLE_ANIM_OBJ_BONEMERANG              ; 064
	const BATTLE_ANIM_OBJ_BONE_CLUB               ; 065
	const BATTLE_ANIM_OBJ_BONE_RUSH               ; 066
	const BATTLE_ANIM_OBJ_SWIFT                   ; 067
	const BATTLE_ANIM_OBJ_KINESIS                 ; 068
	const BATTLE_ANIM_OBJ_FLASH                   ; 069
	const BATTLE_ANIM_OBJ_SHINY                   ; 06a
	const BATTLE_ANIM_OBJ_SKY_ATTACK              ; 06b
	const BATTLE_ANIM_OBJ_LICK                    ; 06c
	const BATTLE_ANIM_OBJ_WITHDRAW                ; 06d
	const BATTLE_ANIM_OBJ_DRAIN                   ; 06e
	const BATTLE_ANIM_OBJ_GROWTH                  ; 06f
	const BATTLE_ANIM_OBJ_CONVERSION2             ; 070
	const BATTLE_ANIM_OBJ_SMOKE                   ; 071
	const BATTLE_ANIM_OBJ_SMOKESCREEN             ; 072
	const BATTLE_ANIM_OBJ_SWORDS_DANCE            ; 073
	const BATTLE_ANIM_OBJ_SPEED_LINE              ; 074
	const BATTLE_ANIM_OBJ_SHARPEN                 ; 075
	const BATTLE_ANIM_OBJ_DEFENSE_CURL            ; 076
	const BATTLE_ANIM_OBJ_METRONOME_HAND          ; 077
	const BATTLE_ANIM_OBJ_METRONOME_SPARKLE       ; 078
	const BATTLE_ANIM_OBJ_DISABLE                 ; 079
	const BATTLE_ANIM_OBJ_AGILITY                 ; 07a
	const BATTLE_ANIM_OBJ_HEART                   ; 07b
	const BATTLE_ANIM_OBJ_FLAME_WHEEL             ; 07c
	const BATTLE_ANIM_OBJ_SACRED_FIRE             ; 07d
	const BATTLE_ANIM_OBJ_COTTON_SPORE            ; 07e
	const BATTLE_ANIM_OBJ_MILK_DRINK              ; 07f
	const BATTLE_ANIM_OBJ_ANGER                   ; 080
	const BATTLE_ANIM_OBJ_HEAL_BELL               ; 081
	const BATTLE_ANIM_OBJ_HEAL_BELL_NOTE          ; 082
	const BATTLE_ANIM_OBJ_BATON_PASS              ; 083
	const BATTLE_ANIM_OBJ_LOCK_ON                 ; 084
	const BATTLE_ANIM_OBJ_MIND_READER             ; 085
	const BATTLE_ANIM_OBJ_SAFEGUARD               ; 086
	const BATTLE_ANIM_OBJ_PROTECT                 ; 087
	const BATTLE_ANIM_OBJ_THIEF                   ; 088
	const BATTLE_ANIM_OBJ_OCTAZOOKA               ; 089
	const BATTLE_ANIM_OBJ_PRESENT                 ; 08a
	const BATTLE_ANIM_OBJ_SPIKES                  ; 08b
	const BATTLE_ANIM_OBJ_POWDER_SNOW             ; 08c
	const BATTLE_ANIM_OBJ_DRAGONBREATH            ; 08d
	const BATTLE_ANIM_OBJ_CONVERSION              ; 08e
	const BATTLE_ANIM_OBJ_SPIDER_WEB              ; 08f
	const BATTLE_ANIM_OBJ_NIGHTMARE               ; 090
	const BATTLE_ANIM_OBJ_IN_NIGHTMARE            ; 091
	const BATTLE_ANIM_OBJ_LOVELY_KISS             ; 092
	const BATTLE_ANIM_OBJ_SWEET_KISS              ; 093
	const BATTLE_ANIM_OBJ_SKETCH                  ; 094
	const BATTLE_ANIM_OBJ_ENCORE_HAND             ; 095
	const BATTLE_ANIM_OBJ_ENCORE_STAR             ; 096
	const BATTLE_ANIM_OBJ_DESTINY_BOND            ; 097
	const BATTLE_ANIM_OBJ_MORNING_SUN             ; 098
	const BATTLE_ANIM_OBJ_GLIMMER                 ; 099
	const BATTLE_ANIM_OBJ_MOONLIGHT               ; 09a
	const BATTLE_ANIM_OBJ_HIDDEN_POWER            ; 09b
	const BATTLE_ANIM_OBJ_CROSS_CHOP1             ; 09c
	const BATTLE_ANIM_OBJ_CROSS_CHOP2             ; 09d
	const BATTLE_ANIM_OBJ_SANDSTORM               ; 09e
	const BATTLE_ANIM_OBJ_ZAP_CANNON              ; 09f
	const BATTLE_ANIM_OBJ_SPITE                   ; 0a0
	const BATTLE_ANIM_OBJ_CURSE                   ; 0a1
	const BATTLE_ANIM_OBJ_PERISH_SONG             ; 0a2
	const BATTLE_ANIM_OBJ_FORESIGHT               ; 0a3
	const BATTLE_ANIM_OBJ_RAPID_SPIN              ; 0a4
	const BATTLE_ANIM_OBJ_SWAGGER                 ; 0a5
	const BATTLE_ANIM_OBJ_BELLY_DRUM_HAND         ; 0a6
	const BATTLE_ANIM_OBJ_BELLY_DRUM_NOTE         ; 0a7
	const BATTLE_ANIM_OBJ_MEAN_LOOK               ; 0a8
	const BATTLE_ANIM_OBJ_SHOOTING_SPARKLE        ; 0a9
	const BATTLE_ANIM_OBJ_RAIN                    ; 0aa
	const BATTLE_ANIM_OBJ_B0                      ; 0ab
	const BATTLE_ANIM_OBJ_PSYCH_UP                ; 0ac
	const BATTLE_ANIM_OBJ_ANCIENTPOWER            ; 0ad
	const BATTLE_ANIM_OBJ_AEROBLAST               ; 0ae
	const BATTLE_ANIM_OBJ_SHADOW_BALL             ; 0af
	const BATTLE_ANIM_OBJ_ROCK_SMASH              ; 0b0
	const BATTLE_ANIM_OBJ_FLOWER                  ; 0b1
	const BATTLE_ANIM_OBJ_COTTON                  ; 0b2
	const BATTLE_ANIM_OBJ_ENEMYFEET_1ROW          ; 0b3
	const BATTLE_ANIM_OBJ_PLAYERHEAD_1ROW         ; 0b4
	const BATTLE_ANIM_OBJ_ENEMYFEET_2ROW          ; 0b5
	const BATTLE_ANIM_OBJ_PLAYERHEAD_2ROW         ; 0b6
	const BATTLE_ANIM_OBJ_PALM_XFLIP              ; 0b7
	const BATTLE_ANIM_OBJ_MEDIUM_HORN             ; 0b8
	const BATTLE_ANIM_OBJ_MINIMIZE                ; 0b9
	const BATTLE_ANIM_OBJ_DAZZLE                  ; 0ba
	const BATTLE_ANIM_OBJ_EGG_BOMB                ; 0bb
	const BATTLE_ANIM_OBJ_BUBBLE_SPLASH           ; 0bc
	const BATTLE_ANIM_OBJ_RISING_BUBBLE           ; 0bd
	const BATTLE_ANIM_OBJ_OCTAZOOKA_SMOKE         ; 0be
	const BATTLE_ANIM_OBJ_INK_SPLASH              ; 0bf
	const BATTLE_ANIM_OBJ_FAKE_OUT_L              ; 0c0
	const BATTLE_ANIM_OBJ_FAKE_OUT_R              ; 0c1
	const BATTLE_ANIM_OBJ_SMELLINGSALT_L          ; 0c2
	const BATTLE_ANIM_OBJ_SMELLINGSALT_R          ; 0c3
	const BATTLE_ANIM_OBJ_SMELLINGSALT_SHOCK      ; 0c4
	const BATTLE_ANIM_OBJ_BIG_WAVE                ; 0c5
	const BATTLE_ANIM_OBJ_UPROAR                  ; 0c6
	const BATTLE_ANIM_OBJ_ENERGY_ORB              ; 0c7
	const BATTLE_ANIM_OBJ_ENERGY_ORB_OUT          ; 0c8
	const BATTLE_ANIM_OBJ_ENERGY_ORB_OUT_YFIX     ; 0c9
	const BATTLE_ANIM_OBJ_MIST_BG                 ; 0ca
	const BATTLE_ANIM_OBJ_HAIL                    ; 0cb
	const BATTLE_ANIM_OBJ_TORMENT                 ; 0cc
	const BATTLE_ANIM_OBJ_FLATTER_1               ; 0cd
	const BATTLE_ANIM_OBJ_FLATTER_2               ; 0ce
	const BATTLE_ANIM_OBJ_DROPLET_R               ; 0cf
	const BATTLE_ANIM_OBJ_DROPLET_L               ; 0d0
	const BATTLE_ANIM_OBJ_LONG_PUNCH              ; 0d1
	const BATTLE_ANIM_OBJ_CHARGE                  ; 0d2
	const BATTLE_ANIM_OBJ_TAUNT                   ; 0d3
	const BATTLE_ANIM_OBJ_TRICK                   ; 0d4
	const BATTLE_ANIM_OBJ_WISH_1                  ; 0d5
	const BATTLE_ANIM_OBJ_WISH_2                  ; 0d6
	const BATTLE_ANIM_OBJ_COSMIC_POWER_BG         ; 0d7
	const BATTLE_ANIM_OBJ_ASSIST                  ; 0d8
	const BATTLE_ANIM_OBJ_ROOT_L                  ; 0d9
	const BATTLE_ANIM_OBJ_ROOT_R                  ; 0da
	const BATTLE_ANIM_OBJ_ENERGY_INGRAIN          ; 0db
	const BATTLE_ANIM_OBJ_RECYCLE                 ; 0dc
	const BATTLE_ANIM_OBJ_VERTICAL_CHOP           ; 0dd
	const BATTLE_ANIM_OBJ_VERTICAL_CHOP_STILL     ; 0de
	const BATTLE_ANIM_OBJ_YAWN_1                  ; 0df
	const BATTLE_ANIM_OBJ_YAWN_2                  ; 0e0
	const BATTLE_ANIM_OBJ_ROCK_TOMB               ; 0e1
	const BATTLE_ANIM_OBJ_ERUPTION_BIG_ROCK       ; 0e2
	const BATTLE_ANIM_OBJ_ERUPTION_SMALL_ROCK     ; 0e3
	const BATTLE_ANIM_OBJ_ERUPTION_SMALL_FLAME    ; 0e4
	const BATTLE_ANIM_OBJ_SKILL_SWAP_1            ; 0e5
	const BATTLE_ANIM_OBJ_SKILL_SWAP_2            ; 0e6
	const BATTLE_ANIM_OBJ_IMPRISON_RING           ; 0e7
	const BATTLE_ANIM_OBJ_RED_X                   ; 0e8
	const BATTLE_ANIM_OBJ_DESCENDING_SPARKLE      ; 0e9
	const BATTLE_ANIM_OBJ_GRUDGE                  ; 0ea
	const BATTLE_ANIM_OBJ_SNATCH_1                ; 0eb
	const BATTLE_ANIM_OBJ_SNATCH_2                ; 0ec
	const BATTLE_ANIM_OBJ_SMALL_GLOW              ; 0ed
	const BATTLE_ANIM_OBJ_BIG_GLOW                ; 0ee
	const BATTLE_ANIM_OBJ_FEATHERDANCE            ; 0ef
	const BATTLE_ANIM_OBJ_TEETER_DANCE            ; 0f0
	const BATTLE_ANIM_OBJ_RADIAL_FLAME_SLOW       ; 0f1
	const BATTLE_ANIM_OBJ_MUD_SPORT_1             ; 0f2
	const BATTLE_ANIM_OBJ_MUD_SPORT_2             ; 0f3
	const BATTLE_ANIM_OBJ_ICE_BALL                ; 0f4
	const BATTLE_ANIM_OBJ_ICE_SPLASH              ; 0f5
	const BATTLE_ANIM_OBJ_NEEDLE_ARM_N            ; 0f6
	const BATTLE_ANIM_OBJ_NEEDLE_ARM_NE           ; 0f7
	const BATTLE_ANIM_OBJ_NEEDLE_ARM_E            ; 0f8
	const BATTLE_ANIM_OBJ_NEEDLE_ARM_SE           ; 0f9
	const BATTLE_ANIM_OBJ_NEEDLE_ARM_S            ; 0fa
	const BATTLE_ANIM_OBJ_NEEDLE_ARM_SW           ; 0fb
	const BATTLE_ANIM_OBJ_NEEDLE_ARM_W            ; 0fc
	const BATTLE_ANIM_OBJ_NEEDLE_ARM_NW           ; 0fd
	const BATTLE_ANIM_OBJ_CLAW_TEAR               ; 0fe
	const BATTLE_ANIM_OBJ_RADIAL_FLAME            ; 0ff
	const BATTLE_ANIM_OBJ_BLAST_BURN              ; 100
	const BATTLE_ANIM_OBJ_VORTEX                  ; 101
	const BATTLE_ANIM_OBJ_HYDRO_CANNON            ; 102
	const BATTLE_ANIM_OBJ_SHRINKING_GLOW          ; 103
	const BATTLE_ANIM_OBJ_STAR_BURST              ; 104
	const BATTLE_ANIM_OBJ_WEATHER_BALL_RISE       ; 105
	const BATTLE_ANIM_OBJ_WEATHER_BALL_FALL       ; 106
	const BATTLE_ANIM_OBJ_AROMATHERAPY            ; 107
	const BATTLE_ANIM_OBJ_WIND_SPARKLE            ; 108
	const BATTLE_ANIM_OBJ_TEARS_1                 ; 109
	const BATTLE_ANIM_OBJ_TEARS_2                 ; 10a
	const BATTLE_ANIM_OBJ_AIR_CUTTER              ; 10b
	const BATTLE_ANIM_OBJ_OVERHEAT_SMOKE          ; 10c
	const BATTLE_ANIM_OBJ_WIND                    ; 10d
	const BATTLE_ANIM_OBJ_GRASS_WHISTLE_LEAF      ; 10e
	const BATTLE_ANIM_OBJ_COSMIC_POWER            ; 10f
	const BATTLE_ANIM_OBJ_WATER_SPOUT_RISING      ; 110
	const BATTLE_ANIM_OBJ_WATER_SPOUT_FALLING     ; 111
	const BATTLE_ANIM_OBJ_SIGNAL_BEAM_RED         ; 112
	const BATTLE_ANIM_OBJ_SIGNAL_BEAM_BLUE        ; 113
	const BATTLE_ANIM_OBJ_SIDE_PUNCH              ; 114
	const BATTLE_ANIM_OBJ_SKY_UPPERCUT            ; 115
	const BATTLE_ANIM_OBJ_UPPERCUT_PUNCH          ; 116
	const BATTLE_ANIM_OBJ_RISING_HIT              ; 117
	const BATTLE_ANIM_OBJ_SAND_TOMB               ; 118
	const BATTLE_ANIM_OBJ_BULLET_SEED             ; 119
	const BATTLE_ANIM_OBJ_BLOCK                   ; 11a
	const BATTLE_ANIM_OBJ_FLARE                   ; 11b
	const BATTLE_ANIM_OBJ_FRENZY_PLANT_L          ; 11c
	const BATTLE_ANIM_OBJ_FRENZY_PLANT_R          ; 11d
	const BATTLE_ANIM_OBJ_BULK_UP                 ; 11e
	const BATTLE_ANIM_OBJ_BLUR_VERTICAL_UP        ; 11f
	const BATTLE_ANIM_OBJ_BLUR_VERTICAL_DOWN      ; 120
	const BATTLE_ANIM_OBJ_MUD_SHOT                ; 121
	const BATTLE_ANIM_OBJ_VOLT_TACKLE             ; 122
	const BATTLE_ANIM_OBJ_WATER_SPORT             ; 123
	const BATTLE_ANIM_OBJ_SHRINKING_RING          ; 124
	const BATTLE_ANIM_OBJ_SHRINKING_RING_BIG      ; 125
	const BATTLE_ANIM_OBJ_CUT_LONG_UP_RIGHT       ; 126
	const BATTLE_ANIM_OBJ_CUT_LONG_UP_LEFT        ; 127
	const BATTLE_ANIM_OBJ_DRAGON_DANCE            ; 128
	const BATTLE_ANIM_OBJ_ROCK_BLAST              ; 129
	const BATTLE_ANIM_OBJ_SHOCK_WAVE_UP           ; 12a
	const BATTLE_ANIM_OBJ_SHOCK_WAVE_DOWN         ; 12b
	const BATTLE_ANIM_OBJ_SHOCK_WAVE_STRIKE       ; 12c
	const BATTLE_ANIM_OBJ_EXPLOSION_SMALL         ; 12d
	const BATTLE_ANIM_OBJ_POISON_DROPLET          ; 12e
	const BATTLE_ANIM_OBJ_SONICBOOM_JP            ; 12f
	const BATTLE_ANIM_OBJ_MUSHROOM                ; 130
	const BATTLE_ANIM_OBJ_POWDER_SHOOT            ; 131
	const BATTLE_ANIM_OBJ_SHOOTING_TRIANGLE       ; 132
	const BATTLE_ANIM_OBJ_SPINNING_TRIANGLE       ; 133
	const BATTLE_ANIM_OBJ_SHOOTING_MIST           ; 134
	const BATTLE_ANIM_OBJ_STONE_EDGE_STILL        ; 135
	const BATTLE_ANIM_OBJ_STONE_EDGE              ; 136
	const BATTLE_ANIM_OBJ_CHARGE_BEAM             ; 137
	const BATTLE_ANIM_OBJ_CUT_RIGHT               ; 138
	const BATTLE_ANIM_OBJ_CUT_LEFT                ; 139
	const BATTLE_ANIM_OBJ_ROCK_WRECKER_GROW       ; 13a
	const BATTLE_ANIM_OBJ_ROCK_WRECKER_CHARGE     ; 13b
	const BATTLE_ANIM_OBJ_ROCK_WRECKER            ; 13c
	const BATTLE_ANIM_OBJ_GUNK_SHOT               ; 13d
	const BATTLE_ANIM_OBJ_GUNK_SHOT_BUBBLES       ; 13e
	const BATTLE_ANIM_OBJ_BIG_WHIP                ; 13f
	const BATTLE_ANIM_OBJ_MYSTICAL_FIRE           ; 140

DEF NUM_BATTLE_ANIM_OBJS EQU const_value

; DoBattleAnimFrame arguments (see engine/battle_anims/functions.asm)
	const_def
	const BATTLE_ANIM_FUNC_NULL                               ; 00
	const BATTLE_ANIM_FUNC_USER_TO_TARGET                     ; 01
	const BATTLE_ANIM_FUNC_USER_TO_TARGET_DISAPPEAR           ; 02
	const BATTLE_ANIM_FUNC_MOVE_IN_CIRCLE                     ; 03
	const BATTLE_ANIM_FUNC_WAVE_TO_TARGET                     ; 04
	const BATTLE_ANIM_FUNC_THROW_TO_TARGET                    ; 05
	const BATTLE_ANIM_FUNC_THROW_TO_TARGET_DISAPPEAR          ; 06
	const BATTLE_ANIM_FUNC_DROP                               ; 07
	const BATTLE_ANIM_FUNC_USER_TO_TARGET_SPIN                ; 08
	const BATTLE_ANIM_FUNC_SHAKE                              ; 09
	const BATTLE_ANIM_FUNC_FIRE_BLAST                         ; 0a
	const BATTLE_ANIM_FUNC_RAZOR_LEAF                         ; 0b
	const BATTLE_ANIM_FUNC_BUBBLE                             ; 0c
	const BATTLE_ANIM_FUNC_SURF                               ; 0d
	const BATTLE_ANIM_FUNC_SING                               ; 0e
	const BATTLE_ANIM_FUNC_WATER_GUN                          ; 0f
	const BATTLE_ANIM_FUNC_EMBER                              ; 10
	const BATTLE_ANIM_FUNC_POWDER                             ; 11
	const BATTLE_ANIM_FUNC_POKEBALL                           ; 12
	const BATTLE_ANIM_FUNC_POKEBALL_BLOCKED                   ; 13
	const BATTLE_ANIM_FUNC_RECOVER                            ; 14
	const BATTLE_ANIM_FUNC_THUNDER_WAVE                       ; 15
	const BATTLE_ANIM_FUNC_CLAMP_ENCORE                       ; 16
	const BATTLE_ANIM_FUNC_BITE                               ; 17
	const BATTLE_ANIM_FUNC_SOLAR_BEAM                         ; 18
	const BATTLE_ANIM_FUNC_GUST                               ; 19
	const BATTLE_ANIM_FUNC_RAZOR_WIND                         ; 1a
	const BATTLE_ANIM_FUNC_KICK                               ; 1b
	const BATTLE_ANIM_FUNC_ABSORB                             ; 1c
	const BATTLE_ANIM_FUNC_EGG                                ; 1d
	const BATTLE_ANIM_FUNC_MOVE_UP                            ; 1e
	const BATTLE_ANIM_FUNC_WRAP                               ; 1f
	const BATTLE_ANIM_FUNC_LEECH_SEED                         ; 20
	const BATTLE_ANIM_FUNC_SOUND                              ; 21
	const BATTLE_ANIM_FUNC_CONFUSE_RAY                        ; 22
	const BATTLE_ANIM_FUNC_DIZZY                              ; 23
	const BATTLE_ANIM_FUNC_AMNESIA                            ; 24
	const BATTLE_ANIM_FUNC_FLOAT_UP                           ; 25
	const BATTLE_ANIM_FUNC_DIG                                ; 26
	const BATTLE_ANIM_FUNC_STRING                             ; 27
	const BATTLE_ANIM_FUNC_PARALYZED                          ; 28
	const BATTLE_ANIM_FUNC_SPIRAL_DESCENT                     ; 29
	const BATTLE_ANIM_FUNC_POISON_GAS                         ; 2a
	const BATTLE_ANIM_FUNC_HORN                               ; 2b
	const BATTLE_ANIM_FUNC_NEEDLE                             ; 2c
	const BATTLE_ANIM_FUNC_PETAL_DANCE                        ; 2d
	const BATTLE_ANIM_FUNC_THIEF_PAYDAY                       ; 2e
	const BATTLE_ANIM_FUNC_ABSORB_CIRCLE                      ; 2f
	const BATTLE_ANIM_FUNC_BONEMERANG                         ; 30
	const BATTLE_ANIM_FUNC_SHINY                              ; 31
	const BATTLE_ANIM_FUNC_SKY_ATTACK                         ; 32
	const BATTLE_ANIM_FUNC_GROWTH_SWORDS_DANCE                ; 33
	const BATTLE_ANIM_FUNC_SMOKE_FLAME_WHEEL                  ; 34
	const BATTLE_ANIM_FUNC_PRESENT_SMOKESCREEN                ; 35
	const BATTLE_ANIM_FUNC_STRENGTH_SEISMIC_TOSS              ; 36
	const BATTLE_ANIM_FUNC_SPEED_LINE                         ; 37
	const BATTLE_ANIM_FUNC_SLUDGE                             ; 38
	const BATTLE_ANIM_FUNC_METRONOME_HAND                     ; 39
	const BATTLE_ANIM_FUNC_METRONOME_SPARKLE_SKETCH           ; 3a
	const BATTLE_ANIM_FUNC_AGILITY                            ; 3b
	const BATTLE_ANIM_FUNC_SACRED_FIRE                        ; 3c
	const BATTLE_ANIM_FUNC_SAFEGUARD_PROTECT                  ; 3d
	const BATTLE_ANIM_FUNC_LOCK_ON_MIND_READER                ; 3e
	const BATTLE_ANIM_FUNC_SPIKES                             ; 3f
	const BATTLE_ANIM_FUNC_HEAL_BELL_NOTES                    ; 40
	const BATTLE_ANIM_FUNC_BATON_PASS                         ; 41
	const BATTLE_ANIM_FUNC_CONVERSION                         ; 42
	const BATTLE_ANIM_FUNC_ENCORE_BELLY_DRUM                  ; 43
	const BATTLE_ANIM_FUNC_SWAGGER_MORNING_SUN                ; 44
	const BATTLE_ANIM_FUNC_HIDDEN_POWER                       ; 45
	const BATTLE_ANIM_FUNC_CURSE                              ; 46
	const BATTLE_ANIM_FUNC_PERISH_SONG                        ; 47
	const BATTLE_ANIM_FUNC_RAPID_SPIN                         ; 48
	const BATTLE_ANIM_FUNC_RAIN_SANDSTORM                     ; 49
	const BATTLE_ANIM_FUNC_BATTLE_ANIM_OBJ_B0                 ; 4a
	const BATTLE_ANIM_FUNC_PSYCH_UP                           ; 4b
	const BATTLE_ANIM_FUNC_ANCIENT_POWER                      ; 4c
	const BATTLE_ANIM_FUNC_ROCK_SMASH                         ; 4d
	const BATTLE_ANIM_FUNC_COTTON                             ; 4e
    ; New Functions
	const BATTLE_ANIM_FUNC_BUBBLE_SPLASH                      ; 4f
	const BATTLE_ANIM_FUNC_RADIAL_MOVE_OUT                    ; 50
	const BATTLE_ANIM_FUNC_RADIAL_MOVE_OUT_CP_BG              ; 51
	const BATTLE_ANIM_FUNC_RADIAL_MOVE_OUT_SLOW               ; 52
	const BATTLE_ANIM_FUNC_RADIAL_MOVE_OUT_VERY_SLOW          ; 53
	const BATTLE_ANIM_FUNC_RADIAL_MOVE_OUT_FAST               ; 54
	const BATTLE_ANIM_FUNC_RADIAL_MOVE_OUT_VERY_FAST_NO_STOP  ; 55
	const BATTLE_ANIM_FUNC_RADIAL_MOVE_IN                     ; 56
	const BATTLE_ANIM_FUNC_OBJECT_HOVER                       ; 57
	const BATTLE_ANIM_FUNC_ROCK_TOMB                          ; 58
	const BATTLE_ANIM_FUNC_AIR_CUTTER                         ; 59
	const BATTLE_ANIM_FUNC_RADIAL_MOVE_OUT_SLOW_SHORT         ; 5a

DEF NUM_BATTLE_ANIM_FUNCS EQU const_value

; BattleAnimFrameData indexes (see data/battle_anims/framesets.asm)
	const_def
	const BATTLE_ANIM_FRAMESET_HIT_BIG                 ; 000
	const BATTLE_ANIM_FRAMESET_HIT                     ; 001
	const BATTLE_ANIM_FRAMESET_HIT_SMALL               ; 002
	const BATTLE_ANIM_FRAMESET_PUNCH                   ; 003
	const BATTLE_ANIM_FRAMESET_KICK                    ; 004
	const BATTLE_ANIM_FRAMESET_PALM                    ; 005
	const BATTLE_ANIM_FRAMESET_FANG                    ; 006
	const BATTLE_ANIM_FRAMESET_PUNCH_SHAKE             ; 007
	const BATTLE_ANIM_FRAMESET_BALL_POOF               ; 008
	const BATTLE_ANIM_FRAMESET_POKE_BALL_1             ; 009
	const BATTLE_ANIM_FRAMESET_POKE_BALL_2             ; 00a
	const BATTLE_ANIM_FRAMESET_POKE_BALL_3             ; 00b
	const BATTLE_ANIM_FRAMESET_POKE_BALL_4             ; 00c
	const BATTLE_ANIM_FRAMESET_POKE_BALL_5             ; 00d
	const BATTLE_ANIM_FRAMESET_DRAGON_RAGE             ; 00e
	const BATTLE_ANIM_FRAMESET_FLAMETHROWER            ; 00f
	const BATTLE_ANIM_FRAMESET_EMBER                   ; 010
	const BATTLE_ANIM_FRAMESET_BURNED                  ; 011
	const BATTLE_ANIM_FRAMESET_BLIZZARD                ; 012
	const BATTLE_ANIM_FRAMESET_ICE                     ; 013
	const BATTLE_ANIM_FRAMESET_ICE_BEAM                ; 014
	const BATTLE_ANIM_FRAMESET_POWDER_SNOW             ; 015
	const BATTLE_ANIM_FRAMESET_RAZOR_LEAF_1            ; 016
	const BATTLE_ANIM_FRAMESET_RAZOR_LEAF_2            ; 017
	const BATTLE_ANIM_FRAMESET_EXPLOSION               ; 018
	const BATTLE_ANIM_FRAMESET_BIG_ROCK_STAR_HEART     ; 019
	const BATTLE_ANIM_FRAMESET_SMALL_ROCK_STAR_HEART   ; 01a
	const BATTLE_ANIM_FRAMESET_STRENGTH                ; 01b
	const BATTLE_ANIM_FRAMESET_SKULL_CROSSBONE         ; 01c
	const BATTLE_ANIM_FRAMESET_ACID                    ; 01d
	const BATTLE_ANIM_FRAMESET_SLUDGE_BUBBLE           ; 01e
	const BATTLE_ANIM_FRAMESET_SLUDGE_BUBBLE_BURST     ; 01f
	const BATTLE_ANIM_FRAMESET_SMALL_BUBBLE            ; 020
	const BATTLE_ANIM_FRAMESET_PULSING_BUBBLE          ; 021
	const BATTLE_ANIM_FRAMESET_SURF                    ; 022
	const BATTLE_ANIM_FRAMESET_MUSIC_NOTE_1            ; 023
	const BATTLE_ANIM_FRAMESET_MUSIC_NOTE_2            ; 024
	const BATTLE_ANIM_FRAMESET_MUSIC_NOTE_3            ; 025
	const BATTLE_ANIM_FRAMESET_WATER_GUN_1             ; 026
	const BATTLE_ANIM_FRAMESET_WATER_GUN_2             ; 027
	const BATTLE_ANIM_FRAMESET_WATER_GUN_3             ; 028
	const BATTLE_ANIM_FRAMESET_HYDRO_PUMP              ; 029
	const BATTLE_ANIM_FRAMESET_POWDER                  ; 02a
	const BATTLE_ANIM_FRAMESET_BEAM                    ; 02b
	const BATTLE_ANIM_FRAMESET_BEAM_TIP                ; 02c
	const BATTLE_ANIM_FRAMESET_ICE_BUILDUP             ; 02d
	const BATTLE_ANIM_FRAMESET_FROZEN                  ; 02e
	const BATTLE_ANIM_FRAMESET_CIRCLING_SPARKLE        ; 02f
	const BATTLE_ANIM_FRAMESET_THUNDER_CENTER          ; 030
	const BATTLE_ANIM_FRAMESET_THUNDER_LEFT            ; 031
	const BATTLE_ANIM_FRAMESET_THUNDER_RIGHT           ; 032
	const BATTLE_ANIM_FRAMESET_THUNDER_WAVE_DISABLE    ; 033
	const BATTLE_ANIM_FRAMESET_THUNDER_WAVE_EXTRA      ; 034
	const BATTLE_ANIM_FRAMESET_THUNDERBOLT_SPARKS      ; 035
	const BATTLE_ANIM_FRAMESET_THUNDERBOLT_CORE        ; 036
	const BATTLE_ANIM_FRAMESET_THUNDERSHOCK_SPARKS     ; 037
	const BATTLE_ANIM_FRAMESET_THUNDERSHOCK_CORE       ; 038
	const BATTLE_ANIM_FRAMESET_CLAMP                   ; 039
	const BATTLE_ANIM_FRAMESET_CLAMP_FLIPPED           ; 03a
	const BATTLE_ANIM_FRAMESET_BITE_1                  ; 03b
	const BATTLE_ANIM_FRAMESET_BITE_2                  ; 03c
	const BATTLE_ANIM_FRAMESET_CUT_DOWN_LEFT           ; 03d
	const BATTLE_ANIM_FRAMESET_CUT_DOWN_RIGHT          ; 03e
	const BATTLE_ANIM_FRAMESET_CUT_UP_RIGHT            ; 03f
	const BATTLE_ANIM_FRAMESET_CUT_LONG_DOWN_LEFT      ; 040
	const BATTLE_ANIM_FRAMESET_CUT_LONG_DOWN_RIGHT     ; 041
	const BATTLE_ANIM_FRAMESET_CHARGE_ORB_1            ; 042
	const BATTLE_ANIM_FRAMESET_ABSORB_CENTER           ; 043
	const BATTLE_ANIM_FRAMESET_GUST                    ; 044
	const BATTLE_ANIM_FRAMESET_VINE_WHIP_1             ; 045
	const BATTLE_ANIM_FRAMESET_VINE_WHIP_2             ; 046
	const BATTLE_ANIM_FRAMESET_RAZOR_WIND_1            ; 047
	const BATTLE_ANIM_FRAMESET_RAZOR_WIND_2            ; 048
	const BATTLE_ANIM_FRAMESET_WARP                    ; 049
	const BATTLE_ANIM_FRAMESET_CHARGE_ORB_2            ; 04a
	const BATTLE_ANIM_FRAMESET_EGG                     ; 04b
	const BATTLE_ANIM_FRAMESET_EGG_WOBBLE              ; 04c
	const BATTLE_ANIM_FRAMESET_EGG_CRACKED_TOP         ; 04d
	const BATTLE_ANIM_FRAMESET_EGG_CRACKED_BOTTOM      ; 04e
	const BATTLE_ANIM_FRAMESET_FOCUS                   ; 04f
	const BATTLE_ANIM_FRAMESET_BIND_1                  ; 050
	const BATTLE_ANIM_FRAMESET_BIND_2                  ; 051
	const BATTLE_ANIM_FRAMESET_BIND_3                  ; 052
	const BATTLE_ANIM_FRAMESET_BIND_4                  ; 053
	const BATTLE_ANIM_FRAMESET_LEECH_SEED_1            ; 054
	const BATTLE_ANIM_FRAMESET_LEECH_SEED_2            ; 055
	const BATTLE_ANIM_FRAMESET_LEECH_SEED_3            ; 056
	const BATTLE_ANIM_FRAMESET_SOUND_1                 ; 057
	const BATTLE_ANIM_FRAMESET_SOUND_2                 ; 058
	const BATTLE_ANIM_FRAMESET_SOUND_3                 ; 059
	const BATTLE_ANIM_FRAMESET_WAVE                    ; 05a
	const BATTLE_ANIM_FRAMESET_CONFUSE_RAY_1           ; 05b
	const BATTLE_ANIM_FRAMESET_CONFUSE_RAY_2           ; 05c
	const BATTLE_ANIM_FRAMESET_LEER                    ; 05d
	const BATTLE_ANIM_FRAMESET_REFLECT                 ; 05e
	const BATTLE_ANIM_FRAMESET_CHICK_1                 ; 05f
	const BATTLE_ANIM_FRAMESET_CHICK_2                 ; 060
	const BATTLE_ANIM_FRAMESET_AMNESIA_1               ; 061
	const BATTLE_ANIM_FRAMESET_AMNESIA_2               ; 062
	const BATTLE_ANIM_FRAMESET_AMNESIA_3_RECOVER       ; 063
	const BATTLE_ANIM_FRAMESET_ASLEEP                  ; 064
	const BATTLE_ANIM_FRAMESET_DIG_SAND                ; 065
	const BATTLE_ANIM_FRAMESET_DIG_PILE                ; 066
	const BATTLE_ANIM_FRAMESET_SAND                    ; 067
	const BATTLE_ANIM_FRAMESET_STRING_SHOT_1           ; 068
	const BATTLE_ANIM_FRAMESET_STRING_SHOT_2           ; 069
	const BATTLE_ANIM_FRAMESET_STRING_SHOT_3           ; 06a
	const BATTLE_ANIM_FRAMESET_PARALYZED               ; 06b
	const BATTLE_ANIM_FRAMESET_PARALYZED_FLIPPED       ; 06c
	const BATTLE_ANIM_FRAMESET_HAZE                    ; 06d
	const BATTLE_ANIM_FRAMESET_MIST                    ; 06e
	const BATTLE_ANIM_FRAMESET_HORN                    ; 06f
	const BATTLE_ANIM_FRAMESET_NEEDLE                  ; 070
	const BATTLE_ANIM_FRAMESET_FLOWER                  ; 071
	const BATTLE_ANIM_FRAMESET_BARRAGE_BALL            ; 072
	const BATTLE_ANIM_FRAMESET_PAY_DAY                 ; 073
	const BATTLE_ANIM_FRAMESET_HEART                   ; 074
	const BATTLE_ANIM_FRAMESET_SPINNING_BONE           ; 075
	const BATTLE_ANIM_FRAMESET_STAR                    ; 076
	const BATTLE_ANIM_FRAMESET_SPOON                   ; 077
	const BATTLE_ANIM_FRAMESET_SPARKLE                 ; 078
	const BATTLE_ANIM_FRAMESET_SKY_ATTACK              ; 079
	const BATTLE_ANIM_FRAMESET_LICK                    ; 07a
	const BATTLE_ANIM_FRAMESET_WITHDRAW_SHELL          ; 07b
	const BATTLE_ANIM_FRAMESET_SHRINKING_CHARGE_ORB    ; 07c
	const BATTLE_ANIM_FRAMESET_CONVERSION              ; 07d
	const BATTLE_ANIM_FRAMESET_SWORD                   ; 07e
	const BATTLE_ANIM_FRAMESET_SPEED_LINE_1            ; 07f
	const BATTLE_ANIM_FRAMESET_SPEED_LINE_2            ; 080
	const BATTLE_ANIM_FRAMESET_SPEED_LINE_3            ; 081
	const BATTLE_ANIM_FRAMESET_SEISMIC_TOSS            ; 082
	const BATTLE_ANIM_FRAMESET_SHARPEN                 ; 083
	const BATTLE_ANIM_FRAMESET_DEFENSE_CURL            ; 084
	const BATTLE_ANIM_FRAMESET_METRONOME_HAND          ; 085
	const BATTLE_ANIM_FRAMESET_AGILITY                 ; 086
	const BATTLE_ANIM_FRAMESET_COTTON                  ; 087
	const BATTLE_ANIM_FRAMESET_MILK_BOTTLE             ; 088
	const BATTLE_ANIM_FRAMESET_SPIKE                   ; 089
	const BATTLE_ANIM_FRAMESET_ANGER_VEIN              ; 08a
	const BATTLE_ANIM_FRAMESET_HEAL_BELL               ; 08b
	const BATTLE_ANIM_FRAMESET_BATON_PASS              ; 08c
	const BATTLE_ANIM_FRAMESET_LOCK_ON_1               ; 08d
	const BATTLE_ANIM_FRAMESET_LOCK_ON_2               ; 08e
	const BATTLE_ANIM_FRAMESET_LOCK_ON_3               ; 08f
	const BATTLE_ANIM_FRAMESET_LOCK_ON_4               ; 090
	const BATTLE_ANIM_FRAMESET_MIND_READER_1           ; 091
	const BATTLE_ANIM_FRAMESET_MIND_READER_2           ; 092
	const BATTLE_ANIM_FRAMESET_MIND_READER_3           ; 093
	const BATTLE_ANIM_FRAMESET_MIND_READER_4           ; 094
	const BATTLE_ANIM_FRAMESET_SAFEGUARD               ; 095
	const BATTLE_ANIM_FRAMESET_FEATHER                 ; 096
	const BATTLE_ANIM_FRAMESET_ITEM_BAG                ; 097
	const BATTLE_ANIM_FRAMESET_SPIDER_WEB              ; 098
	const BATTLE_ANIM_FRAMESET_IMP                     ; 099
	const BATTLE_ANIM_FRAMESET_IMP_FLIPPED             ; 09a
	const BATTLE_ANIM_FRAMESET_CHERUB                  ; 09b
	const BATTLE_ANIM_FRAMESET_PENCIL                  ; 09c
	const BATTLE_ANIM_FRAMESET_ENCORE_HAND             ; 09d
	const BATTLE_ANIM_FRAMESET_ENCORE_HAND_FLIPPED     ; 09e
	const BATTLE_ANIM_FRAMESET_DESTINY_BOND            ; 09f
	const BATTLE_ANIM_FRAMESET_MORNING_SUN             ; 0a0
	const BATTLE_ANIM_FRAMESET_GLIMMER                 ; 0a1
	const BATTLE_ANIM_FRAMESET_MOONLIGHT               ; 0a2
	const BATTLE_ANIM_FRAMESET_CROSS_CHOP_1            ; 0a3
	const BATTLE_ANIM_FRAMESET_CROSS_CHOP_2            ; 0a4
	const BATTLE_ANIM_FRAMESET_ZAP_CANNON              ; 0a5
	const BATTLE_ANIM_FRAMESET_CURSE_NAIL              ; 0a6
	const BATTLE_ANIM_FRAMESET_FORESIGHT_SHINE         ; 0a7
	const BATTLE_ANIM_FRAMESET_RAPID_SPIN              ; 0a8
	const BATTLE_ANIM_FRAMESET_SWAGGER                 ; 0a9
	const BATTLE_ANIM_FRAMESET_MEAN_LOOK               ; 0aa
	const BATTLE_ANIM_FRAMESET_UPSIDE_DOWN_PUNCH       ; 0ab
	const BATTLE_ANIM_FRAMESET_GROWING_SPARKLE         ; 0ac
	const BATTLE_ANIM_FRAMESET_RAIN                    ; 0ad
	const BATTLE_ANIM_FRAMESET_PSYCH_UP                ; 0ae
	const BATTLE_ANIM_FRAMESET_AEROBLAST               ; 0af
	const BATTLE_ANIM_FRAMESET_SANDSTORM               ; 0b0
	const BATTLE_ANIM_FRAMESET_ENEMYFEET_1ROW          ; 0b1
	const BATTLE_ANIM_FRAMESET_PLAYERHEAD_1ROW         ; 0b2
	const BATTLE_ANIM_FRAMESET_ENEMYFEET_2ROW          ; 0b3
	const BATTLE_ANIM_FRAMESET_PLAYERHEAD_2ROW         ; 0b4
	; New Framesets
	const BATTLE_ANIM_FRAMESET_PALM_XFLIP              ; 0b5
	const BATTLE_ANIM_FRAMESET_MEDIUM_HORN             ; 0b6
	const BATTLE_ANIM_FRAMESET_MINIMIZE                ; 0b7
	const BATTLE_ANIM_FRAMESET_BUBBLE_SPLASH           ; 0b8
	const BATTLE_ANIM_FRAMESET_OCTAZOOKA_SMOKE         ; 0b9
	const BATTLE_ANIM_FRAMESET_INK_SPLASH              ; 0ba
	const BATTLE_ANIM_FRAMESET_SMELLINGSALT_L          ; 0bb
	const BATTLE_ANIM_FRAMESET_SMELLINGSALT_R          ; 0bc
	const BATTLE_ANIM_FRAMESET_SMELLINGSALT_SHOCK      ; 0bd
	const BATTLE_ANIM_FRAMESET_BIG_WAVE                ; 0be
	const BATTLE_ANIM_FRAMESET_UPROAR_NOTE             ; 0bf
	const BATTLE_ANIM_FRAMESET_ENERGY_ORB              ; 0c0
	const BATTLE_ANIM_FRAMESET_ENERGY_ORB_LONG         ; 0c1
	const BATTLE_ANIM_FRAMESET_TORMENT                 ; 0c2
	const BATTLE_ANIM_FRAMESET_DROPLET_R               ; 0c3
	const BATTLE_ANIM_FRAMESET_DROPLET_L               ; 0c4
	const BATTLE_ANIM_FRAMESET_LONG_PUNCH              ; 0c5
	const BATTLE_ANIM_FRAMESET_TAUNT                   ; 0c6
	const BATTLE_ANIM_FRAMESET_ITEM_BAG_SIDE_PUNCH     ; 0c7
	const BATTLE_ANIM_FRAMESET_COSMIC_POWER_BG         ; 0c8
	const BATTLE_ANIM_FRAMESET_ASSIST                  ; 0c9
	const BATTLE_ANIM_FRAMESET_ROOT_L                  ; 0ca
	const BATTLE_ANIM_FRAMESET_ROOT_R                  ; 0cb
	const BATTLE_ANIM_FRAMESET_ENERGY_ORB_INGRAIN      ; 0cc
	const BATTLE_ANIM_FRAMESET_RECYCLE                 ; 0cd
	const BATTLE_ANIM_FRAMESET_VERTICAL_CHOP           ; 0ce
	const BATTLE_ANIM_FRAMESET_DROWZINESS              ; 0cf
	const BATTLE_ANIM_FRAMESET_IMPRISON_RING           ; 0d0
	const BATTLE_ANIM_FRAMESET_BIG_RED_X_FLASHING      ; 0d1
	const BATTLE_ANIM_FRAMESET_SPARKLE_LONG            ; 0d2
	const BATTLE_ANIM_FRAMESET_SEISMIC_TOSS_FLIPPED    ; 0d3
	const BATTLE_ANIM_FRAMESET_SMALL_GLOW              ; 0d4
	const BATTLE_ANIM_FRAMESET_BIG_GLOW                ; 0d5
	const BATTLE_ANIM_FRAMESET_TEETER_DANCE            ; 0d6
	const BATTLE_ANIM_FRAMESET_BURNED_SHORT            ; 0d7
	const BATTLE_ANIM_FRAMESET_ICE_BALL                ; 0d8
	const BATTLE_ANIM_FRAMESET_NEEDLE_ARM_S            ; 0d9
	const BATTLE_ANIM_FRAMESET_NEEDLE_ARM_SW           ; 0da
	const BATTLE_ANIM_FRAMESET_NEEDLE_ARM_W            ; 0db
	const BATTLE_ANIM_FRAMESET_NEEDLE_ARM_NW           ; 0dc
	const BATTLE_ANIM_FRAMESET_NEEDLE_ARM_N            ; 0dd
	const BATTLE_ANIM_FRAMESET_NEEDLE_ARM_NE           ; 0de
	const BATTLE_ANIM_FRAMESET_NEEDLE_ARM_E            ; 0df
	const BATTLE_ANIM_FRAMESET_NEEDLE_ARM_SE           ; 0e0
	const BATTLE_ANIM_FRAMESET_CLAW_TEAR               ; 0e1
	const BATTLE_ANIM_FRAMESET_BLAST_BURN              ; 0e2
	const BATTLE_ANIM_FRAMESET_VORTEX                  ; 0e3
	const BATTLE_ANIM_FRAMESET_SHRINKING_GLOW          ; 0e4
	const BATTLE_ANIM_FRAMESET_WEATHER_BALL            ; 0e5
	const BATTLE_ANIM_FRAMESET_AIR_CUTTER              ; 0e6
	const BATTLE_ANIM_FRAMESET_GRASS_WHISTLE_LEAF      ; 0e7
	const BATTLE_ANIM_FRAMESET_WATER_SPOUT_RISING      ; 0e8
	const BATTLE_ANIM_FRAMESET_WATER_SPOUT_FALLING     ; 0e9
	const BATTLE_ANIM_FRAMESET_TINY_GLOW               ; 0ea
	const BATTLE_ANIM_FRAMESET_VERTICAL_AGILITY        ; 0eb
	const BATTLE_ANIM_FRAMESET_LONG_HIT                ; 0ec
	const BATTLE_ANIM_FRAMESET_BIG_RED_X               ; 0ed
	const BATTLE_ANIM_FRAMESET_FRENZY_PLANT_L          ; 0ee
	const BATTLE_ANIM_FRAMESET_FRENZY_PLANT_R          ; 0ef
	const BATTLE_ANIM_FRAMESET_BULK_UP                 ; 0f0
	const BATTLE_ANIM_FRAMESET_BLUR_VERTICAL_UP        ; 0f1
	const BATTLE_ANIM_FRAMESET_BLUR_VERTICAL_DOWN      ; 0f2
	const BATTLE_ANIM_FRAMESET_MUD_SHOT                ; 0f3
	const BATTLE_ANIM_FRAMESET_VOLT_TACKLE_SPARKS      ; 0f4
	const BATTLE_ANIM_FRAMESET_SHRINKING_RING          ; 0f5
	const BATTLE_ANIM_FRAMESET_SHRINKING_RING_BIG      ; 0f6
	const BATTLE_ANIM_FRAMESET_CUT_LONG_UP_RIGHT       ; 0f7
	const BATTLE_ANIM_FRAMESET_CUT_LONG_UP_LEFT        ; 0f8
	const BATTLE_ANIM_FRAMESET_PULSING_ENERGY_ORB_BIG  ; 0f9
	const BATTLE_ANIM_FRAMESET_SHOCK_WAVE_SPARKS       ; 0fa
	const BATTLE_ANIM_FRAMESET_EXPLOSION_SMALL         ; 0fb
	const BATTLE_ANIM_FRAMESET_POISON_DROPLET          ; 0fc
	const BATTLE_ANIM_FRAMESET_SONICBOOM_JP            ; 0fd
	const BATTLE_ANIM_FRAMESET_BOUNCING_MUSHROOM       ; 0fe
	const BATTLE_ANIM_FRAMESET_SPINNING_TRIANGLE       ; 0ff
	const BATTLE_ANIM_FRAMESET_SPINNING_TRIANGLE_SLOW  ; 100
	const BATTLE_ANIM_FRAMESET_STONE_EDGE              ; 101
	const BATTLE_ANIM_FRAMESET_CHARGE_BEAM             ; 102
	const BATTLE_ANIM_FRAMESET_CUT_RIGHT               ; 103
	const BATTLE_ANIM_FRAMESET_CUT_LEFT                ; 104
	const BATTLE_ANIM_FRAMESET_ROCK_WRECKER_GROW       ; 105
	const BATTLE_ANIM_FRAMESET_GUNK_SHOT               ; 106
	const BATTLE_ANIM_FRAMESET_BIG_WHIP                ; 107
DEF NUM_BATTLE_ANIM_FRAMESETS EQU const_value

; BattleAnimOAMData indexes (see data/battle_anims/oam.asm)
	const_def
	const BATTLE_ANIM_OAMSET_000
	const BATTLE_ANIM_OAMSET_001
	const BATTLE_ANIM_OAMSET_002
	const BATTLE_ANIM_OAMSET_003
	const BATTLE_ANIM_OAMSET_004
	const BATTLE_ANIM_OAMSET_005
	const BATTLE_ANIM_OAMSET_006
	const BATTLE_ANIM_OAMSET_007
	const BATTLE_ANIM_OAMSET_008
	const BATTLE_ANIM_OAMSET_009
	const BATTLE_ANIM_OAMSET_00A
	const BATTLE_ANIM_OAMSET_00B
	const BATTLE_ANIM_OAMSET_00C
	const BATTLE_ANIM_OAMSET_00D
	const BATTLE_ANIM_OAMSET_00E
	const BATTLE_ANIM_OAMSET_00F
	const BATTLE_ANIM_OAMSET_010
	const BATTLE_ANIM_OAMSET_011
	const BATTLE_ANIM_OAMSET_012
	const BATTLE_ANIM_OAMSET_013
	const BATTLE_ANIM_OAMSET_014
	const BATTLE_ANIM_OAMSET_015
	const BATTLE_ANIM_OAMSET_016
	const BATTLE_ANIM_OAMSET_017
	const BATTLE_ANIM_OAMSET_018
	const BATTLE_ANIM_OAMSET_019
	const BATTLE_ANIM_OAMSET_01A
	const BATTLE_ANIM_OAMSET_01B
	const BATTLE_ANIM_OAMSET_01C
	const BATTLE_ANIM_OAMSET_01D
	const BATTLE_ANIM_OAMSET_01E
	const BATTLE_ANIM_OAMSET_01F
	const BATTLE_ANIM_OAMSET_020
	const BATTLE_ANIM_OAMSET_021
	const BATTLE_ANIM_OAMSET_022
	const BATTLE_ANIM_OAMSET_023
	const BATTLE_ANIM_OAMSET_024
	const BATTLE_ANIM_OAMSET_025
	const BATTLE_ANIM_OAMSET_026
	const BATTLE_ANIM_OAMSET_027
	const BATTLE_ANIM_OAMSET_028
	const BATTLE_ANIM_OAMSET_029
	const BATTLE_ANIM_OAMSET_02A
	const BATTLE_ANIM_OAMSET_02B
	const BATTLE_ANIM_OAMSET_02C
	const BATTLE_ANIM_OAMSET_02D
	const BATTLE_ANIM_OAMSET_02E
	const BATTLE_ANIM_OAMSET_02F
	const BATTLE_ANIM_OAMSET_030
	const BATTLE_ANIM_OAMSET_031
	const BATTLE_ANIM_OAMSET_032
	const BATTLE_ANIM_OAMSET_033
	const BATTLE_ANIM_OAMSET_034
	const BATTLE_ANIM_OAMSET_035
	const BATTLE_ANIM_OAMSET_036
	const BATTLE_ANIM_OAMSET_037
	const BATTLE_ANIM_OAMSET_038
	const BATTLE_ANIM_OAMSET_039
	const BATTLE_ANIM_OAMSET_03A
	const BATTLE_ANIM_OAMSET_03B
	const BATTLE_ANIM_OAMSET_03C
	const BATTLE_ANIM_OAMSET_03D
	const BATTLE_ANIM_OAMSET_03E
	const BATTLE_ANIM_OAMSET_03F
	const BATTLE_ANIM_OAMSET_040
	const BATTLE_ANIM_OAMSET_041
	const BATTLE_ANIM_OAMSET_042
	const BATTLE_ANIM_OAMSET_043
	const BATTLE_ANIM_OAMSET_044
	const BATTLE_ANIM_OAMSET_045
	const BATTLE_ANIM_OAMSET_046
	const BATTLE_ANIM_OAMSET_047
	const BATTLE_ANIM_OAMSET_048
	const BATTLE_ANIM_OAMSET_049
	const BATTLE_ANIM_OAMSET_04A
	const BATTLE_ANIM_OAMSET_04B
	const BATTLE_ANIM_OAMSET_04C
	const BATTLE_ANIM_OAMSET_04D
	const BATTLE_ANIM_OAMSET_04E
	const BATTLE_ANIM_OAMSET_04F
	const BATTLE_ANIM_OAMSET_050
	const BATTLE_ANIM_OAMSET_051
	const BATTLE_ANIM_OAMSET_052
	const BATTLE_ANIM_OAMSET_053
	const BATTLE_ANIM_OAMSET_054
	const BATTLE_ANIM_OAMSET_055
	const BATTLE_ANIM_OAMSET_056
	const BATTLE_ANIM_OAMSET_057
	const BATTLE_ANIM_OAMSET_058
	const BATTLE_ANIM_OAMSET_059
	const BATTLE_ANIM_OAMSET_05A
	const BATTLE_ANIM_OAMSET_05B
	const BATTLE_ANIM_OAMSET_05C
	const BATTLE_ANIM_OAMSET_05D
	const BATTLE_ANIM_OAMSET_05E
	const BATTLE_ANIM_OAMSET_05F
	const BATTLE_ANIM_OAMSET_060
	const BATTLE_ANIM_OAMSET_061
	const BATTLE_ANIM_OAMSET_062
	const BATTLE_ANIM_OAMSET_063
	const BATTLE_ANIM_OAMSET_064
	const BATTLE_ANIM_OAMSET_065
	const BATTLE_ANIM_OAMSET_066
	const BATTLE_ANIM_OAMSET_067
	const BATTLE_ANIM_OAMSET_068
	const BATTLE_ANIM_OAMSET_069
	const BATTLE_ANIM_OAMSET_06A
	const BATTLE_ANIM_OAMSET_06B
	const BATTLE_ANIM_OAMSET_06C
	const BATTLE_ANIM_OAMSET_06D
	const BATTLE_ANIM_OAMSET_06E
	const BATTLE_ANIM_OAMSET_06F
	const BATTLE_ANIM_OAMSET_070
	const BATTLE_ANIM_OAMSET_071
	const BATTLE_ANIM_OAMSET_072
	const BATTLE_ANIM_OAMSET_073
	const BATTLE_ANIM_OAMSET_074
	const BATTLE_ANIM_OAMSET_075
	const BATTLE_ANIM_OAMSET_076
	const BATTLE_ANIM_OAMSET_077
	const BATTLE_ANIM_OAMSET_078
	const BATTLE_ANIM_OAMSET_079
	const BATTLE_ANIM_OAMSET_07A
	const BATTLE_ANIM_OAMSET_07B
	const BATTLE_ANIM_OAMSET_07C
	const BATTLE_ANIM_OAMSET_07D
	const BATTLE_ANIM_OAMSET_07E
	const BATTLE_ANIM_OAMSET_07F
	const BATTLE_ANIM_OAMSET_080
	const BATTLE_ANIM_OAMSET_081
	const BATTLE_ANIM_OAMSET_082
	const BATTLE_ANIM_OAMSET_083
	const BATTLE_ANIM_OAMSET_084
	const BATTLE_ANIM_OAMSET_085
	const BATTLE_ANIM_OAMSET_086
	const BATTLE_ANIM_OAMSET_087
	const BATTLE_ANIM_OAMSET_088
	const BATTLE_ANIM_OAMSET_089
	const BATTLE_ANIM_OAMSET_08A
	const BATTLE_ANIM_OAMSET_08B
	const BATTLE_ANIM_OAMSET_08C
	const BATTLE_ANIM_OAMSET_08D
	const BATTLE_ANIM_OAMSET_08E
	const BATTLE_ANIM_OAMSET_08F
	const BATTLE_ANIM_OAMSET_090
	const BATTLE_ANIM_OAMSET_091
	const BATTLE_ANIM_OAMSET_092
	const BATTLE_ANIM_OAMSET_093
	const BATTLE_ANIM_OAMSET_094
	const BATTLE_ANIM_OAMSET_095
	const BATTLE_ANIM_OAMSET_096
	const BATTLE_ANIM_OAMSET_097
	const BATTLE_ANIM_OAMSET_098
	const BATTLE_ANIM_OAMSET_099
	const BATTLE_ANIM_OAMSET_09A
	const BATTLE_ANIM_OAMSET_09B
	const BATTLE_ANIM_OAMSET_09C
	const BATTLE_ANIM_OAMSET_09D
	const BATTLE_ANIM_OAMSET_09E
	const BATTLE_ANIM_OAMSET_09F
	const BATTLE_ANIM_OAMSET_0A0
	const BATTLE_ANIM_OAMSET_0A1
	const BATTLE_ANIM_OAMSET_0A2
	const BATTLE_ANIM_OAMSET_0A3
	const BATTLE_ANIM_OAMSET_0A4
	const BATTLE_ANIM_OAMSET_0A5
	const BATTLE_ANIM_OAMSET_0A6
	const BATTLE_ANIM_OAMSET_0A7
	const BATTLE_ANIM_OAMSET_0A8
	const BATTLE_ANIM_OAMSET_0A9
	const BATTLE_ANIM_OAMSET_0AA
	const BATTLE_ANIM_OAMSET_0AB
	const BATTLE_ANIM_OAMSET_0AC
	const BATTLE_ANIM_OAMSET_0AD
	const BATTLE_ANIM_OAMSET_0AE
	const BATTLE_ANIM_OAMSET_0AF
	const BATTLE_ANIM_OAMSET_0B0
	const BATTLE_ANIM_OAMSET_0B1
	const BATTLE_ANIM_OAMSET_0B2
	const BATTLE_ANIM_OAMSET_0B3
	const BATTLE_ANIM_OAMSET_0B4
	const BATTLE_ANIM_OAMSET_0B5
	const BATTLE_ANIM_OAMSET_0B6
	const BATTLE_ANIM_OAMSET_0B7
	const BATTLE_ANIM_OAMSET_0B8
	const BATTLE_ANIM_OAMSET_0B9
	const BATTLE_ANIM_OAMSET_0BA
	const BATTLE_ANIM_OAMSET_0BB
	const BATTLE_ANIM_OAMSET_0BC
	const BATTLE_ANIM_OAMSET_0BD
	const BATTLE_ANIM_OAMSET_0BE
	const BATTLE_ANIM_OAMSET_0BF
	const BATTLE_ANIM_OAMSET_0C0
	const BATTLE_ANIM_OAMSET_0C1
	const BATTLE_ANIM_OAMSET_0C2
	const BATTLE_ANIM_OAMSET_0C3
	const BATTLE_ANIM_OAMSET_0C4
	const BATTLE_ANIM_OAMSET_0C5
	const BATTLE_ANIM_OAMSET_0C6
	const BATTLE_ANIM_OAMSET_0C7
	const BATTLE_ANIM_OAMSET_0C8
	const BATTLE_ANIM_OAMSET_0C9
	const BATTLE_ANIM_OAMSET_0CA
	const BATTLE_ANIM_OAMSET_0CB
	const BATTLE_ANIM_OAMSET_0CC
	const BATTLE_ANIM_OAMSET_0CD
	const BATTLE_ANIM_OAMSET_0CE
	const BATTLE_ANIM_OAMSET_0CF
	const BATTLE_ANIM_OAMSET_0D0
	const BATTLE_ANIM_OAMSET_0D1
	const BATTLE_ANIM_OAMSET_0D2
	const BATTLE_ANIM_OAMSET_0D3
	const BATTLE_ANIM_OAMSET_0D4
	const BATTLE_ANIM_OAMSET_0D5
	const BATTLE_ANIM_OAMSET_0D6
	const BATTLE_ANIM_OAMSET_0D7
    ; New Oams
	const BATTLE_ANIM_OAMSET_0D8
	const BATTLE_ANIM_OAMSET_0D9
	const BATTLE_ANIM_OAMSET_0DA
	const BATTLE_ANIM_OAMSET_0DB
	const BATTLE_ANIM_OAMSET_0DC
	const BATTLE_ANIM_OAMSET_0DD
	const BATTLE_ANIM_OAMSET_0DE
	const BATTLE_ANIM_OAMSET_0DF
	const BATTLE_ANIM_OAMSET_0E0
	const BATTLE_ANIM_OAMSET_0E1
	const BATTLE_ANIM_OAMSET_0E2
	const BATTLE_ANIM_OAMSET_0E3
	const BATTLE_ANIM_OAMSET_0E4
	const BATTLE_ANIM_OAMSET_0E5
	const BATTLE_ANIM_OAMSET_0E6
	const BATTLE_ANIM_OAMSET_0E7
	const BATTLE_ANIM_OAMSET_0E8
	const BATTLE_ANIM_OAMSET_0E9
	const BATTLE_ANIM_OAMSET_0EA
	const BATTLE_ANIM_OAMSET_0EB
	const BATTLE_ANIM_OAMSET_0EC
	const BATTLE_ANIM_OAMSET_0ED
	const BATTLE_ANIM_OAMSET_0EE
	const BATTLE_ANIM_OAMSET_0EF
	const BATTLE_ANIM_OAMSET_0F0
	const BATTLE_ANIM_OAMSET_0F1
	const BATTLE_ANIM_OAMSET_0F2
	const BATTLE_ANIM_OAMSET_0F3
	const BATTLE_ANIM_OAMSET_0F4
	const BATTLE_ANIM_OAMSET_0F5
	const BATTLE_ANIM_OAMSET_0F6
	const BATTLE_ANIM_OAMSET_0F7
	const BATTLE_ANIM_OAMSET_0F8
	const BATTLE_ANIM_OAMSET_0F9
	const BATTLE_ANIM_OAMSET_0FA
	const BATTLE_ANIM_OAMSET_0FB
	const BATTLE_ANIM_OAMSET_0FC
	const BATTLE_ANIM_OAMSET_0FD
	const BATTLE_ANIM_OAMSET_0FE
	const BATTLE_ANIM_OAMSET_0FF
	const BATTLE_ANIM_OAMSET_100
	const BATTLE_ANIM_OAMSET_101
	const BATTLE_ANIM_OAMSET_102
	const BATTLE_ANIM_OAMSET_103
	const BATTLE_ANIM_OAMSET_104
	const BATTLE_ANIM_OAMSET_105
	const BATTLE_ANIM_OAMSET_106
	const BATTLE_ANIM_OAMSET_107
	const BATTLE_ANIM_OAMSET_108
	const BATTLE_ANIM_OAMSET_109
	const BATTLE_ANIM_OAMSET_10A
	const BATTLE_ANIM_OAMSET_10B
	
DEF NUM_BATTLE_ANIM_OAMSETS EQU const_value

assert NUM_BATTLE_ANIM_OAMSETS <= FIRST_BATTLE_OAM_CMD, \
	"BATTLE_ANIM_OAMSET_* constants overlap oam*_command constants"

; BattleBGEffects indexes (see engine/battle_anims/bg_effects.asm)
	const_def 1
	const BATTLE_BG_EFFECT_FLASH_INVERTED                           ; 01
	const BATTLE_BG_EFFECT_FLASH_WHITE                              ; 02
	const BATTLE_BG_EFFECT_WHITE_HUES                               ; 03
	const BATTLE_BG_EFFECT_BLACK_HUES                               ; 04
	const BATTLE_BG_EFFECT_ALTERNATE_HUES                           ; 05
	const BATTLE_BG_EFFECT_CYCLE_OBPALS_GRAY_AND_YELLOW             ; 06
	const BATTLE_BG_EFFECT_CYCLE_MID_OBPALS_GRAY_AND_YELLOW         ; 07
	const BATTLE_BG_EFFECT_CYCLE_BGPALS_INVERTED                    ; 08
	const BATTLE_BG_EFFECT_HIDE_MON                                 ; 09
	const BATTLE_BG_EFFECT_SHOW_MON                                 ; 0a
	const BATTLE_BG_EFFECT_ENTER_MON                                ; 0b
	const BATTLE_BG_EFFECT_RETURN_MON                               ; 0c
	const BATTLE_BG_EFFECT_SURF                                     ; 0d
	const BATTLE_BG_EFFECT_WHIRLPOOL                                ; 0e
	const BATTLE_BG_EFFECT_TELEPORT                                 ; 0f
	const BATTLE_BG_EFFECT_NIGHT_SHADE                              ; 10
	const BATTLE_BG_EFFECT_BATTLEROBJ_1ROW                          ; 11
	const BATTLE_BG_EFFECT_BATTLEROBJ_2ROW                          ; 12
	const BATTLE_BG_EFFECT_DOUBLE_TEAM                              ; 13
	const BATTLE_BG_EFFECT_ACID_ARMOR                               ; 14
	const BATTLE_BG_EFFECT_RAPID_FLASH                              ; 15
	const BATTLE_BG_EFFECT_FADE_MON_TO_LIGHT                        ; 16
	const BATTLE_BG_EFFECT_FADE_MON_TO_BLACK                        ; 17
	const BATTLE_BG_EFFECT_FADE_MON_TO_LIGHT_REPEATING              ; 18
	const BATTLE_BG_EFFECT_FADE_MON_TO_BLACK_REPEATING              ; 19
	const BATTLE_BG_EFFECT_CYCLE_MON_LIGHT_DARK_REPEATING           ; 1a
	const BATTLE_BG_EFFECT_FLASH_MON_REPEATING                      ; 1b
	const BATTLE_BG_EFFECT_FADE_MONS_TO_BLACK_REPEATING             ; 1c
	const BATTLE_BG_EFFECT_FADE_MON_TO_WHITE_WAIT_FADE_BACK         ; 1d
	const BATTLE_BG_EFFECT_FADE_MON_FROM_WHITE                      ; 1e
	const BATTLE_BG_EFFECT_SHAKE_SCREEN_X                           ; 1f
	const BATTLE_BG_EFFECT_SHAKE_SCREEN_Y                           ; 20
	const BATTLE_BG_EFFECT_WITHDRAW                                 ; 21
	const BATTLE_BG_EFFECT_BOUNCE_DOWN                              ; 22
	const BATTLE_BG_EFFECT_DIG                                      ; 23
	const BATTLE_BG_EFFECT_TACKLE                                   ; 24
	const BATTLE_BG_EFFECT_BODY_SLAM                                ; 25
	const BATTLE_BG_EFFECT_WOBBLE_MON                               ; 26
	const BATTLE_BG_EFFECT_REMOVE_MON                               ; 27
	const BATTLE_BG_EFFECT_WAVE_DEFORM_MON                          ; 28
	const BATTLE_BG_EFFECT_PSYCHIC                                  ; 29
	const BATTLE_BG_EFFECT_BETA_SEND_OUT_MON1                       ; 2a
	const BATTLE_BG_EFFECT_BETA_SEND_OUT_MON2                       ; 2b
	const BATTLE_BG_EFFECT_FLAIL                                    ; 2c
	const BATTLE_BG_EFFECT_ROLLOUT                                  ; 2d
	const BATTLE_BG_EFFECT_VITAL_THROW                              ; 2e
	const BATTLE_BG_EFFECT_START_WATER                              ; 2f
	const BATTLE_BG_EFFECT_WATER                                    ; 30
	const BATTLE_BG_EFFECT_END_WATER                                ; 31
	const BATTLE_BG_EFFECT_VIBRATE_MON                              ; 32
	const BATTLE_BG_EFFECT_WOBBLE_PLAYER                            ; 33
	const BATTLE_BG_EFFECT_WOBBLE_SCREEN                            ; 34
	const BATTLE_BG_EFFECT_CYCLE_OBPALS_GRAY_AND_YELLOW_FULL_SHIFT  ; 35
DEF NUM_BATTLE_BG_EFFECTS EQU const_value - 1

; wBattleAnimTileDict keys (see wram.asm)
; AnimObjGFX indexes (see data/battle_anims/object_gfx.asm)
	const_def 1
	const BATTLE_ANIM_GFX_HIT              ; 01
	const BATTLE_ANIM_GFX_CUT              ; 02
	const BATTLE_ANIM_GFX_FIRE             ; 03
	const BATTLE_ANIM_GFX_WATER            ; 04
	const BATTLE_ANIM_GFX_LIGHTNING        ; 05
	const BATTLE_ANIM_GFX_PLANT            ; 06
	const BATTLE_ANIM_GFX_SMOKE            ; 07
	const BATTLE_ANIM_GFX_EXPLOSION        ; 08
	const BATTLE_ANIM_GFX_ROCKS            ; 09
	const BATTLE_ANIM_GFX_ICE              ; 0a
	const BATTLE_ANIM_GFX_POKE_BALL        ; 0b
	const BATTLE_ANIM_GFX_POISON           ; 0c
	const BATTLE_ANIM_GFX_BUBBLE           ; 0d
	const BATTLE_ANIM_GFX_NOISE            ; 0e
	const BATTLE_ANIM_GFX_POWDER           ; 0f
	const BATTLE_ANIM_GFX_BEAM             ; 10
	const BATTLE_ANIM_GFX_SPEED            ; 11
	const BATTLE_ANIM_GFX_CHARGE           ; 12
	const BATTLE_ANIM_GFX_WIND             ; 13
	const BATTLE_ANIM_GFX_WHIP             ; 14
	const BATTLE_ANIM_GFX_EGG              ; 15
	const BATTLE_ANIM_GFX_ROPE             ; 16
	const BATTLE_ANIM_GFX_PSYCHIC          ; 17
	const BATTLE_ANIM_GFX_REFLECT          ; 18
	const BATTLE_ANIM_GFX_STATUS           ; 19
	const BATTLE_ANIM_GFX_SAND             ; 1a
	const BATTLE_ANIM_GFX_WEB              ; 1b
	const BATTLE_ANIM_GFX_HAZE             ; 1c
	const BATTLE_ANIM_GFX_HORN             ; 1d
	const BATTLE_ANIM_GFX_FLOWER           ; 1e
	const BATTLE_ANIM_GFX_MISC_1           ; 1f
	const BATTLE_ANIM_GFX_SKY_ATTACK       ; 20
	const BATTLE_ANIM_GFX_GLOBE            ; 21
	const BATTLE_ANIM_GFX_SHAPES           ; 22
	const BATTLE_ANIM_GFX_OBJECTS          ; 23
	const BATTLE_ANIM_GFX_SHINE            ; 24
	const BATTLE_ANIM_GFX_ANGELS           ; 25
	const BATTLE_ANIM_GFX_WAVE             ; 26
	const BATTLE_ANIM_GFX_AEROBLAST        ; 27
	const BATTLE_ANIM_GFX_PLAYERHEAD       ; 28
	const BATTLE_ANIM_GFX_ENEMYFEET        ; 29
	; New Graphics
	const BATTLE_ANIM_GFX_BEAM_LIGHT       ; 2a
	const BATTLE_ANIM_GFX_WIND_BG          ; 2b
	const BATTLE_ANIM_GFX_MISC_2           ; 2c
	const BATTLE_ANIM_GFX_SMOKE_PUFF       ; 2d
	const BATTLE_ANIM_GFX_FLATTER          ; 2e
	const BATTLE_ANIM_GFX_TAUNT            ; 2f
	const BATTLE_ANIM_GFX_STARS            ; 2f
	const BATTLE_ANIM_GFX_COSMIC_POWER     ; 30
	const BATTLE_ANIM_GFX_ROOTS            ; 31
	const BATTLE_ANIM_GFX_RECYCLE          ; 32
	const BATTLE_ANIM_GFX_LAVA_ROCKS       ; 33
	const BATTLE_ANIM_GFX_SNATCH           ; 34
	const BATTLE_ANIM_GFX_GLOW             ; 35
	const BATTLE_ANIM_GFX_BIG_GLOW         ; 36
	const BATTLE_ANIM_GFX_TEAR             ; 37
	const BATTLE_ANIM_GFX_BLAST_BURN       ; 38
	const BATTLE_ANIM_GFX_VORTEX           ; 39
	const BATTLE_ANIM_GFX_HYDRO_CANNON     ; 3a
	const BATTLE_ANIM_GFX_WEATHER_BALL     ; 3b
	const BATTLE_ANIM_GFX_FRENZY_PLANT     ; 3c
	const BATTLE_ANIM_GFX_BULK_UP          ; 3d
	const BATTLE_ANIM_GFX_BLUR             ; 3e
	const BATTLE_ANIM_GFX_RING             ; 3f
	const BATTLE_ANIM_GFX_RING_BIG         ; 40
	const BATTLE_ANIM_GFX_EXPLOSION_SMALL  ; 41
	const BATTLE_ANIM_GFX_MUSHROOM         ; 42
	const BATTLE_ANIM_GFX_TRIANGLE         ; 43
	const BATTLE_ANIM_GFX_HUGE_ROCK        ; 44
	const BATTLE_ANIM_GFX_BIG_WHIP         ; 45
DEF NUM_BATTLE_ANIM_GFX EQU const_value - 1

; battle_bg_effect struct members (see macros/ram.asm)
rsreset
DEF BG_EFFECT_STRUCT_FUNCTION    rb
DEF BG_EFFECT_STRUCT_JT_INDEX    rb
DEF BG_EFFECT_STRUCT_BATTLE_TURN rb
DEF BG_EFFECT_STRUCT_PARAM       rb
DEF BG_EFFECT_STRUCT_LENGTH EQU _RS
DEF NUM_BG_EFFECTS EQU 5 ; see wActiveBGEffects

; anim_bgeffect battle turn values for some effects
	const_def
	const BG_EFFECT_TARGET ; 0
	const BG_EFFECT_USER   ; 1

; battle palettes
	const_def
	const PAL_BATTLE_BG_PLAYER    ; 0
	const PAL_BATTLE_BG_ENEMY     ; 1
	const PAL_BATTLE_BG_ENEMY_HP  ; 2
	const PAL_BATTLE_BG_PLAYER_HP ; 3
	const PAL_BATTLE_BG_EXP       ; 4
	const PAL_BATTLE_BG_5         ; 5
	const PAL_BATTLE_BG_6         ; 6
	const PAL_BATTLE_BG_TEXT      ; 7
; sentinel palette indices that denote "user" or "target" for battle pics
; (anim_setbgpal applies them to the relevant obj palettes too)
	const PAL_BATTLE_BG_USER       ; 8
	const PAL_BATTLE_BG_TARGET     ; 9

; animation object palettes
	const_def
	const PAL_BATTLE_OB_ENEMY  ; 0
	const PAL_BATTLE_OB_PLAYER ; 1
	const PAL_BATTLE_OB_GRAY   ; 2
	const PAL_BATTLE_OB_YELLOW ; 3
	const PAL_BATTLE_OB_RED    ; 4
	const PAL_BATTLE_OB_GREEN  ; 5
	const PAL_BATTLE_OB_BLUE   ; 6
	const PAL_BATTLE_OB_BROWN  ; 7

; custom bg/obj palettes (see gfx/battle_anims/custom.pal)
; the first 6 matches PAL_BATTLE_OB_GRAY/YELLOW/...
	const_def
	const PAL_BTLCUSTOM_GRAY               ; 00
	const PAL_BTLCUSTOM_YELLOW             ; 01
	const PAL_BTLCUSTOM_RED                ; 02
	const PAL_BTLCUSTOM_GREEN              ; 03
	const PAL_BTLCUSTOM_BLUE               ; 04
	const PAL_BTLCUSTOM_BROWN              ; 05
	const PAL_BTLCUSTOM_PURPLE             ; 06
	const PAL_BTLCUSTOM_ICE                ; 07
	const PAL_BTLCUSTOM_FIRE               ; 08
	const PAL_BTLCUSTOM_WATER              ; 09
	const PAL_BTLCUSTOM_BUBBLE             ; 0a
	const PAL_BTLCUSTOM_AURORA             ; 0b
	const PAL_BTLCUSTOM_GLOBE              ; 0c
	const PAL_BTLCUSTOM_SPORE              ; 0d
	const PAL_BTLCUSTOM_DRAGON_RAGE        ; 0e
	const PAL_BTLCUSTOM_DRAGONBREATH       ; 0f
	const PAL_BTLCUSTOM_LIGHT_SCREEN       ; 10
	const PAL_BTLCUSTOM_PEACH              ; 11
	const PAL_BTLCUSTOM_MIRROR_COAT        ; 12
	const PAL_BTLCUSTOM_HEAT_WAVE          ; 13
	const PAL_BTLCUSTOM_WILL_O_WISP        ; 14
	const PAL_BTLCUSTOM_COSMIC             ; 15
	const PAL_BTLCUSTOM_RECYCLE            ; 16
	const PAL_BTLCUSTOM_LAVA_ROCKS         ; 17
	const PAL_BTLCUSTOM_SKILL_SWAP         ; 18
	const PAL_BTLCUSTOM_REFRESH            ; 19
	const PAL_BTLCUSTOM_GLOW_YELLOW        ; 1a
	const PAL_BTLCUSTOM_GLOW_LUSTER        ; 1b
	const PAL_BTLCUSTOM_VERY_BRIGHT        ; 1c
	const PAL_BTLCUSTOM_BRIGHT             ; 1d
	const PAL_BTLCUSTOM_CHARRED            ; 1e
	const PAL_BTLCUSTOM_GRASSWHISTLE       ; 1f
	const PAL_BTLCUSTOM_SIGNAL_BEAM_RED    ; 20
	const PAL_BTLCUSTOM_SIGNAL_BEAM_BLUE   ; 21
	const PAL_BTLCUSTOM_BULK_UP            ; 22
	const PAL_BTLCUSTOM_PSYCHO_BOOST_1     ; 23
	const PAL_BTLCUSTOM_PSYCHO_BOOST_2     ; 24
	const PAL_BTLCUSTOM_ACID               ; 25
	const PAL_BTLCUSTOM_REFLECT            ; 25
	const PAL_BTLCUSTOM_MYSTICAL           ; 26
	const PAL_BTLCUSTOM_DRAGON_PULSE       ; 27
DEF NUM_CUSTOM_BATTLE_PALETTES EQU const_value

DEF PAL_BTLCUSTOM_DEFAULT EQU -1
