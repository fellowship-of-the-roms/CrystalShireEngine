; Characteristics of each move.

MACRO move
	; the animation byte will be filled when the move is loaded
	db \1 ; effect
	db \2 ; power
	db \3 ; type
	db \4 percent ; accuracy
	db \5 ; pp
	db \6 percent ; effect chance
	assert \5 <= 40, "PP must be 40 or less"
ENDM

Moves::
; entries correspond to constants/move_constants.asm
	indirect_table MOVE_LENGTH - 1, 1
	indirect_entries GEN1_MOVES, MovesGen1
	indirect_entries GEN2_MOVES, MovesGen2
	indirect_table_end

PUSHS

SECTION "Moves Gen 1", ROMX

MovesGen1:
	move EFFECT_NORMAL_HIT,         40, NORMAL,        100, 35,   0      ;POUND
	move EFFECT_NORMAL_HIT,         50, FIGHTING,      100, 25,   0      ;KARATE_CHOP
	move EFFECT_MULTI_HIT,          15, NORMAL,         85, 10,   0      ;DOUBLESLAP
	move EFFECT_MULTI_HIT,          18, NORMAL,         85, 15,   0      ;COMET_PUNCH
	move EFFECT_NORMAL_HIT,         80, NORMAL,         85, 20,   0      ;MEGA_PUNCH
	move EFFECT_PAY_DAY,            40, NORMAL,        100, 20,   0      ;PAY_DAY
	move EFFECT_BURN_HIT,           75, FIRE,          100, 15,  10      ;FIRE_PUNCH
	move EFFECT_FREEZE_HIT,         75, ICE,           100, 15,  10      ;ICE_PUNCH
	move EFFECT_PARALYZE_HIT,       75, ELECTRIC,      100, 15,  10      ;THUNDERPUNCH
	move EFFECT_NORMAL_HIT,         40, NORMAL,        100, 35,   0      ;SCRATCH
	move EFFECT_NORMAL_HIT,         55, NORMAL,        100, 30,   0      ;VICEGRIP
	move EFFECT_OHKO,                0, NORMAL,         30,  5,   0      ;GUILLOTINE
	move EFFECT_RAZOR_WIND,         80, NORMAL,         75, 10,   0      ;RAZOR_WIND
	move EFFECT_ATTACK_UP_2,         0, NORMAL,        100, 30,   0      ;SWORDS_DANCE
	move EFFECT_NORMAL_HIT,         50, NORMAL,         95, 30,   0      ;CUT
	move EFFECT_GUST,               40, FLYING,        100, 35,   0      ;GUST
	move EFFECT_NORMAL_HIT,         60, FLYING,        100, 35,   0      ;WING_ATTACK
	move EFFECT_FORCE_SWITCH,        0, NORMAL,        100, 20,   0      ;WHIRLWIND
	move EFFECT_FLY,                70, FLYING,         95, 15,   0      ;FLY
	move EFFECT_TRAP_TARGET,        15, NORMAL,         75, 20,   0      ;BIND
	move EFFECT_NORMAL_HIT,         80, NORMAL,         75, 20,   0      ;SLAM
	move EFFECT_NORMAL_HIT,         35, GRASS,         100, 10,   0      ;VINE_WHIP
	move EFFECT_STOMP,              65, NORMAL,        100, 20,  30      ;STOMP
	move EFFECT_DOUBLE_HIT,         30, FIGHTING,      100, 30,   0      ;DOUBLE_KICK
	move EFFECT_NORMAL_HIT,        120, NORMAL,         75,  5,   0      ;MEGA_KICK
	move EFFECT_JUMP_KICK,          70, FIGHTING,       95, 25,   0      ;JUMP_KICK
	move EFFECT_FLINCH_HIT,         60, FIGHTING,       85, 15,  30      ;ROLLING_KICK
	move EFFECT_ACCURACY_DOWN,       0, GROUND,        100, 15,   0      ;SAND_ATTACK
	move EFFECT_FLINCH_HIT,         70, NORMAL,        100, 15,  30      ;HEADBUTT
	move EFFECT_NORMAL_HIT,         65, NORMAL,        100, 25,   0      ;HORN_ATTACK
	move EFFECT_MULTI_HIT,          15, NORMAL,         85, 20,   0      ;FURY_ATTACK
	move EFFECT_OHKO,                1, NORMAL,         30,  5,   0      ;HORN_DRILL
	move EFFECT_NORMAL_HIT,         35, NORMAL,         95, 35,   0      ;TACKLE
	move EFFECT_PARALYZE_HIT,       85, NORMAL,        100, 15,  30      ;BODY_SLAM
	move EFFECT_TRAP_TARGET,        15, NORMAL,         85, 20,   0      ;WRAP
	move EFFECT_RECOIL_HIT,         90, NORMAL,         85, 20,   0      ;TAKE_DOWN
	move EFFECT_RAMPAGE,            90, NORMAL,        100, 20,   0      ;THRASH
	move EFFECT_RECOIL_HIT,        120, NORMAL,        100, 15,   0      ;DOUBLE_EDGE
	move EFFECT_DEFENSE_DOWN,        0, NORMAL,        100, 30,   0      ;TAIL_WHIP
	move EFFECT_POISON_HIT,         15, POISON,        100, 35,  30      ;POISON_STING
	move EFFECT_POISON_MULTI_HIT,   25, BUG,           100, 20,  20      ;TWINEEDLE
	move EFFECT_MULTI_HIT,          14, BUG,            85, 20,   0      ;PIN_MISSILE
	move EFFECT_DEFENSE_DOWN,        0, NORMAL,        100, 30,   0      ;LEER
	move EFFECT_FLINCH_HIT,         60, DARK,          100, 25,  30      ;BITE
	move EFFECT_ATTACK_DOWN,         0, NORMAL,        100, 40,   0      ;GROWL
	move EFFECT_FORCE_SWITCH,        0, NORMAL,        100, 20,   0      ;ROAR
	move EFFECT_SLEEP,               0, NORMAL,         55, 15,   0      ;SING
	move EFFECT_CONFUSE,             0, NORMAL,         55, 20,   0      ;SUPERSONIC
	move EFFECT_STATIC_DAMAGE,      20, NORMAL,         90, 20,   0      ;SONICBOOM
	move EFFECT_DISABLE,             0, NORMAL,         55, 20,   0      ;DISABLE
	move EFFECT_DEFENSE_DOWN_HIT,   40, POISON,        100, 30,  10      ;ACID
	move EFFECT_BURN_HIT,           40, FIRE,          100, 25,  10      ;EMBER
	move EFFECT_BURN_HIT,           95, FIRE,          100, 15,  10      ;FLAMETHROWER
	move EFFECT_MIST,                0, ICE,           100, 30,   0      ;MIST
	move EFFECT_NORMAL_HIT,         40, WATER,         100, 25,   0      ;WATER_GUN
	move EFFECT_NORMAL_HIT,        120, WATER,          80,  5,   0      ;HYDRO_PUMP
	move EFFECT_NORMAL_HIT,         95, WATER,         100, 15,   0      ;SURF
	move EFFECT_FREEZE_HIT,         95, ICE,           100, 10,  10      ;ICE_BEAM
	move EFFECT_FREEZE_HIT,        120, ICE,            70,  5,  10      ;BLIZZARD
	move EFFECT_CONFUSE_HIT,        65, PSYCHIC_TYPE,  100, 20,  10      ;PSYBEAM
	move EFFECT_SPEED_DOWN_HIT,     65, WATER,         100, 20,  10      ;BUBBLEBEAM
	move EFFECT_ATTACK_DOWN_HIT,    65, ICE,           100, 20,  10      ;AURORA_BEAM
	move EFFECT_HYPER_BEAM,        150, NORMAL,         90,  5,   0      ;HYPER_BEAM
	move EFFECT_NORMAL_HIT,         35, FLYING,        100, 35,   0      ;PECK
	move EFFECT_NORMAL_HIT,         80, FLYING,        100, 20,   0      ;DRILL_PECK
	move EFFECT_RECOIL_HIT,         80, FIGHTING,       80, 25,   0      ;SUBMISSION
	move EFFECT_FLINCH_HIT,         50, FIGHTING,       90, 20,  30      ;LOW_KICK
	move EFFECT_COUNTER,             1, FIGHTING,      100, 20,   0      ;COUNTER
	move EFFECT_LEVEL_DAMAGE,        1, FIGHTING,      100, 20,   0      ;SEISMIC_TOSS
	move EFFECT_NORMAL_HIT,         80, NORMAL,        100, 15,   0      ;STRENGTH
	move EFFECT_LEECH_HIT,          20, GRASS,         100, 20,   0      ;ABSORB
	move EFFECT_LEECH_HIT,          40, GRASS,         100, 10,   0      ;MEGA_DRAIN
	move EFFECT_LEECH_SEED,          0, GRASS,          90, 10,   0      ;LEECH_SEED
	move EFFECT_SP_ATK_UP,           0, NORMAL,        100, 40,   0      ;GROWTH
	move EFFECT_NORMAL_HIT,         55, GRASS,          95, 25,   0      ;RAZOR_LEAF
	move EFFECT_SOLARBEAM,         120, GRASS,         100, 10,   0      ;SOLARBEAM
	move EFFECT_POISON,              0, POISON,         75, 35,   0      ;POISONPOWDER
	move EFFECT_PARALYZE,            0, GRASS,          75, 30,   0      ;STUN_SPORE
	move EFFECT_SLEEP,               0, GRASS,          75, 15,   0      ;SLEEP_POWDER
	move EFFECT_RAMPAGE,            70, GRASS,         100, 20,   0      ;PETAL_DANCE
	move EFFECT_SPEED_DOWN,          0, BUG,            95, 40,   0      ;STRING_SHOT
	move EFFECT_STATIC_DAMAGE,      40, DRAGON,        100, 10,   0      ;DRAGON_RAGE
	move EFFECT_TRAP_TARGET,        15, FIRE,           70, 15,   0      ;FIRE_SPIN
	move EFFECT_PARALYZE_HIT,       40, ELECTRIC,      100, 30,  10      ;THUNDERSHOCK
	move EFFECT_PARALYZE_HIT,       95, ELECTRIC,      100, 15,  10      ;THUNDERBOLT
	move EFFECT_PARALYZE,            0, ELECTRIC,      100, 20,   0      ;THUNDER_WAVE
	move EFFECT_THUNDER,           120, ELECTRIC,       70, 10,  30      ;THUNDER
	move EFFECT_NORMAL_HIT,         50, ROCK,           90, 15,   0      ;ROCK_THROW
	move EFFECT_EARTHQUAKE,        100, GROUND,        100, 10,   0      ;EARTHQUAKE
	move EFFECT_OHKO,                1, GROUND,         30,  5,   0      ;FISSURE
	move EFFECT_FLY,                60, GROUND,        100, 10,   0      ;DIG
	move EFFECT_TOXIC,               0, POISON,         85, 10,   0      ;TOXIC
	move EFFECT_CONFUSE_HIT,        50, PSYCHIC_TYPE,  100, 25,  10      ;CONFUSION
	move EFFECT_SP_DEF_DOWN_HIT,    90, PSYCHIC_TYPE,  100, 10,  10      ;PSYCHIC_TYPE_M
	move EFFECT_SLEEP,               0, PSYCHIC_TYPE,   60, 20,   0      ;HYPNOSIS
	move EFFECT_ATTACK_UP,           0, PSYCHIC_TYPE,  100, 40,   0      ;MEDITATE
	move EFFECT_SPEED_UP_2,          0, PSYCHIC_TYPE,  100, 30,   0      ;AGILITY
	move EFFECT_PRIORITY_HIT,       40, NORMAL,        100, 30,   0      ;QUICK_ATTACK
	move EFFECT_RAGE,               20, NORMAL,        100, 20,   0      ;RAGE
	move EFFECT_TELEPORT,            0, PSYCHIC_TYPE,  100, 20,   0      ;TELEPORT
	move EFFECT_LEVEL_DAMAGE,        1, GHOST,         100, 15,   0      ;NIGHT_SHADE
	move EFFECT_MIMIC,               0, NORMAL,        100, 10,   0      ;MIMIC
	move EFFECT_DEFENSE_DOWN_2,      0, NORMAL,         85, 40,   0      ;SCREECH
	move EFFECT_EVASION_UP,          0, NORMAL,        100, 15,   0      ;DOUBLE_TEAM
	move EFFECT_HEAL,                0, NORMAL,        100, 20,   0      ;RECOVER
	move EFFECT_DEFENSE_UP,          0, NORMAL,        100, 30,   0      ;HARDEN
	move EFFECT_EVASION_UP,          0, NORMAL,        100, 20,   0      ;MINIMIZE
	move EFFECT_ACCURACY_DOWN,       0, NORMAL,        100, 20,   0      ;SMOKESCREEN
	move EFFECT_CONFUSE,             0, GHOST,         100, 10,   0      ;CONFUSE_RAY
	move EFFECT_DEFENSE_UP,          0, WATER,         100, 40,   0      ;WITHDRAW
	move EFFECT_DEFENSE_CURL,        0, NORMAL,        100, 40,   0      ;DEFENSE_CURL
	move EFFECT_DEFENSE_UP_2,        0, PSYCHIC_TYPE,  100, 30,   0      ;BARRIER
	move EFFECT_LIGHT_SCREEN,        0, PSYCHIC_TYPE,  100, 30,   0      ;LIGHT_SCREEN
	move EFFECT_RESET_STATS,         0, ICE,           100, 30,   0      ;HAZE
	move EFFECT_REFLECT,             0, PSYCHIC_TYPE,  100, 20,   0      ;REFLECT
	move EFFECT_FOCUS_ENERGY,        0, NORMAL,        100, 30,   0      ;FOCUS_ENERGY
	move EFFECT_BIDE,                0, NORMAL,        100, 10,   0      ;BIDE
	move EFFECT_METRONOME,           0, NORMAL,        100, 10,   0      ;METRONOME
	move EFFECT_MIRROR_MOVE,         0, FLYING,        100, 20,   0      ;MIRROR_MOVE
	move EFFECT_SELFDESTRUCT,      200, NORMAL,        100,  5,   0      ;SELFDESTRUCT
	move EFFECT_NORMAL_HIT,        100, NORMAL,         75, 10,   0      ;EGG_BOMB
	move EFFECT_PARALYZE_HIT,       20, GHOST,         100, 30,  30      ;LICK
	move EFFECT_POISON_HIT,         20, POISON,         70, 20,  40      ;SMOG
	move EFFECT_POISON_HIT,         65, POISON,        100, 20,  30      ;SLUDGE
	move EFFECT_FLINCH_HIT,         65, GROUND,         85, 20,  10      ;BONE_CLUB
	move EFFECT_BURN_HIT,          120, FIRE,           85,  5,  10      ;FIRE_BLAST
	move EFFECT_NORMAL_HIT,         80, WATER,         100, 15,   0      ;WATERFALL
	move EFFECT_TRAP_TARGET,        35, WATER,          75, 10,   0      ;CLAMP
	move EFFECT_ALWAYS_HIT,         60, NORMAL,        100, 20,   0      ;SWIFT
	move EFFECT_SKULL_BASH,        100, NORMAL,        100, 15,   0      ;SKULL_BASH
	move EFFECT_MULTI_HIT,          20, NORMAL,        100, 15,   0      ;SPIKE_CANNON
	move EFFECT_SPEED_DOWN_HIT,     10, NORMAL,        100, 35,  10      ;CONSTRICT
	move EFFECT_SP_DEF_UP_2,         0, PSYCHIC_TYPE,  100, 20,   0      ;AMNESIA
	move EFFECT_ACCURACY_DOWN,       0, PSYCHIC_TYPE,   80, 15,   0      ;KINESIS
	move EFFECT_HEAL,                0, NORMAL,        100, 10,   0      ;SOFTBOILED
	move EFFECT_JUMP_KICK,          85, FIGHTING,       90, 20,   0      ;HI_JUMP_KICK
	move EFFECT_PARALYZE,            0, NORMAL,         75, 30,   0      ;GLARE
	move EFFECT_DREAM_EATER,       100, PSYCHIC_TYPE,  100, 15,   0      ;DREAM_EATER
	move EFFECT_POISON,              0, POISON,         55, 40,   0      ;POISON_GAS
	move EFFECT_MULTI_HIT,          15, NORMAL,         85, 20,   0      ;BARRAGE
	move EFFECT_LEECH_HIT,          20, BUG,           100, 15,   0      ;LEECH_LIFE
	move EFFECT_SLEEP,               0, NORMAL,         75, 10,   0      ;LOVELY_KISS
	move EFFECT_SKY_ATTACK,        140, FLYING,         90,  5,   0      ;SKY_ATTACK
	move EFFECT_TRANSFORM,           0, NORMAL,        100, 10,   0      ;TRANSFORM
	move EFFECT_SPEED_DOWN_HIT,     20, WATER,         100, 30,  10      ;BUBBLE
	move EFFECT_CONFUSE_HIT,        70, NORMAL,        100, 10,  20      ;DIZZY_PUNCH
	move EFFECT_SLEEP,               0, GRASS,         100, 15,   0      ;SPORE
	move EFFECT_ACCURACY_DOWN,       0, NORMAL,         70, 20,   0      ;FLASH
	move EFFECT_PSYWAVE,             1, PSYCHIC_TYPE,   80, 15,   0      ;PSYWAVE
	move EFFECT_SPLASH,              0, NORMAL,        100, 40,   0      ;SPLASH
	move EFFECT_DEFENSE_UP_2,        0, POISON,        100, 40,   0      ;ACID_ARMOR
	move EFFECT_NORMAL_HIT,         90, WATER,          85, 10,   0      ;CRABHAMMER
	move EFFECT_SELFDESTRUCT,      250, NORMAL,        100,  5,   0      ;EXPLOSION
	move EFFECT_MULTI_HIT,          18, NORMAL,         80, 15,   0      ;FURY_SWIPES
	move EFFECT_DOUBLE_HIT,         50, GROUND,         90, 10,   0      ;BONEMERANG
	move EFFECT_HEAL,                0, PSYCHIC_TYPE,  100, 10,   0      ;REST
	move EFFECT_FLINCH_HIT,         75, ROCK,           90, 10,  30      ;ROCK_SLIDE
	move EFFECT_FLINCH_HIT,         80, NORMAL,         90, 15,  10      ;HYPER_FANG
	move EFFECT_ATTACK_UP,           0, NORMAL,        100, 30,   0      ;SHARPEN
	move EFFECT_CONVERSION,          0, NORMAL,        100, 30,   0      ;CONVERSION
	move EFFECT_TRI_ATTACK,         80, NORMAL,        100, 10,  20      ;TRI_ATTACK
	move EFFECT_SUPER_FANG,          1, NORMAL,         90, 10,   0      ;SUPER_FANG
	move EFFECT_NORMAL_HIT,         70, NORMAL,        100, 20,   0      ;SLASH
	move EFFECT_SUBSTITUTE,          0, NORMAL,        100, 10,   0      ;SUBSTITUTE
	move EFFECT_RECOIL_HIT,         50, NORMAL,        100,  1,   0      ;STRUGGLE
.IndirectEnd::


SECTION "Moves Gen 2", ROMX

MovesGen2:
	move EFFECT_SKETCH,              0, NORMAL,        100,  1,   0      ;SKETCH
	move EFFECT_TRIPLE_KICK,        10, FIGHTING,       90, 10,   0      ;TRIPLE_KICK
	move EFFECT_THIEF,              40, DARK,          100, 10, 100      ;THIEF
	move EFFECT_MEAN_LOOK,           0, BUG,           100, 10,   0      ;SPIDER_WEB
	move EFFECT_LOCK_ON,             0, NORMAL,        100,  5,   0      ;MIND_READER
	move EFFECT_NIGHTMARE,           0, GHOST,         100, 15,   0      ;NIGHTMARE
	move EFFECT_FLAME_WHEEL,        60, FIRE,          100, 25,  10      ;FLAME_WHEEL
	move EFFECT_SNORE,              40, NORMAL,        100, 15,  30      ;SNORE
	move EFFECT_CURSE,               0, CURSE_TYPE,    100, 10,   0      ;CURSE
	move EFFECT_REVERSAL,            1, NORMAL,        100, 15,   0      ;FLAIL
	move EFFECT_CONVERSION2,         0, NORMAL,        100, 30,   0      ;CONVERSION2
	move EFFECT_NORMAL_HIT,        100, FLYING,         95,  5,   0      ;AEROBLAST
	move EFFECT_SPEED_DOWN_2,        0, GRASS,          85, 40,   0      ;COTTON_SPORE
	move EFFECT_REVERSAL,            1, FIGHTING,      100, 15,   0      ;REVERSAL
	move EFFECT_SPITE,               0, GHOST,         100, 10,   0      ;SPITE
	move EFFECT_FREEZE_HIT,         40, ICE,           100, 25,  10      ;POWDER_SNOW
	move EFFECT_PROTECT,             0, NORMAL,        100, 10,   0      ;PROTECT
	move EFFECT_PRIORITY_HIT,       40, FIGHTING,      100, 30,   0      ;MACH_PUNCH
	move EFFECT_SPEED_DOWN_2,        0, NORMAL,         90, 10,   0      ;SCARY_FACE
	move EFFECT_ALWAYS_HIT,         60, DARK,          100, 20,   0      ;FAINT_ATTACK
	move EFFECT_CONFUSE,             0, NORMAL,         75, 10,   0      ;SWEET_KISS
	move EFFECT_BELLY_DRUM,          0, NORMAL,        100, 10,   0      ;BELLY_DRUM
	move EFFECT_POISON_HIT,         90, POISON,        100, 10,  30      ;SLUDGE_BOMB
	move EFFECT_ACCURACY_DOWN_HIT,  20, GROUND,        100, 10, 100      ;MUD_SLAP
	move EFFECT_ACCURACY_DOWN_HIT,  65, WATER,          85, 10,  50      ;OCTAZOOKA
	move EFFECT_SPIKES,              0, GROUND,        100, 20,   0      ;SPIKES
	move EFFECT_PARALYZE_HIT,      100, ELECTRIC,       50,  5, 100      ;ZAP_CANNON
	move EFFECT_FORESIGHT,           0, NORMAL,        100, 40,   0      ;FORESIGHT
	move EFFECT_DESTINY_BOND,        0, GHOST,         100,  5,   0      ;DESTINY_BOND
	move EFFECT_PERISH_SONG,         0, NORMAL,        100,  5,   0      ;PERISH_SONG
	move EFFECT_SPEED_DOWN_HIT,     55, ICE,            95, 15, 100      ;ICY_WIND
	move EFFECT_PROTECT,             0, FIGHTING,      100,  5,   0      ;DETECT
	move EFFECT_MULTI_HIT,          25, GROUND,         80, 10,   0      ;BONE_RUSH
	move EFFECT_LOCK_ON,             0, NORMAL,        100,  5,   0      ;LOCK_ON
	move EFFECT_RAMPAGE,            90, DRAGON,        100, 15,   0      ;OUTRAGE
	move EFFECT_SANDSTORM,           0, ROCK,          100, 10,   0      ;SANDSTORM
	move EFFECT_LEECH_HIT,          60, GRASS,         100,  5,   0      ;GIGA_DRAIN
	move EFFECT_ENDURE,              0, NORMAL,        100, 10,   0      ;ENDURE
	move EFFECT_ATTACK_DOWN_2,       0, NORMAL,        100, 20,   0      ;CHARM
	move EFFECT_ROLLOUT,            30, ROCK,           90, 20,   0      ;ROLLOUT
	move EFFECT_FALSE_SWIPE,        40, NORMAL,        100, 40,   0      ;FALSE_SWIPE
	move EFFECT_SWAGGER,             0, NORMAL,         90, 15, 100      ;SWAGGER
	move EFFECT_HEAL,                0, NORMAL,        100, 10,   0      ;MILK_DRINK
	move EFFECT_PARALYZE_HIT,       65, ELECTRIC,      100, 20,  30      ;SPARK
	move EFFECT_FURY_CUTTER,        10, BUG,            95, 20,   0      ;FURY_CUTTER
	move EFFECT_DEFENSE_UP_HIT,     70, STEEL,          90, 25,  10      ;STEEL_WING
	move EFFECT_MEAN_LOOK,           0, NORMAL,        100,  5,   0      ;MEAN_LOOK
	move EFFECT_ATTRACT,             0, NORMAL,        100, 15,   0      ;ATTRACT
	move EFFECT_SLEEP_TALK,          0, NORMAL,        100, 10,   0      ;SLEEP_TALK
	move EFFECT_HEAL_BELL,           0, NORMAL,        100,  5,   0      ;HEAL_BELL
	move EFFECT_RETURN,              1, NORMAL,        100, 20,   0      ;RETURN
	move EFFECT_PRESENT,             1, NORMAL,         90, 15,   0      ;PRESENT
	move EFFECT_FRUSTRATION,         1, NORMAL,        100, 20,   0      ;FRUSTRATION
	move EFFECT_SAFEGUARD,           0, NORMAL,        100, 25,   0      ;SAFEGUARD
	move EFFECT_PAIN_SPLIT,          0, NORMAL,        100, 20,   0      ;PAIN_SPLIT
	move EFFECT_SACRED_FIRE,       100, FIRE,           95,  5,  50      ;SACRED_FIRE
	move EFFECT_MAGNITUDE,           1, GROUND,        100, 30,   0      ;MAGNITUDE
	move EFFECT_CONFUSE_HIT,       100, FIGHTING,       50,  5, 100      ;DYNAMICPUNCH
	move EFFECT_NORMAL_HIT,        120, BUG,            85, 10,   0      ;MEGAHORN
	move EFFECT_PARALYZE_HIT,       60, DRAGON,        100, 20,  30      ;DRAGONBREATH
	move EFFECT_BATON_PASS,          0, NORMAL,        100, 40,   0      ;BATON_PASS
	move EFFECT_ENCORE,              0, NORMAL,        100,  5,   0      ;ENCORE
	move EFFECT_PURSUIT,            40, DARK,          100, 20,   0      ;PURSUIT
	move EFFECT_RAPID_SPIN,         20, NORMAL,        100, 40,   0      ;RAPID_SPIN
	move EFFECT_EVASION_DOWN,        0, NORMAL,        100, 20,   0      ;SWEET_SCENT
	move EFFECT_DEFENSE_DOWN_HIT,  100, STEEL,          75, 15,  30      ;IRON_TAIL
	move EFFECT_ATTACK_UP_HIT,      50, STEEL,          95, 35,  10      ;METAL_CLAW
	move EFFECT_ALWAYS_HIT,         70, FIGHTING,      100, 10,   0      ;VITAL_THROW
	move EFFECT_MORNING_SUN,         0, NORMAL,        100,  5,   0      ;MORNING_SUN
	move EFFECT_SYNTHESIS,           0, GRASS,         100,  5,   0      ;SYNTHESIS
	move EFFECT_MOONLIGHT,           0, NORMAL,        100,  5,   0      ;MOONLIGHT
	move EFFECT_HIDDEN_POWER,        1, NORMAL,        100, 15,   0      ;HIDDEN_POWER
	move EFFECT_NORMAL_HIT,        100, FIGHTING,       80,  5,   0      ;CROSS_CHOP
	move EFFECT_TWISTER,            40, DRAGON,        100, 20,  20      ;TWISTER
	move EFFECT_RAIN_DANCE,          0, WATER,          90,  5,   0      ;RAIN_DANCE
	move EFFECT_SUNNY_DAY,           0, FIRE,           90,  5,   0      ;SUNNY_DAY
	move EFFECT_SP_DEF_DOWN_HIT,    80, DARK,          100, 15,  20      ;CRUNCH
	move EFFECT_MIRROR_COAT,         1, PSYCHIC_TYPE,  100, 20,   0      ;MIRROR_COAT
	move EFFECT_PSYCH_UP,            0, NORMAL,        100, 10,   0      ;PSYCH_UP
	move EFFECT_PRIORITY_HIT,       80, NORMAL,        100,  5,   0      ;EXTREMESPEED
	move EFFECT_ALL_UP_HIT,         60, ROCK,          100,  5,  10      ;ANCIENTPOWER
	move EFFECT_SP_DEF_DOWN_HIT,    80, GHOST,         100, 15,  20      ;SHADOW_BALL
	move EFFECT_FUTURE_SIGHT,       80, PSYCHIC_TYPE,   90, 15,   0      ;FUTURE_SIGHT
	move EFFECT_DEFENSE_DOWN_HIT,   20, FIGHTING,      100, 15,  50      ;ROCK_SMASH
	move EFFECT_TRAP_TARGET,        15, WATER,          70, 15,   0      ;WHIRLPOOL
	move EFFECT_BEAT_UP,            10, DARK,          100, 10,   0      ;BEAT_UP
.IndirectEnd::

POPS
