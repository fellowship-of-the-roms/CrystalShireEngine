; move ids
; indexes for:
; - Moves (see data/moves/moves.asm)
; - MoveNames (see data/moves/names.asm)
; - MoveDescriptions (see data/moves/descriptions.asm)
; - BattleAnimations (see data/moves/animations.asm)
	const_def
	const NO_MOVE      ; 000
	const POUND        ; 001
	const KARATE_CHOP  ; 002
	const DOUBLESLAP   ; 003
	const COMET_PUNCH  ; 004
	const MEGA_PUNCH   ; 005
	const PAY_DAY      ; 006
	const FIRE_PUNCH   ; 007
	const ICE_PUNCH    ; 008
	const THUNDERPUNCH ; 009
	const SCRATCH      ; 00a
	const VICEGRIP     ; 00b
	const GUILLOTINE   ; 00c
	const RAZOR_WIND   ; 00d
	const SWORDS_DANCE ; 00e
	const CUT          ; 00f
	const GUST         ; 010
	const WING_ATTACK  ; 011
	const WHIRLWIND    ; 012
	const FLY          ; 013
	const BIND         ; 014
	const SLAM         ; 015
	const VINE_WHIP    ; 016
	const STOMP        ; 017
	const DOUBLE_KICK  ; 018
	const MEGA_KICK    ; 019
	const JUMP_KICK    ; 01a
	const ROLLING_KICK ; 01b
	const SAND_ATTACK  ; 01c
	const HEADBUTT     ; 01d
	const HORN_ATTACK  ; 01e
	const FURY_ATTACK  ; 01f
	const HORN_DRILL   ; 020
	const TACKLE       ; 021
	const BODY_SLAM    ; 022
	const WRAP         ; 023
	const TAKE_DOWN    ; 024
	const THRASH       ; 025
	const DOUBLE_EDGE  ; 026
	const TAIL_WHIP    ; 027
	const POISON_STING ; 028
	const TWINEEDLE    ; 029
	const PIN_MISSILE  ; 02a
	const LEER         ; 02b
	const BITE         ; 02c
	const GROWL        ; 02d
	const ROAR         ; 02e
	const SING         ; 02f
	const SUPERSONIC   ; 030
	const SONICBOOM    ; 031
	const DISABLE      ; 032
	const ACID         ; 033
	const EMBER        ; 034
	const FLAMETHROWER ; 035
	const MIST         ; 036
	const WATER_GUN    ; 037
	const HYDRO_PUMP   ; 038
	const SURF         ; 039
	const ICE_BEAM     ; 03a
	const BLIZZARD     ; 03b
	const PSYBEAM      ; 03c
	const BUBBLEBEAM   ; 03d
	const AURORA_BEAM  ; 03e
	const HYPER_BEAM   ; 03f
	const PECK         ; 040
	const DRILL_PECK   ; 041
	const SUBMISSION   ; 042
	const LOW_KICK     ; 043
	const COUNTER      ; 044
	const SEISMIC_TOSS ; 045
	const STRENGTH     ; 046
	const ABSORB       ; 047
	const MEGA_DRAIN   ; 048
	const LEECH_SEED   ; 049
	const GROWTH       ; 04a
	const RAZOR_LEAF   ; 04b
	const SOLARBEAM    ; 04c
	const POISONPOWDER ; 04d
	const STUN_SPORE   ; 04e
	const SLEEP_POWDER ; 04f
	const PETAL_DANCE  ; 050
	const STRING_SHOT  ; 051
	const DRAGON_RAGE  ; 052
	const FIRE_SPIN    ; 053
	const THUNDERSHOCK ; 054
	const THUNDERBOLT  ; 055
	const THUNDER_WAVE ; 056
	const THUNDER      ; 057
	const ROCK_THROW   ; 058
	const EARTHQUAKE   ; 059
	const FISSURE      ; 05a
	const DIG          ; 05b
	const TOXIC        ; 05c
	const CONFUSION    ; 05d
	const PSYCHIC_M    ; 05e
	const HYPNOSIS     ; 05f
	const MEDITATE     ; 060
	const AGILITY      ; 061
	const QUICK_ATTACK ; 062
	const RAGE         ; 063
	const TELEPORT     ; 064
	const NIGHT_SHADE  ; 065
	const MIMIC        ; 066
	const SCREECH      ; 067
	const DOUBLE_TEAM  ; 068
	const RECOVER      ; 069
	const HARDEN       ; 06a
	const MINIMIZE     ; 06b
	const SMOKESCREEN  ; 06c
	const CONFUSE_RAY  ; 06d
	const WITHDRAW     ; 06e
	const DEFENSE_CURL ; 06f
	const BARRIER      ; 070
	const LIGHT_SCREEN ; 071
	const HAZE         ; 072
	const REFLECT      ; 073
	const FOCUS_ENERGY ; 074
	const BIDE         ; 075
	const METRONOME    ; 076
	const MIRROR_MOVE  ; 077
	const SELFDESTRUCT ; 078
	const EGG_BOMB     ; 079
	const LICK         ; 07a
	const SMOG         ; 07b
	const SLUDGE       ; 07c
	const BONE_CLUB    ; 07d
	const FIRE_BLAST   ; 07e
	const WATERFALL    ; 07f
	const CLAMP        ; 080
	const SWIFT        ; 081
	const SKULL_BASH   ; 082
	const SPIKE_CANNON ; 083
	const CONSTRICT    ; 084
	const AMNESIA      ; 085
	const KINESIS      ; 086
	const SOFTBOILED   ; 087
	const HI_JUMP_KICK ; 088
	const GLARE        ; 089
	const DREAM_EATER  ; 08a
	const POISON_GAS   ; 08b
	const BARRAGE      ; 08c
	const LEECH_LIFE   ; 08d
	const LOVELY_KISS  ; 08e
	const SKY_ATTACK   ; 08f
	const TRANSFORM    ; 090
	const BUBBLE       ; 091
	const DIZZY_PUNCH  ; 092
	const SPORE        ; 093
	const FLASH        ; 094
	const PSYWAVE      ; 095
	const SPLASH       ; 096
	const ACID_ARMOR   ; 097
	const CRABHAMMER   ; 098
	const EXPLOSION    ; 099
	const FURY_SWIPES  ; 09a
	const BONEMERANG   ; 09b
	const REST         ; 09c
	const ROCK_SLIDE   ; 09d
	const HYPER_FANG   ; 09e
	const SHARPEN      ; 09f
	const CONVERSION   ; 0a0
	const TRI_ATTACK   ; 0a1
	const SUPER_FANG   ; 0a2
	const SLASH        ; 0a3
	const SUBSTITUTE   ; 0a4
	const STRUGGLE     ; 0a5
DEF GEN1_MOVES EQU const_value - 1
	const SKETCH       ; 0a6
	const TRIPLE_KICK  ; 0a7
	const THIEF        ; 0a8
	const SPIDER_WEB   ; 0a9
	const MIND_READER  ; 0aa
	const NIGHTMARE    ; 0ab
	const FLAME_WHEEL  ; 0ac
	const SNORE        ; 0ad
	const CURSE        ; 0ae
	const FLAIL        ; 0af
	const CONVERSION2  ; 0b0
	const AEROBLAST    ; 0b1
	const COTTON_SPORE ; 0b2
	const REVERSAL     ; 0b3
	const SPITE        ; 0b4
	const POWDER_SNOW  ; 0b5
	const PROTECT      ; 0b6
	const MACH_PUNCH   ; 0b7
	const SCARY_FACE   ; 0b8
	const FAINT_ATTACK ; 0b9
	const SWEET_KISS   ; 0ba
	const BELLY_DRUM   ; 0bb
	const SLUDGE_BOMB  ; 0bc
	const MUD_SLAP     ; 0bd
	const OCTAZOOKA    ; 0be
	const SPIKES       ; 0bf
	const ZAP_CANNON   ; 0c0
	const FORESIGHT    ; 0c1
	const DESTINY_BOND ; 0c2
	const PERISH_SONG  ; 0c3
	const ICY_WIND     ; 0c4
	const DETECT       ; 0c5
	const BONE_RUSH    ; 0c6
	const LOCK_ON      ; 0c7
	const OUTRAGE      ; 0c8
	const SANDSTORM    ; 0c9
	const GIGA_DRAIN   ; 0ca
	const ENDURE       ; 0cb
	const CHARM        ; 0cc
	const ROLLOUT      ; 0cd
	const FALSE_SWIPE  ; 0ce
	const SWAGGER      ; 0cf
	const MILK_DRINK   ; 0d0
	const SPARK        ; 0d1
	const FURY_CUTTER  ; 0d2
	const STEEL_WING   ; 0d3
	const MEAN_LOOK    ; 0d4
	const ATTRACT      ; 0d5
	const SLEEP_TALK   ; 0d6
	const HEAL_BELL    ; 0d7
	const RETURN       ; 0d8
	const PRESENT      ; 0d9
	const FRUSTRATION  ; 0da
	const SAFEGUARD    ; 0db
	const PAIN_SPLIT   ; 0dc
	const SACRED_FIRE  ; 0dd
	const MAGNITUDE    ; 0de
	const DYNAMICPUNCH ; 0df
	const MEGAHORN     ; 0e0
	const DRAGONBREATH ; 0e1
	const BATON_PASS   ; 0e2
	const ENCORE       ; 0e3
	const PURSUIT      ; 0e4
	const RAPID_SPIN   ; 0e5
	const SWEET_SCENT  ; 0e6
	const IRON_TAIL    ; 0e7
	const METAL_CLAW   ; 0e8
	const VITAL_THROW  ; 0e9
	const MORNING_SUN  ; 0ea
	const SYNTHESIS    ; 0eb
	const MOONLIGHT    ; 0ec
	const HIDDEN_POWER ; 0ed
	const CROSS_CHOP   ; 0ee
	const TWISTER      ; 0ef
	const RAIN_DANCE   ; 0f0
	const SUNNY_DAY    ; 0f1
	const CRUNCH       ; 0f2
	const MIRROR_COAT  ; 0f3
	const PSYCH_UP     ; 0f4
	const EXTREMESPEED ; 0f5
	const ANCIENTPOWER ; 0f6
	const SHADOW_BALL  ; 0f7
	const FUTURE_SIGHT ; 0f8
	const ROCK_SMASH   ; 0f9
	const WHIRLPOOL    ; 0fa
	const BEAT_UP      ; 0fb
DEF GEN2_MOVES EQU const_value - 1
	const FAKE_OUT     ; 0fc
	const UPROAR       ; 0fd
	const STOCKPILE    ; 0fe
	const SPIT_UP      ; 0ff
	const SWALLOW      ; 100
	const HEAT_WAVE    ; 101
	const HAIL         ; 102
	const TORMENT      ; 103
	const STONE_EDGE   ; 104
	const WILL_O_WISP  ; 105
	const MEMENTO      ; 106
	const FACADE       ; 107
	const FOCUS_PUNCH  ; 108
	const SMELLINGSALT ; 109
	const NATURE_POWER ; 10a
	const CHARGE_BEAM  ; 10b
	const TAUNT        ; 10c
	const NIGHT_SLASH  ; 10d
	const ROLE_PLAY    ; 10e
	const WISH         ; 10f
	const ROCK_WRECKER ; 110
	const INGRAIN      ; 111
	const SUPERPOWER   ; 112
	const MAGIC_COAT   ; 113
	const RECYCLE      ; 114
	const REVENGE      ; 115
	const BRICK_BREAK  ; 116
	const YAWN         ; 117
	const KNOCK_OFF    ; 118
	const ENDEAVOR     ; 119
	const ERUPTION     ; 11a
	const SKILL_SWAP   ; 11b
	const IMPRISON     ; 11c
	const REFRESH      ; 11d
	const GRUDGE       ; 11e
	const SNATCH       ; 11f
	const SECRET_POWER ; 120
	const DIVE         ; 121
	const ARM_THRUST   ; 122
	const CAMOUFLAGE   ; 123
	const MIRROR_SHOT  ; 124
	const LUSTER_PURGE ; 125
	const MIST_BALL    ; 126
	const FEATHERDANCE ; 127
	const OMINOUS_WIND ; 128
	const BLAZE_KICK   ; 129
	const BURNING_SAND ; 12a
	const ICE_BALL     ; 12b
	const NEEDLE_ARM   ; 12c
	const SLACK_OFF    ; 12d
	const HYPER_VOICE  ; 12e
	const POISON_FANG  ; 12f
	const CRUSH_CLAW   ; 130
	const BLAST_BURN   ; 131
	const HYDRO_CANNON ; 132
	const METEOR_MASH  ; 133
	const ASTONISH     ; 134
	const WEATHER_BALL ; 135
	const AROMATHERAPY ; 136
	const FAKE_TEARS   ; 137
	const AIR_CUTTER   ; 138
	const OVERHEAT     ; 139
	const ODOR_SLEUTH  ; 13a
	const ROCK_TOMB    ; 13b
	const SILVER_WIND  ; 13c
	const METAL_SOUND  ; 13d
	const GRASSWHISTLE ; 13e
	const TICKLE       ; 13f
	const COSMIC_POWER ; 140
	const WATER_SPOUT  ; 141
	const X_SCISSOR    ; 142
	const SHADOW_PUNCH ; 143
	const EXTRASENSORY ; 144
	const SKY_UPPERCUT ; 145
	const SAND_TOMB    ; 146
	const SHEER_COLD   ; 147
	const MUDDY_WATER  ; 148
	const BULLET_SEED  ; 149
	const AERIAL_ACE   ; 14a
	const ICICLE_SPEAR ; 14b
	const IRON_DEFENSE ; 14c
	const BLOCK        ; 14d
	const HOWL         ; 14e
	const DRAGON_CLAW  ; 14f
	const FRENZY_PLANT ; 150
	const BULK_UP      ; 151
	const BOUNCE       ; 152
	const MUD_SHOT     ; 153
	const POISON_TAIL  ; 154
	const COVET        ; 155
	const VOLT_TACKLE  ; 156
	const MAGICAL_LEAF ; 157
	const MYSTICALFIRE ; 158
	const CALM_MIND    ; 159
	const LEAF_BLADE   ; 15a
	const DRAGON_DANCE ; 15b
	const ROCK_BLAST   ; 15c
	const SHOCK_WAVE   ; 15d
	const WATER_PULSE  ; 15e
	const DOOM_DESIRE  ; 15f
	const PSYCHO_BOOST ; 160
DEF GEN3_MOVES EQU const_value - 1

DEF NUM_ATTACKS EQU const_value - 1

	if NUM_ATTACKS > $3fff
		fail "Too many moves defined!"
	endc

; Battle animations use the same constants as the moves
	const ANIM_SWEET_SCENT_2     ; fc
; Animations with negative IDs will play even when animations are disabled
	const_def -1, -1
	const ANIM_HIT_CONFUSION     ;  -1 (ffff)
	const ANIM_SHAKE             ;  -2 (fffe)
	const ANIM_WOBBLE            ;  -3 (fffd)
	const ANIM_PLAYER_DAMAGE     ;  -4 (fffc)
	const ANIM_PLAYER_STAT_DOWN  ;  -5 (fffb)
	const ANIM_ENEMY_STAT_DOWN   ;  -6 (fffa)
	const ANIM_ENEMY_DAMAGE      ;  -7 (fff9)
	const ANIM_MISS              ;  -8 (fff8)
; battle anims
	const ANIM_IN_WHIRLPOOL      ;  -9 (fff7)
	const ANIM_IN_NIGHTMARE      ;  -a (fff6)
	const ANIM_IN_SANDSTORM      ;  -b (fff5)
	const ANIM_IN_LOVE           ;  -c (fff4)
	const ANIM_PAR               ;  -d (fff3)
	const ANIM_FRZ               ;  -e (fff2)
	const ANIM_SAP               ;  -f (fff1)
	const ANIM_PSN               ; -10 (fff0)
	const ANIM_BRN               ; -11 (ffef)
	const ANIM_SLP               ; -12 (ffee)
	const ANIM_CONFUSED          ; -13 (ffed)
	const ANIM_RETURN_MON        ; -14 (ffec)
	const ANIM_SEND_OUT_MON      ; -15 (ffeb)
	const ANIM_THROW_POKE_BALL   ; -16 (ffea)
	const ANIM_SNATCHED_MOVE	 ; -17 (ffe9)
DEF NUM_BATTLE_ANIMS EQU -const_value - 1

; wNumHits uses offsets from ANIM_MISS
	const_def
	const BATTLEANIM_NONE
	const BATTLEANIM_ENEMY_DAMAGE
	const BATTLEANIM_ENEMY_STAT_DOWN
	const BATTLEANIM_PLAYER_STAT_DOWN
	const BATTLEANIM_PLAYER_DAMAGE
	const BATTLEANIM_WOBBLE
	const BATTLEANIM_SHAKE
	const BATTLEANIM_HIT_CONFUSION
	const BATTLEANIM_SNATCHED
