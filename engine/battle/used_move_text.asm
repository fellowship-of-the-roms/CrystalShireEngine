IF DEF(_DEBUG)
MoveTable:
;	dw POUND        ; 001
;	dw KARATE_CHOP  ; 002
;	dw DOUBLESLAP   ; 003
;	dw COMET_PUNCH  ; 004
;	dw MEGA_PUNCH   ; 005
;	dw PAY_DAY      ; 006
;	dw FIRE_PUNCH   ; 007
;	dw ICE_PUNCH    ; 008
;	dw THUNDERPUNCH ; 009
;	dw SCRATCH      ; 00a
;	dw VICEGRIP     ; 00b
;	dw GUILLOTINE   ; 00c
;	dw RAZOR_WIND   ; 00d
;	dw SWORDS_DANCE ; 00e
;	dw CUT          ; 00f
;	dw GUST         ; 010
;	dw WING_ATTACK  ; 011
;	dw WHIRLWIND    ; 012
;	dw FLY          ; 013
;	dw BIND         ; 014
;	dw SLAM         ; 015
;	dw VINE_WHIP    ; 016
;	dw STOMP        ; 017
;	dw DOUBLE_KICK  ; 018
;	dw MEGA_KICK    ; 019
;	dw JUMP_KICK    ; 01a
;	dw ROLLING_KICK ; 01b
;	dw SAND_ATTACK  ; 01c
;	dw HEADBUTT     ; 01d
;	dw HORN_ATTACK  ; 01e
;	dw FURY_ATTACK  ; 01f
;	dw HORN_DRILL   ; 020
;	dw TACKLE       ; 021
;	dw BODY_SLAM    ; 022
;	dw WRAP         ; 023
;	dw TAKE_DOWN    ; 024
;	dw THRASH       ; 025
;	dw DOUBLE_EDGE  ; 026
;	dw TAIL_WHIP    ; 027
;	dw POISON_STING ; 028
;	dw TWINEEDLE    ; 029
;	dw PIN_MISSILE  ; 02a
;	dw LEER         ; 02b
;	dw BITE         ; 02c
;	dw GROWL        ; 02d
;	dw ROAR         ; 02e
;	dw SING         ; 02f
;	dw SUPERSONIC   ; 030
;	dw SONICBOOM    ; 031
;	dw DISABLE      ; 032
;	dw ACID         ; 033
;	dw EMBER        ; 034
;	dw FLAMETHROWER ; 035
;	dw MIST         ; 036
;	dw WATER_GUN    ; 037
;	dw HYDRO_PUMP   ; 038
;	dw SURF         ; 039
;	dw ICE_BEAM     ; 03a
;	dw BLIZZARD     ; 03b
;	dw PSYBEAM      ; 03c
;	dw BUBBLEBEAM   ; 03d
;	dw AURORA_BEAM  ; 03e
;	dw HYPER_BEAM   ; 03f
;	dw PECK         ; 040
;	dw DRILL_PECK   ; 041
;	dw SUBMISSION   ; 042
;	dw LOW_KICK     ; 043
;	dw COUNTER      ; 044
;	dw SEISMIC_TOSS ; 045
;	dw STRENGTH     ; 046
;	dw ABSORB       ; 047
;	dw MEGA_DRAIN   ; 048
;	dw LEECH_SEED   ; 049
;	dw GROWTH       ; 04a
;	dw RAZOR_LEAF   ; 04b
;	dw SOLARBEAM    ; 04c
;	dw POISONPOWDER ; 04d
;	dw STUN_SPORE   ; 04e
;	dw SLEEP_POWDER ; 04f
;	dw PETAL_DANCE  ; 050
;	dw STRING_SHOT  ; 051
;	dw DRAGON_RAGE  ; 052
;	dw FIRE_SPIN    ; 053
;	dw THUNDERSHOCK ; 054
;	dw THUNDERBOLT  ; 055
;	dw THUNDER_WAVE ; 056
;	dw THUNDER      ; 057
;	dw ROCK_THROW   ; 058
;	dw EARTHQUAKE   ; 059
;	dw FISSURE      ; 05a
;	dw DIG          ; 05b
;	dw TOXIC        ; 05c
;	dw CONFUSION    ; 05d
;	dw PSYCHIC_M    ; 05e
;	dw HYPNOSIS     ; 05f
;	dw MEDITATE     ; 060
;	dw AGILITY      ; 061
;	dw QUICK_ATTACK ; 062
;	dw RAGE         ; 063
;	dw TELEPORT     ; 064
;	dw NIGHT_SHADE  ; 065
;	dw MIMIC        ; 066
;	dw SCREECH      ; 067
;	dw DOUBLE_TEAM  ; 068
;	dw RECOVER      ; 069
;	dw HARDEN       ; 06a
;	dw MINIMIZE     ; 06b
;	dw SMOKESCREEN  ; 06c
;	dw CONFUSE_RAY  ; 06d
;	dw WITHDRAW     ; 06e
;	dw DEFENSE_CURL ; 06f
;	dw BARRIER      ; 070
;	dw LIGHT_SCREEN ; 071
;	dw HAZE         ; 072
;	dw REFLECT      ; 073
;	dw FOCUS_ENERGY ; 074
;	dw BIDE         ; 075
;	dw METRONOME    ; 076
;	dw MIRROR_MOVE  ; 077
;	dw SELFDESTRUCT ; 078
;	dw EGG_BOMB     ; 079
;	dw LICK         ; 07a
;	dw SMOG         ; 07b
;	dw SLUDGE       ; 07c
;	dw BONE_CLUB    ; 07d
;	dw FIRE_BLAST   ; 07e
;	dw WATERFALL    ; 07f
;	dw CLAMP        ; 080
;	dw SWIFT        ; 081
;	dw SKULL_BASH   ; 082
;	dw SPIKE_CANNON ; 083
;	dw CONSTRICT    ; 084
;	dw AMNESIA      ; 085
;	dw KINESIS      ; 086
;	dw SOFTBOILED   ; 087
;	dw HI_JUMP_KICK ; 088
;	dw GLARE        ; 089
;	dw DREAM_EATER  ; 08a
;	dw POISON_GAS   ; 08b
;	dw BARRAGE      ; 08c
;	dw LEECH_LIFE   ; 08d
;	dw LOVELY_KISS  ; 08e
;	dw SKY_ATTACK   ; 08f
;	dw TRANSFORM    ; 090
;	dw BUBBLE       ; 091
;	dw DIZZY_PUNCH  ; 092
;	dw SPORE        ; 093
;	dw FLASH        ; 094
;	dw PSYWAVE      ; 095
;	dw SPLASH       ; 096
;	dw ACID_ARMOR   ; 097
;	dw CRABHAMMER   ; 098
;	dw EXPLOSION    ; 099
;	dw FURY_SWIPES  ; 09a
;	dw BONEMERANG   ; 09b
;	dw REST         ; 09c
;	dw ROCK_SLIDE   ; 09d
;	dw HYPER_FANG   ; 09e
;	dw SHARPEN      ; 09f
;	dw CONVERSION   ; 0a0
;	dw TRI_ATTACK   ; 0a1
;	dw SUPER_FANG   ; 0a2
;	dw SLASH        ; 0a3
;	dw SUBSTITUTE   ; 0a4
;	dw STRUGGLE     ; 0a5
;	dw SKETCH       ; 0a6
;	dw TRIPLE_KICK  ; 0a7
;	dw THIEF        ; 0a8
;	dw SPIDER_WEB   ; 0a9
;	dw MIND_READER  ; 0aa
;	dw NIGHTMARE    ; 0ab
;	dw FLAME_WHEEL  ; 0ac
;	dw SNORE        ; 0ad
;	dw CURSE        ; 0ae
;	dw FLAIL        ; 0af
;	dw CONVERSION2  ; 0b0
;	dw AEROBLAST    ; 0b1
;	dw COTTON_SPORE ; 0b2
;	dw REVERSAL     ; 0b3
;	dw SPITE        ; 0b4
;	dw POWDER_SNOW  ; 0b5
;	dw PROTECT      ; 0b6
;	dw MACH_PUNCH   ; 0b7
;	dw SCARY_FACE   ; 0b8
;	dw FAINT_ATTACK ; 0b9
;	dw SWEET_KISS   ; 0ba
;	dw BELLY_DRUM   ; 0bb
;	dw SLUDGE_BOMB  ; 0bc
;	dw MUD_SLAP     ; 0bd
;	dw OCTAZOOKA    ; 0be
;	dw SPIKES       ; 0bf
;	dw ZAP_CANNON   ; 0c0
;	dw FORESIGHT    ; 0c1
;	dw DESTINY_BOND ; 0c2
;	dw PERISH_SONG  ; 0c3
;	dw ICY_WIND     ; 0c4
;	dw DETECT       ; 0c5
;	dw BONE_RUSH    ; 0c6
;	dw LOCK_ON      ; 0c7
;	dw OUTRAGE      ; 0c8
;	dw SANDSTORM    ; 0c9
;	dw GIGA_DRAIN   ; 0ca
;	dw ENDURE       ; 0cb
;	dw CHARM        ; 0cc
;	dw ROLLOUT      ; 0cd
;	dw FALSE_SWIPE  ; 0ce
;	dw SWAGGER      ; 0cf
;	dw MILK_DRINK   ; 0d0
;	dw SPARK        ; 0d1
;	dw FURY_CUTTER  ; 0d2
;	dw STEEL_WING   ; 0d3
;	dw MEAN_LOOK    ; 0d4
;	dw ATTRACT      ; 0d5
;	dw SLEEP_TALK   ; 0d6
;	dw HEAL_BELL    ; 0d7
;	dw RETURN       ; 0d8
;	dw PRESENT      ; 0d9
;	dw FRUSTRATION  ; 0da
;	dw SAFEGUARD    ; 0db
;	dw PAIN_SPLIT   ; 0dc
;	dw SACRED_FIRE  ; 0dd
;	dw MAGNITUDE    ; 0de
;	dw DYNAMICPUNCH ; 0df
;	dw MEGAHORN     ; 0e0
;	dw DRAGONBREATH ; 0e1
;	dw BATON_PASS   ; 0e2
;	dw ENCORE       ; 0e3
;	dw PURSUIT      ; 0e4
;	dw RAPID_SPIN   ; 0e5
;	dw SWEET_SCENT  ; 0e6
;	dw IRON_TAIL    ; 0e7
;	dw METAL_CLAW   ; 0e8
;	dw VITAL_THROW  ; 0e9
;	dw MORNING_SUN  ; 0ea
;	dw SYNTHESIS    ; 0eb
;	dw MOONLIGHT    ; 0ec
;	dw HIDDEN_POWER ; 0ed
;	dw CROSS_CHOP   ; 0ee
;	dw TWISTER      ; 0ef
;	dw RAIN_DANCE   ; 0f0
;	dw SUNNY_DAY    ; 0f1
;	dw CRUNCH       ; 0f2
;	dw MIRROR_COAT  ; 0f3
;	dw PSYCH_UP     ; 0f4
;	dw EXTREMESPEED ; 0f5
;	dw ANCIENTPOWER ; 0f6
;	dw SHADOW_BALL  ; 0f7
;	dw FUTURE_SIGHT ; 0f8
;	dw ROCK_SMASH   ; 0f9
;	dw WHIRLPOOL    ; 0fa
;	dw BEAT_UP      ; 0fb
;	dw FAKE_OUT     ; 0fc
;	dw UPROAR       ; 0fd
;	dw STOCKPILE    ; 0fe
;	dw SPIT_UP      ; 0ff
;	dw SWALLOW      ; 100
;	dw HEAT_WAVE    ; 101
;	dw HAIL         ; 102
;	dw TORMENT      ; 103
;	dw STONE_EDGE   ; 104
;	dw WILL_O_WISP  ; 105
;	dw MEMENTO      ; 106
;	dw FACADE       ; 107
;	dw FOCUS_PUNCH  ; 108
;	dw SMELLINGSALT ; 109
;	dw NATURE_POWER ; 10a
;	dw CHARGE_BEAM  ; 10b
;	dw TAUNT        ; 10c
;	dw NIGHT_SLASH  ; 10d
;	dw ROLE_PLAY    ; 10e
;	dw WISH         ; 10f
;	dw ROCK_WRECKER ; 110
;	dw INGRAIN      ; 111
;	dw SUPERPOWER   ; 112
;	dw MAGIC_COAT   ; 113
;	dw GUNK_SHOT    ; 114
;	dw REVENGE      ; 115
;	dw BRICK_BREAK  ; 116
;	dw YAWN         ; 117
;	dw KNOCK_OFF    ; 118
;	dw ENDEAVOR     ; 119
;	dw ERUPTION     ; 11a
;	dw SKILL_SWAP   ; 11b
;	dw IMPRISON     ; 11c
;	dw REFRESH      ; 11d
;	dw GRUDGE       ; 11e
;	dw SNATCH       ; 11f
;	dw SECRET_POWER ; 120
;	dw DIVE         ; 121
;	dw ARM_THRUST   ; 122
;	dw CAMOUFLAGE   ; 123
;	dw MIRROR_SHOT  ; 124
;	dw LUSTER_PURGE ; 125
;	dw MIST_BALL    ; 126
;	dw FEATHERDANCE ; 127
;	dw OMINOUS_WIND ; 128
;	dw BLAZE_KICK   ; 129
;	dw BURNING_SAND ; 12a
;	dw ICE_BALL     ; 12b
;	dw POWER_WHIP   ; 12c
;	dw SLACK_OFF    ; 12d
;	dw HYPER_VOICE  ; 12e
;	dw POISON_FANG  ; 12f
;	dw CRUSH_CLAW   ; 130
;	dw BLAST_BURN   ; 131
;	dw HYDRO_CANNON ; 132
;	dw METEOR_MASH  ; 133
;	dw ASTONISH     ; 134
;	dw WEATHER_BALL ; 135
;	dw AROMATHERAPY ; 136
;	dw FAKE_TEARS   ; 137
;	dw AIR_CUTTER   ; 138
;	dw OVERHEAT     ; 139
;	dw ODOR_SLEUTH  ; 13a
;	dw ROCK_TOMB    ; 13b
;	dw SILVER_WIND  ; 13c
;	dw METAL_SOUND  ; 13d
;	dw GRASSWHISTLE ; 13e
;	dw TICKLE       ; 13f
;	dw COSMIC_POWER ; 140
;	dw WATER_SPOUT  ; 141
;	dw X_SCISSOR    ; 142
;	dw SHADOW_PUNCH ; 143
;	dw EXTRASENSORY ; 144
;	dw SKY_UPPERCUT ; 145
;	dw SAND_TOMB    ; 146
;	dw SHEER_COLD   ; 147
;	dw MUDDY_WATER  ; 148
;	dw BULLET_SEED  ; 149
;	dw AERIAL_ACE   ; 14a
;	dw ICICLE_SPEAR ; 14b
;	dw IRON_DEFENSE ; 14c
;	dw BLOCK        ; 14d
;	dw HOWL         ; 14e
;	dw DRAGON_CLAW  ; 14f
;	dw FRENZY_PLANT ; 150
;	dw BULK_UP      ; 151
;	dw BOUNCE       ; 152
;	dw MUD_SHOT     ; 153
;	dw POISON_TAIL  ; 154
;	dw COVET        ; 155
;	dw VOLT_TACKLE  ; 156
;	dw MAGICAL_LEAF ; 157
	dw MYSTICALFIRE ; 158
	dw CALM_MIND    ; 159
	dw LEAF_BLADE   ; 15a
	dw DRAGON_DANCE ; 15b
	dw ROCK_BLAST   ; 15c
	dw SHOCK_WAVE   ; 15d
	dw WATER_PULSE  ; 15e
	dw DOOM_DESIRE  ; 15f
	dw PSYCHO_BOOST ; 160
	dw NO_MOVE      ; 161
ENDC

DisplayUsedMoveText:
IF DEF(_DEBUG)
	jp .no_animate_all_moves ; comment this line to animate all moves
	ld de, MoveTable
.loop
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
	cphl16 SOLARBEAM
	jr z, .chargeup_moves
	cphl16 DIG
	jr z, .chargeup_moves
	cphl16 CURSE
	jr z, .chargeup_moves
	cphl16 FLY
	jr z, .chargeup_moves
	cphl16 SUBSTITUTE
	jr nz, .done_special_handling

	call .DoMoveAnim
	push hl
	push de
	ld a, BATTLE_VARS_SUBSTATUS4
	call GetBattleVarAddr
	ld a, [hl]
	push hl
	push af
	set SUBSTATUS_SUBSTITUTE, [hl]
	farcall BattleCommand_LowerSub
	pop af
	pop hl
	ld [hl], a
	pop de
	pop hl
	jr .loop

.chargeup_moves
	ld a, 1
	ld [wBattleAnimParam], a
	call .DoMoveAnim
	xor a
	ld [wBattleAnimParam], a
	; fallthrough
.done_special_handling
	call .DoMoveAnim
	jr .loop

.DoMoveAnim
	push hl
	push de
	farcall UpdateMoveData
	call .no_animate_all_moves
	farcall AnimateCurrentMove
	pop de
	pop hl
	ret

.no_animate_all_moves
ENDC
	ld hl, UsedMoveText
	call BattleTextbox
	jmp WaitBGMap

UsedMoveText:
	text_far _ActorNameText
	text_asm

	ldh a, [hBattleTurn]
	and a
	jr nz, .start

	ld a, [wPlayerMoveStruct + MOVE_ANIM]
	call UpdateUsedMoves

.start
	ld a, BATTLE_VARS_LAST_MOVE
	call GetBattleVarAddr
	ld d, h
	ld e, l

	ld a, BATTLE_VARS_LAST_COUNTER_MOVE
	call GetBattleVarAddr

	ld a, BATTLE_VARS_MOVE_ANIM
	call GetBattleVar
	ld [wTempByteValue], a

	push hl
	farcall CheckUserIsCharging
	pop hl
	jr nz, .ok

	; update last move
	ld a, [wTempByteValue]
	ld [hl], a
	ld [de], a

.ok
	ld hl, UsedMoveInsteadText
	ret

UsedMoveInsteadText:
	text_far _UsedMoveText
	text_asm
; check obedience
	ld a, [wAlreadyDisobeyed]
	and a
	jr z, .GetMoveNameText
; print "instead,"
	ld hl, .UsedInsteadText
	ret

.UsedInsteadText:
	text_far _UsedInsteadText
	text_asm
.GetMoveNameText:
	ld hl, MoveNameText
	ret

MoveNameText:
	text_far _MoveNameText
	text_end

UpdateUsedMoves:
; append move a to wPlayerUsedMoves unless it has already been used

	push bc
; start of list
	ld hl, wPlayerUsedMoves
; get move id
	ld b, a
; next count
	ld c, NUM_MOVES

.loop
; get move from the list
	ld a, [hli]
; not used yet?
	and a
	jr z, .add
; already used?
	cp b
	jr z, .quit
; next byte
	dec c
	jr nz, .loop

; if the list is full and the move hasn't already been used
; shift the list back one byte, deleting the first move used
; this can occur with struggle or a new learned move
	ld hl, wPlayerUsedMoves + 1
; 1 = 2
	ld a, [hld]
	ld [hli], a
; 2 = 3
	inc hl
	ld a, [hld]
	ld [hli], a
; 3 = 4
	inc hl
	ld a, [hld]
	ld [hl], a
; 4 = new move
	ld a, b
	ld [wPlayerUsedMoves + 3], a
	jr .quit

.add
; go back to the byte we just inced from
	dec hl
; add the new move
	ld [hl], b

.quit
; list updated
	pop bc
	ret
