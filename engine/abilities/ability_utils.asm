; Utility functions for abilties, not sourced from pre-existing battle engine code. Ported content will be credited.

AbilityMoveTable:
	dw POUND        ; 001
	dw KARATE_CHOP  ; 002
	dw DOUBLESLAP   ; 003
	dw COMET_PUNCH  ; 004
	dw MEGA_PUNCH   ; 005
	dw PAY_DAY      ; 006
	dw FIRE_PUNCH   ; 007
	dw ICE_PUNCH    ; 008
	dw THUNDERPUNCH ; 009
	dw SCRATCH      ; 00a
	dw VICEGRIP     ; 00b
	dw GUILLOTINE   ; 00c
	dw RAZOR_WIND   ; 00d
	dw SWORDS_DANCE ; 00e
	dw CUT          ; 00f
	dw GUST         ; 010
	dw WING_ATTACK  ; 011
	dw WHIRLWIND    ; 012
	dw FLY          ; 013
	dw BIND         ; 014
	dw SLAM         ; 015
	dw VINE_WHIP    ; 016
	dw STOMP        ; 017
	dw DOUBLE_KICK  ; 018
	dw MEGA_KICK    ; 019
	dw JUMP_KICK    ; 01a
	dw ROLLING_KICK ; 01b
	dw SAND_ATTACK  ; 01c
	dw HEADBUTT     ; 01d
	dw HORN_ATTACK  ; 01e
	dw FURY_ATTACK  ; 01f
	dw HORN_DRILL   ; 020
	dw TACKLE       ; 021
	dw BODY_SLAM    ; 022
	dw WRAP         ; 023
	dw TAKE_DOWN    ; 024
	dw THRASH       ; 025
	dw DOUBLE_EDGE  ; 026
	dw TAIL_WHIP    ; 027
	dw POISON_STING ; 028
	dw TWINEEDLE    ; 029
	dw PIN_MISSILE  ; 02a
	dw LEER         ; 02b
	dw BITE         ; 02c
	dw GROWL        ; 02d
	dw ROAR         ; 02e
	dw SING         ; 02f
	dw SUPERSONIC   ; 030
	dw SONICBOOM    ; 031
	dw DISABLE      ; 032
	dw ACID         ; 033
	dw EMBER        ; 034
	dw FLAMETHROWER ; 035
	dw MIST         ; 036
	dw WATER_GUN    ; 037
	dw HYDRO_PUMP   ; 038
	dw SURF         ; 039
	dw ICE_BEAM     ; 03a
	dw BLIZZARD     ; 03b
	dw PSYBEAM      ; 03c
	dw BUBBLEBEAM   ; 03d
	dw AURORA_BEAM  ; 03e
	dw HYPER_BEAM   ; 03f
	dw PECK         ; 040
	dw DRILL_PECK   ; 041
	dw SUBMISSION   ; 042
	dw LOW_KICK     ; 043
	dw COUNTER      ; 044
	dw SEISMIC_TOSS ; 045
	dw STRENGTH     ; 046
	dw ABSORB       ; 047
	dw MEGA_DRAIN   ; 048
	dw LEECH_SEED   ; 049
	dw GROWTH       ; 04a
	dw RAZOR_LEAF   ; 04b
	dw SOLARBEAM    ; 04c
	dw POISONPOWDER ; 04d
	dw STUN_SPORE   ; 04e
	dw SLEEP_POWDER ; 04f
	dw PETAL_DANCE  ; 050
	dw STRING_SHOT  ; 051
	dw DRAGON_RAGE  ; 052
	dw FIRE_SPIN    ; 053
	dw THUNDERSHOCK ; 054
	dw THUNDERBOLT  ; 055
	dw THUNDER_WAVE ; 056
	dw THUNDER      ; 057
	dw ROCK_THROW   ; 058
	dw EARTHQUAKE   ; 059
	dw FISSURE      ; 05a
	dw DIG          ; 05b
	dw TOXIC        ; 05c
	dw CONFUSION    ; 05d
	dw PSYCHIC_M    ; 05e
	dw HYPNOSIS     ; 05f
	dw MEDITATE     ; 060
	dw AGILITY      ; 061
	dw QUICK_ATTACK ; 062
	dw RAGE         ; 063
	dw TELEPORT     ; 064
	dw NIGHT_SHADE  ; 065
	dw MIMIC        ; 066
	dw SCREECH      ; 067
	dw DOUBLE_TEAM  ; 068
	dw RECOVER      ; 069
	dw HARDEN       ; 06a
	dw MINIMIZE     ; 06b
	dw SMOKESCREEN  ; 06c
	dw CONFUSE_RAY  ; 06d
	dw WITHDRAW     ; 06e
	dw DEFENSE_CURL ; 06f
	dw BARRIER      ; 070
	dw LIGHT_SCREEN ; 071
	dw HAZE         ; 072
	dw REFLECT      ; 073
	dw FOCUS_ENERGY ; 074
	dw BIDE         ; 075
	dw METRONOME    ; 076
	dw MIRROR_MOVE  ; 077
	dw SELFDESTRUCT ; 078
	dw EGG_BOMB     ; 079
	dw LICK         ; 07a
	dw SMOG         ; 07b
	dw SLUDGE       ; 07c
	dw BONE_CLUB    ; 07d
	dw FIRE_BLAST   ; 07e
	dw WATERFALL    ; 07f
	dw CLAMP        ; 080
	dw SWIFT        ; 081
	dw SKULL_BASH   ; 082
	dw SPIKE_CANNON ; 083
	dw CONSTRICT    ; 084
	dw AMNESIA      ; 085
	dw KINESIS      ; 086
	dw SOFTBOILED   ; 087
	dw HI_JUMP_KICK ; 088
	dw GLARE        ; 089
	dw DREAM_EATER  ; 08a
	dw POISON_GAS   ; 08b
	dw BARRAGE      ; 08c
	dw LEECH_LIFE   ; 08d
	dw LOVELY_KISS  ; 08e
	dw SKY_ATTACK   ; 08f
	dw TRANSFORM    ; 090
	dw BUBBLE       ; 091
	dw DIZZY_PUNCH  ; 092
	dw SPORE        ; 093
	dw FLASH        ; 094
	dw PSYWAVE      ; 095
	dw SPLASH       ; 096
	dw ACID_ARMOR   ; 097
	dw CRABHAMMER   ; 098
	dw EXPLOSION    ; 099
	dw FURY_SWIPES  ; 09a
	dw BONEMERANG   ; 09b
	dw REST         ; 09c
	dw ROCK_SLIDE   ; 09d
	dw HYPER_FANG   ; 09e
	dw SHARPEN      ; 09f
	dw CONVERSION   ; 0a0
	dw TRI_ATTACK   ; 0a1
	dw SUPER_FANG   ; 0a2
	dw SLASH        ; 0a3
	dw SUBSTITUTE   ; 0a4
	dw STRUGGLE     ; 0a5
	dw SKETCH       ; 0a6
	dw TRIPLE_KICK  ; 0a7
	dw THIEF        ; 0a8
	dw SPIDER_WEB   ; 0a9
	dw MIND_READER  ; 0aa
	dw NIGHTMARE    ; 0ab
	dw FLAME_WHEEL  ; 0ac
	dw SNORE        ; 0ad
	dw CURSE        ; 0ae
	dw FLAIL        ; 0af
	dw CONVERSION2  ; 0b0
	dw AEROBLAST    ; 0b1
	dw COTTON_SPORE ; 0b2
	dw REVERSAL     ; 0b3
	dw SPITE        ; 0b4
	dw POWDER_SNOW  ; 0b5
	dw PROTECT      ; 0b6
	dw MACH_PUNCH   ; 0b7
	dw SCARY_FACE   ; 0b8
	dw FAINT_ATTACK ; 0b9
	dw SWEET_KISS   ; 0ba
	dw BELLY_DRUM   ; 0bb
	dw SLUDGE_BOMB  ; 0bc
	dw MUD_SLAP     ; 0bd
	dw OCTAZOOKA    ; 0be
	dw SPIKES       ; 0bf
	dw ZAP_CANNON   ; 0c0
	dw FORESIGHT    ; 0c1
	dw DESTINY_BOND ; 0c2
	dw PERISH_SONG  ; 0c3
	dw ICY_WIND     ; 0c4
	dw DETECT       ; 0c5
	dw BONE_RUSH    ; 0c6
	dw LOCK_ON      ; 0c7
	dw OUTRAGE      ; 0c8
	dw SANDSTORM    ; 0c9
	dw GIGA_DRAIN   ; 0ca
	dw ENDURE       ; 0cb
	dw CHARM        ; 0cc
	dw ROLLOUT      ; 0cd
	dw FALSE_SWIPE  ; 0ce
	dw SWAGGER      ; 0cf
	dw MILK_DRINK   ; 0d0
	dw SPARK        ; 0d1
	dw FURY_CUTTER  ; 0d2
	dw STEEL_WING   ; 0d3
	dw MEAN_LOOK    ; 0d4
	dw ATTRACT      ; 0d5
	dw SLEEP_TALK   ; 0d6
	dw HEAL_BELL    ; 0d7
	dw RETURN       ; 0d8
	dw PRESENT      ; 0d9
	dw FRUSTRATION  ; 0da
	dw SAFEGUARD    ; 0db
	dw PAIN_SPLIT   ; 0dc
	dw SACRED_FIRE  ; 0dd
	dw MAGNITUDE    ; 0de
	dw DYNAMICPUNCH ; 0df
	dw MEGAHORN     ; 0e0
	dw DRAGONBREATH ; 0e1
	dw BATON_PASS   ; 0e2
	dw ENCORE       ; 0e3
	dw PURSUIT      ; 0e4
	dw RAPID_SPIN   ; 0e5
	dw SWEET_SCENT  ; 0e6
	dw IRON_TAIL    ; 0e7
	dw METAL_CLAW   ; 0e8
	dw VITAL_THROW  ; 0e9
	dw MORNING_SUN  ; 0ea
	dw SYNTHESIS    ; 0eb
	dw MOONLIGHT    ; 0ec
	dw HIDDEN_POWER ; 0ed
	dw CROSS_CHOP   ; 0ee
	dw TWISTER      ; 0ef
	dw RAIN_DANCE   ; 0f0
	dw SUNNY_DAY    ; 0f1
	dw CRUNCH       ; 0f2
	dw MIRROR_COAT  ; 0f3
	dw PSYCH_UP     ; 0f4
	dw EXTREMESPEED ; 0f5
	dw ANCIENTPOWER ; 0f6
	dw SHADOW_BALL  ; 0f7
	dw FUTURE_SIGHT ; 0f8
	dw ROCK_SMASH   ; 0f9
	dw WHIRLPOOL    ; 0fa
	dw BEAT_UP      ; 0fb
	dw FAKE_OUT     ; 0fc
	dw UPROAR       ; 0fd
	dw STOCKPILE    ; 0fe
	dw SPIT_UP      ; 0ff
	dw SWALLOW      ; 100
	dw HEAT_WAVE    ; 101
	dw HAIL         ; 102
	dw TORMENT      ; 103
	dw FLATTER      ; 104
	dw WILL_O_WISP  ; 105
	dw MEMENTO      ; 106
	dw FACADE       ; 107
	dw FOCUS_PUNCH  ; 108
	dw SMELLINGSALT ; 109
	dw NATURE_POWER ; 10a
	dw CHARGE       ; 10b
	dw TAUNT        ; 10c
	dw TRICK        ; 10d
	dw ROLE_PLAY    ; 10e
	dw WISH         ; 10f
	dw ASSIST       ; 110
	dw INGRAIN      ; 111
	dw SUPERPOWER   ; 112
	dw MAGIC_COAT   ; 113
	dw RECYCLE      ; 114
	dw REVENGE      ; 115
	dw BRICK_BREAK  ; 116
	dw YAWN         ; 117
	dw KNOCK_OFF    ; 118
	dw ENDEAVOR     ; 119
	dw ERUPTION     ; 11a
	dw SKILL_SWAP   ; 11b
	dw IMPRISON     ; 11c
	dw REFRESH      ; 11d
	dw GRUDGE       ; 11e
	dw SNATCH       ; 11f
	dw SECRET_POWER ; 120
	dw DIVE         ; 121
	dw ARM_THRUST   ; 122
	dw CAMOUFLAGE   ; 123
	dw TAIL_GLOW    ; 124
	dw LUSTER_PURGE ; 125
	dw MIST_BALL    ; 126
	dw FEATHERDANCE ; 127
	dw TEETER_DANCE ; 128
	dw BLAZE_KICK   ; 129
	dw MUD_SPORT    ; 12a
	dw ICE_BALL     ; 12b
	dw NEEDLE_ARM   ; 12c
	dw SLACK_OFF    ; 12d
	dw HYPER_VOICE  ; 12e
	dw POISON_FANG  ; 12f
	dw CRUSH_CLAW   ; 130
	dw BLAST_BURN   ; 131
	dw HYDRO_CANNON ; 132
	dw METEOR_MASH  ; 133
	dw ASTONISH     ; 134
	dw WEATHER_BALL ; 135
	dw AROMATHERAPY ; 136
	dw FAKE_TEARS   ; 137
	dw AIR_CUTTER   ; 138
	dw OVERHEAT     ; 139
	dw ODOR_SLEUTH  ; 13a
	dw ROCK_TOMB    ; 13b
	dw SILVER_WIND  ; 13c
	dw METAL_SOUND  ; 13d
	dw GRASSWHISTLE ; 13e
	dw TICKLE       ; 13f
	dw COSMIC_POWER ; 140
	dw WATER_SPOUT  ; 141
	dw SIGNAL_BEAM  ; 142
	dw SHADOW_PUNCH ; 143
	dw EXTRASENSORY ; 144
	dw SKY_UPPERCUT ; 145
	dw SAND_TOMB    ; 146
	dw SHEER_COLD   ; 147
	dw MUDDY_WATER  ; 148
	dw BULLET_SEED  ; 149
	dw AERIAL_ACE   ; 14a
	dw ICICLE_SPEAR ; 14b
	dw IRON_DEFENSE ; 14c
	dw BLOCK        ; 14d
	dw HOWL         ; 14e
	dw DRAGON_CLAW  ; 14f
	dw FRENZY_PLANT ; 150
	dw BULK_UP      ; 151
	dw BOUNCE       ; 152
	dw MUD_SHOT     ; 153
	dw POISON_TAIL  ; 154
	dw COVET        ; 155
	dw VOLT_TACKLE  ; 156
	dw MAGICAL_LEAF ; 157
	dw WATER_SPORT  ; 158
	dw CALM_MIND    ; 159
	dw LEAF_BLADE   ; 15a
	dw DRAGON_DANCE ; 15b
	dw ROCK_BLAST   ; 15c
	dw SHOCK_WAVE   ; 15d
	dw WATER_PULSE  ; 15e
	dw DOOM_DESIRE  ; 15f
	dw PSYCHO_BOOST ; 160
	dw NO_MOVE      ; 161

; Dynamically loads the ability name into wStringBuffer1 from the ability index stored in 'a'.
; Used for:
;   - Printing the ability name of an ability blocking another ability
;   - Printing the ability name of an ability blocking a move
;   - Printing the copied ability name for TRACE
Ability_LoadAbilityName:
    ld hl, AbilityNames
	call GetNthString
    ld d, h
    ld e, l
    ld hl, wStringBuffer1
.loop
	ld a, [de]
	inc de
	ld [hli], a
	cp "@"
	jr nz, .loop
    ret

; Loads the personality and species of the opponent of the ability user stored in 'b', where 0 is the player and 1 is the enemy.
; Used to pull the opponents ability if it may block/copy an ability activation, or have additional effects/affects based on the user's ability.
; Preserves BC
Ability_LoadOppSpeciesAndPersonality:
    push bc
    xor a
    cp b
    ld a, [wEnemyMonSpecies]
    ld c, a
    ld hl, wEnemyMonPersonality
    jr z, .done
    ld a, [wBattleMonSpecies]
    ld c, a
    ld hl, wBattleMonPersonality
.done
    pop bc
    ret

; A Pokémon with the TRACE ability can technically have any ability in the game. This replaces the ability being pointed to if TRACE is the default.
; Loads the traced ability of the ability user in 'b', where 0 is the player and 1 is the enemy.
Ability_LoadTracedAbility:
    cp TRACE
    jr nz, .done ; If the base ability isn't TRACE, don't do anything.

    xor a
    cp b
    ld a, [wBattleMonTracedAbility]
    jr z, .done
    ld a, [wEnemyMonTracedAbility]
.done
    ret 

; Checks the types of the opponent of the ability holder stored in 'b', where 0 is the player and 1 is the enemy. Returns a Z if it does.
; Preserves BC
Ability_CheckOpponentMonType:
    push bc
    push af
    xor a
    cp b
    ld a, [wEnemyMonType1]
    ld b, a
    ld a, [wEnemyMonType2]
    ld c, a
    jr z, .compare_types
    ld a, [wBattleMonType1]
    ld b, a
    ld a, [wBattleMonType2]
    ld c, a
.compare_types
    pop af
    cp b
    jr z, .done
    cp c
.done
    pop bc
    ret

; Internal function used for move blocking abilities.
AbilityInt_LoadMoveUsed:
    ld de, AbilityMoveTable
	ld a, BATTLE_VARS_MOVE
	call GetBattleVarAddr
	ld a, [de]
	ld c, a
	inc de
	ld a, [de]
	ld b, a
	inc de
	or c
	ret z
	push hl
	ld h, b
	ld l, c
	call GetMoveIDFromIndex
	pop hl
	ld [hl], a
	call GetMoveIndexFromID
    ret

; This larger table returns a "z" if a sound-based move was used. The move being checked is loaded into 'a'.
Ability_CheckSoundMove:
    call AbilityInt_LoadMoveUsed
    cphl16 GRASSWHISTLE
    ret z
    cphl16 GROWL
    ret z
    cphl16 HEAL_BELL
    ret z
    cphl16 HYPER_VOICE
    ret z
    cphl16 METAL_SOUND
    ret z
    cphl16 PERISH_SONG
    ret z
    cphl16 SING
    ret z
    cphl16 SONICBOOM
    ret z
    cphl16 SUPERSONIC
    ret z
    cphl16 SCREECH
    ret z
    cphl16 SNORE
    ret z
    cphl16 UPROAR
    ret z
    cphl16 ROAR
    ret

; There is a long list of contact moves in Gen III before the PSS was implemented in Gen IV.
; Notable, Covet, Faint Attack and Fake Out are skipped, in Gen III only.
Ability_CheckContactMoves:
    call AbilityInt_LoadMoveUsed
    cphl16 ANCIENTPOWER
    ret z
    cphl16 OVERHEAT
    ret z
    cphl16 POUND
    ret z
    cphl16 KARATE_CHOP
    ret z
    cphl16 DOUBLESLAP
    ret z
    cphl16 COMET_PUNCH
    ret z
    cphl16 MEGA_PUNCH
    ret z
    cphl16 FIRE_PUNCH
    ret z
    cphl16 ICE_PUNCH
    ret z
    cphl16 THUNDERPUNCH
    ret z
    cphl16 DIZZY_PUNCH
    ret z
    cphl16 SCRATCH
    ret z
    cphl16 VICEGRIP
    ret z
    cphl16 GUILLOTINE
    ret z
    cphl16 CUT
    ret z
    cphl16 WING_ATTACK
    ret z
    cphl16 FLY
    ret z
    cphl16 BIND
    ret z
    cphl16 SLAM
    ret z
    cphl16 VINE_WHIP
    ret z
    cphl16 STOMP
    ret z
    cphl16 ROLLING_KICK
    ret z
    cphl16 MEGA_KICK
    ret z
    cphl16 TRIPLE_KICK
    ret z
    cphl16 HI_JUMP_KICK
    ret z
    cphl16 JUMP_KICK
    ret z
    cphl16 DOUBLE_KICK
    ret z
    cphl16 BLAZE_KICK
    ret z
    cphl16 HEADBUTT
    ret z
    cphl16 HORN_ATTACK
    ret z
    cphl16 FURY_ATTACK
    ret z
    cphl16 HORN_DRILL
    ret z
    cphl16 TACKLE
    ret z
    cphl16 BODY_SLAM
    ret z
    cphl16 WRAP
    ret z
    cphl16 TAKE_DOWN
    ret z
    cphl16 THRASH
    ret z
    cphl16 DOUBLE_EDGE
    ret z
    cphl16 BITE
    ret z
    cphl16 PECK
    ret z
    cphl16 DRILL_PECK
    ret z
    cphl16 SUBMISSION
    ret z
    cphl16 LOW_KICK
    ret z
    cphl16 COUNTER
    ret z
    cphl16 SEISMIC_TOSS
    ret z
    cphl16 STRENGTH
    ret z
    cphl16 PETAL_DANCE
    ret z
    cphl16 DIG
    ret z
    cphl16 QUICK_ATTACK
    ret z
    cphl16 RAGE
    ret z
    cphl16 LICK
    ret z
    cphl16 BIDE
    ret z
    cphl16 WATERFALL
    ret z
    cphl16 CLAMP
    ret z
    cphl16 SKULL_BASH
    ret z
    cphl16 LEECH_LIFE
    ret z
    cphl16 CRABHAMMER
    ret z
    cphl16 FURY_SWIPES
    ret z
    cphl16 HYPER_FANG
    ret z
    cphl16 SUPER_FANG
    ret z
    cphl16 SLASH
    ret z
    cphl16 STRUGGLE
    ret z
    cphl16 THIEF
    ret z
    cphl16 FLAME_WHEEL
    ret z
    cphl16 FLAIL
    ret z
    cphl16 REVERSAL
    ret z
    cphl16 MACH_PUNCH
    ret z
    cphl16 OUTRAGE
    ret z
    cphl16 ROLLOUT
    ret z
    cphl16 FALSE_SWIPE
    ret z
    cphl16 SPARK
    ret z
    cphl16 FURY_CUTTER
    ret z
    cphl16 STEEL_WING
    ret z
    cphl16 RETURN
    ret z
    cphl16 FRUSTRATION
    ret z
    cphl16 DYNAMICPUNCH
    ret z
    cphl16 MEGAHORN
    ret z
    cphl16 PURSUIT
    ret z
    cphl16 RAPID_SPIN
    ret z
    cphl16 IRON_TAIL
    ret z
    cphl16 METAL_CLAW
    ret z
    cphl16 VITAL_THROW
    ret z
    cphl16 CROSS_CHOP
    ret z
    cphl16 EXTREMESPEED
    ret z
    cphl16 ROCK_SMASH
    ret z
    cphl16 FACADE
    ret z
    cphl16 FOCUS_PUNCH
    ret z
    cphl16 SMELLINGSALT
    ret z
    cphl16 SUPERPOWER
    ret z
    cphl16 REVENGE
    ret z
    cphl16 BRICK_BREAK
    ret z
    cphl16 KNOCK_OFF
    ret z
    cphl16 ENDEAVOR
    ret z
    cphl16 DIVE
    ret z
    cphl16 ARM_THRUST
    ret z
    cphl16 ICE_BALL
    ret z
    cphl16 NEEDLE_ARM
    ret z
    cphl16 POISON_FANG
    ret z
    cphl16 CRUSH_CLAW
    ret z
    cphl16 METEOR_MASH
    ret z
    cphl16 ASTONISH
    ret z
    cphl16 SHADOW_PUNCH
    ret z
    cphl16 SKY_UPPERCUT
    ret z
    cphl16 AERIAL_ACE
    ret z
    cphl16 DRAGON_CLAW
    ret z
    cphl16 BOUNCE
    ret z
    cphl16 POISON_TAIL
    ret z
    cphl16 VOLT_TACKLE
    ret z
    cphl16 LEAF_BLADE
    ret
