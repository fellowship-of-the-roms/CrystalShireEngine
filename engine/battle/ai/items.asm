AI_SwitchOrTryItem:
	and a

	ld a, [wBattleMode]
	dec a
	ret z

	ld a, [wLinkMode]
	and a
	ret nz

	farcall CheckEnemyLockedIn
	ret nz

	ld a, [wPlayerSubStatus5]
	bit SUBSTATUS_CANT_RUN, a
	jr nz, DontSwitch

	ld a, [wEnemyWrapCount]
	and a
	jr nz, DontSwitch

	; always load the first trainer class in wTrainerClass for Battle Tower trainers
	ld hl, TrainerClassAttributes + TRNATTR_AI_ITEM_SWITCH
	ld a, [wInBattleTowerBattle]
	and a
	jr nz, .ok

	ld a, [wTrainerClass]
	dec a
	ld bc, NUM_TRAINER_ATTRIBUTES
	call AddNTimes

.ok
	bit SWITCH_OFTEN_F, [hl]
	jp nz, SwitchOften
	bit SWITCH_RARELY_F, [hl]
	jp nz, SwitchRarely
	bit SWITCH_SOMETIMES_F, [hl]
	jp nz, SwitchSometimes
	; fallthrough

DontSwitch:
	call AI_TryItem
	ret

SwitchOften:
	callfar CheckAbleToSwitch
	ld a, [wEnemySwitchMonParam]
	and $f0
	jp z, DontSwitch

	cp $10
	jr nz, .not_10
	call Random
	cp 50 percent + 1
	jr c, .switch
	jp DontSwitch
.not_10

	cp $20
	jr nz, .not_20
	call Random
	cp 79 percent - 1
	jr c, .switch
	jp DontSwitch
.not_20

	; $30
	call Random
	cp 4 percent
	jp c, DontSwitch

.switch
	ld a, [wEnemySwitchMonParam]
	and $f
	inc a
	; In register 'a' is the number (1-6) of the mon to switch to
	ld [wEnemySwitchMonIndex], a
	jp AI_TrySwitch

SwitchRarely:
	callfar CheckAbleToSwitch
	ld a, [wEnemySwitchMonParam]
	and $f0
	jp z, DontSwitch

	cp $10
	jr nz, .not_10
	call Random
	cp 8 percent
	jr c, .switch
	jp DontSwitch
.not_10

	cp $20
	jr nz, .not_20
	call Random
	cp 12 percent
	jr c, .switch
	jp DontSwitch
.not_20

	; $30
	call Random
	cp 79 percent - 1
	jp c, DontSwitch

.switch
	ld a, [wEnemySwitchMonParam]
	and $f
	inc a
	ld [wEnemySwitchMonIndex], a
	jp AI_TrySwitch

SwitchSometimes:
	callfar CheckAbleToSwitch
	ld a, [wEnemySwitchMonParam]
	and $f0
	jp z, DontSwitch

	cp $10
	jr nz, .not_10
	call Random
	cp 20 percent - 1
	jr c, .switch
	jp DontSwitch
.not_10

	cp $20
	jr nz, .not_20
	call Random
	cp 50 percent + 1
	jr c, .switch
	jp DontSwitch
.not_20

	; $30
	call Random
	cp 20 percent - 1
	jp c, DontSwitch

.switch
	ld a, [wEnemySwitchMonParam]
	and $f
	inc a
	ld [wEnemySwitchMonIndex], a
	jp AI_TrySwitch

CheckSubstatusCantRun: ; unreferenced
	ld a, [wEnemySubStatus5]
	bit SUBSTATUS_CANT_RUN, a
	ret

AI_TryItem:
	; items are not allowed in the Battle Tower
	ld a, [wInBattleTowerBattle]
	and a
	ret nz

	ld a, [wEnemyTrainerItem1]
	ld b, a
	ld a, [wEnemyTrainerItem2]
	or b
	ret z

	call .IsHighestLevel
	ret nc

	ld a, [wTrainerClass]
	dec a
	ld hl, TrainerClassAttributes + TRNATTR_AI_ITEM_SWITCH
	ld bc, NUM_TRAINER_ATTRIBUTES
	call AddNTimes
	ld b, h
	ld c, l
	ld hl, AI_Items
; BUG: AI might use its base reward value as an item (see docs/bugs_and_glitches.md)
	ld de, wEnemyTrainerItem1
.loop
	push hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	cphl16 -1
	pop hl
	ret z

	push hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call GetItemIDFromIndex
	ld h, a
	ld a, [de]
	cp h
	pop hl
	jr z, .has_item
	inc de
	push hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call GetItemIDFromIndex
	ld h, a
	ld a, [de]
	cp h
	pop hl
	jr z, .has_item

	dec de
	inc hl
	inc hl
	inc hl
	inc hl
	jr .loop

.has_item
	inc hl
	inc hl

	push hl
	push de
	ld de, .callback
	push de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl
.callback
	pop de
	pop hl

	inc hl
	inc hl
	jr c, .loop

; used item
	xor a
	ld [de], a
	inc a
	ld [wEnemyGoesFirst], a

	ld hl, wEnemySubStatus3
	res SUBSTATUS_BIDE, [hl]

	xor a
	ld [wEnemyFuryCutterCount], a
	ld [wEnemyProtectCount], a
	ld [wEnemyRageCounter], a

	ld hl, wEnemySubStatus4
	res SUBSTATUS_RAGE, [hl]

	xor a
	ld [wLastEnemyCounterMove], a

	scf
	ret

.IsHighestLevel:
	ld a, [wOTPartyCount]
	ld d, a
	ld e, 0
	ld hl, wOTPartyMon1Level
	ld bc, PARTYMON_STRUCT_LENGTH
.next
	ld a, [hl]
	cp e
	jr c, .ok
	ld e, a
.ok
	add hl, bc
	dec d
	jr nz, .next

	ld a, [wCurOTMon]
	ld hl, wOTPartyMon1Level
	call AddNTimes
	ld a, [hl]
	cp e
	jr nc, .yes

.no ; unreferenced
	and a
	ret

.yes
	scf
	ret

AI_Items:
	dw FULL_RESTORE, .FullRestore
	dw MAX_POTION,   .MaxPotion
	dw HYPER_POTION, .HyperPotion
	dw SUPER_POTION, .SuperPotion
	dw POTION,       .Potion
	dw X_ACCURACY,   .XAccuracy
	dw FULL_HEAL,    .FullHeal
	dw GUARD_SPEC,   .GuardSpec
	dw DIRE_HIT,     .DireHit
	dw X_ATTACK,     .XAttack
	dw X_DEFEND,     .XDefend
	dw X_SPEED,      .XSpeed
	dw X_SPECIAL,    .XSpecial
	dw -1 ; end

.FullHeal:
	call .Status
	jp c, .DontUse
	call EnemyUsedFullHeal
	jp .Use

.Status:
	ld a, [wEnemyMonStatus]
	and a
	jp z, .DontUse

	ld a, [bc]
	bit CONTEXT_USE_F, a
	jr nz, .StatusCheckContext
	ld a, [bc]
	bit ALWAYS_USE_F, a
	jp nz, .Use
	call Random
	cp 20 percent - 1
	jp c, .Use
	jp .DontUse

.StatusCheckContext:
	ld a, [wEnemySubStatus5]
	bit SUBSTATUS_TOXIC, a
	jr z, .FailToxicCheck
	ld a, [wEnemyToxicCount]
	cp 4
	jr c, .FailToxicCheck
	call Random
	cp 50 percent + 1
	jp c, .Use
.FailToxicCheck:
	ld a, [wEnemyMonStatus]
	and 1 << FRZ | SLP_MASK
	jp z, .DontUse
	jp .Use

.FullRestore:
	call .HealItem
	jp nc, .UseFullRestore
	ld a, [bc]
	bit CONTEXT_USE_F, a
	jp z, .DontUse
	call .Status
	jp c, .DontUse

.UseFullRestore:
	call EnemyUsedFullRestore
	jp .Use

.MaxPotion:
	call .HealItem
	jp c, .DontUse
	call EnemyUsedMaxPotion
	jp .Use

.HealItem:
	ld a, [bc]
	bit CONTEXT_USE_F, a
	jr nz, .CheckHalfOrQuarterHP
	callfar AICheckEnemyHalfHP
	jp c, .DontUse
	ld a, [bc]
	bit UNKNOWN_USE_F, a
	jp nz, .CheckQuarterHP
	callfar AICheckEnemyQuarterHP
	jp nc, .UseHealItem
	call Random
	cp 50 percent + 1
	jp c, .UseHealItem
	jp .DontUse

.CheckQuarterHP:
	callfar AICheckEnemyQuarterHP
	jp c, .DontUse
	call Random
	cp 20 percent - 1
	jp c, .DontUse
	jr .UseHealItem

.CheckHalfOrQuarterHP:
	callfar AICheckEnemyHalfHP
	jp c, .DontUse
	callfar AICheckEnemyQuarterHP
	jp nc, .UseHealItem
	call Random
	cp 20 percent - 1
	jp nc, .DontUse

.UseHealItem:
	jp .Use

.HyperPotion:
	call .HealItem
	jp c, .DontUse
	ld b, 200
	call EnemyUsedHyperPotion
	jp .Use

.SuperPotion:
	call .HealItem
	jp c, .DontUse
	ld b, 50
	call EnemyUsedSuperPotion
	jp .Use

.Potion:
	call .HealItem
	jp c, .DontUse
	ld b, 20
	call EnemyUsedPotion
	jp .Use

; Everything up to "End unused" is unused

.UnusedHealItem: ; unreferenced
; This has similar conditions to .HealItem
	callfar AICheckEnemyMaxHP
	jr c, .dont_use
	push bc
	ld de, wEnemyMonMaxHP + 1
	ld hl, wEnemyMonHP + 1
	ld a, [de]
	sub [hl]
	jr z, .check_40_percent
	dec hl
	dec de
	ld c, a
	sbc [hl]
	and a
	jr nz, .check_40_percent
	ld a, c
	cp b
	jp c, .check_50_percent
	callfar AICheckEnemyQuarterHP
	jr c, .check_40_percent

.check_50_percent
	pop bc
	ld a, [bc]
	bit UNKNOWN_USE_F, a
	jp z, .Use
	call Random
	cp 50 percent + 1
	jp c, .Use

.dont_use
	jp .DontUse

.check_40_percent
	pop bc
	ld a, [bc]
	bit UNKNOWN_USE_F, a
	jp z, .DontUse
	call Random
	cp 39 percent + 1
	jp c, .Use
	jp .DontUse

; End unused

.XAccuracy:
	call .XItem
	jp c, .DontUse
	call EnemyUsedXAccuracy
	jp .Use

.GuardSpec:
	call .XItem
	jp c, .DontUse
	call EnemyUsedGuardSpec
	jp .Use

.DireHit:
	call .XItem
	jp c, .DontUse
	call EnemyUsedDireHit
	jp .Use

.XAttack:
	call .XItem
	jp c, .DontUse
	call EnemyUsedXAttack
	jp .Use

.XDefend:
	call .XItem
	jp c, .DontUse
	call EnemyUsedXDefend
	jp .Use

.XSpeed:
	call .XItem
	jp c, .DontUse
	call EnemyUsedXSpeed
	jp .Use

.XSpecial:
	call .XItem
	jp c, .DontUse
	call EnemyUsedXSpecial
	jp .Use

.XItem:
	ld a, [wEnemyTurnsTaken]
	and a
	jr nz, .notfirstturnout
	ld a, [bc]
	bit ALWAYS_USE_F, a
	jp nz, .Use
	call Random
	cp 50 percent + 1
	jp c, .DontUse
	ld a, [bc]
	bit CONTEXT_USE_F, a
	jp nz, .Use
	call Random
	cp 50 percent + 1
	jp c, .DontUse
	jp .Use
.notfirstturnout
	ld a, [bc]
	bit ALWAYS_USE_F, a
	jp z, .DontUse
	call Random
	cp 20 percent - 1
	jp nc, .DontUse
	jp .Use

.DontUse:
	scf
	ret

.Use:
	and a
	ret

AIUpdateHUD:
	call UpdateEnemyMonInParty
	farcall UpdateEnemyHUD
	ld a, $1
	ldh [hBGMapMode], a
	ld hl, wEnemyItemState
	dec [hl]
	scf
	ret

AIUsedItemSound:
	push de
	ld de, SFX_FULL_HEAL
	call PlaySFX
	pop de
	ret

EnemyUsedFullHeal:
	call AIUsedItemSound
	call AI_HealStatus
	push hl
	ld hl, FULL_HEAL
	call GetItemIDFromIndex
	pop hl
	jp PrintText_UsedItemOn_AND_AIUpdateHUD

EnemyUsedMaxPotion:
	push hl
	ld hl, MAX_POTION
	call GetItemIDFromIndex
	pop hl
	ld [wCurEnemyItem], a
	jr FullRestoreContinue

EnemyUsedFullRestore:
; BUG: AI use of Full Heal does not cure confusion status (see docs/bugs_and_glitches.md)
	call AI_HealStatus
	push hl
	ld hl, FULL_RESTORE
	call GetItemIDFromIndex
	pop hl
	ld [wCurEnemyItem], a
	ld hl, wEnemySubStatus3
	res SUBSTATUS_CONFUSED, [hl]
	xor a
	ld [wEnemyConfuseCount], a
	; fallthrough

FullRestoreContinue:
	ld de, wCurHPAnimOldHP
	ld hl, wEnemyMonHP + 1
	ld a, [hld]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	inc de
	ld hl, wEnemyMonMaxHP + 1
	ld a, [hld]
	ld [de], a
	inc de
	ld [wCurHPAnimMaxHP], a
	ld [wEnemyMonHP + 1], a
	ld a, [hl]
	ld [de], a
	ld [wCurHPAnimMaxHP + 1], a
	ld [wEnemyMonHP], a
	jr EnemyPotionFinish

EnemyUsedPotion:
	push hl
	ld hl, POTION
	call GetItemIDFromIndex
	pop hl
	ld b, 20
	jr EnemyPotionContinue

EnemyUsedSuperPotion:
	push hl
	ld hl, SUPER_POTION
	call GetItemIDFromIndex
	pop hl
	ld b, 50
	jr EnemyPotionContinue

EnemyUsedHyperPotion:
	push hl
	ld hl, HYPER_POTION
	call GetItemIDFromIndex
	pop hl
	ld b, 200

EnemyPotionContinue:
	ld [wCurEnemyItem], a
	ld hl, wEnemyMonHP + 1
	ld a, [hl]
	ld [wCurHPAnimOldHP], a
	add b
	ld [hld], a
	ld [wCurHPAnimNewHP], a
	ld a, [hl]
	ld [wCurHPAnimOldHP + 1], a
	ld [wCurHPAnimNewHP + 1], a
	jr nc, .ok
	inc a
	ld [hl], a
	ld [wCurHPAnimNewHP + 1], a
.ok
	inc hl
	ld a, [hld]
	ld b, a
	ld de, wEnemyMonMaxHP + 1
	ld a, [de]
	dec de
	ld [wCurHPAnimMaxHP], a
	sub b
	ld a, [hli]
	ld b, a
	ld a, [de]
	ld [wCurHPAnimMaxHP + 1], a
	sbc b
	jr nc, EnemyPotionFinish
	inc de
	ld a, [de]
	dec de
	ld [hld], a
	ld [wCurHPAnimNewHP], a
	ld a, [de]
	ld [hl], a
	ld [wCurHPAnimNewHP + 1], a

EnemyPotionFinish:
	call PrintText_UsedItemOn
	hlcoord 2, 2
	xor a
	ld [wWhichHPBar], a
	call AIUsedItemSound
	predef AnimateHPBar
	jp AIUpdateHUD

AI_TrySwitch:
; Determine whether the AI can switch based on how many Pokemon are still alive.
; If it can switch, it will.
	ld a, [wOTPartyCount]
	ld c, a
	ld hl, wOTPartyMon1HP
	ld d, 0
.SwitchLoop:
	ld a, [hli]
	ld b, a
	ld a, [hld]
	or b
	jr z, .fainted
	inc d
.fainted
	push bc
	ld bc, PARTYMON_STRUCT_LENGTH
	add hl, bc
	pop bc
	dec c
	jr nz, .SwitchLoop

	ld a, d
	cp 2
	jp nc, AI_Switch
	and a
	ret

AI_Switch:
	ld a, $1
	ld [wEnemyIsSwitching], a
	ld [wEnemyGoesFirst], a
	ld hl, wEnemySubStatus4
	res SUBSTATUS_RAGE, [hl]
	xor a
	ldh [hBattleTurn], a
	callfar PursuitSwitch

	push af
	ld a, [wCurOTMon]
	ld hl, wOTPartyMon1Status
	ld bc, PARTYMON_STRUCT_LENGTH
	call AddNTimes
	ld d, h
	ld e, l
	ld hl, wEnemyMonStatus
	ld bc, MON_MAXHP - MON_STATUS
	call CopyBytes
	pop af

	jr c, .skiptext
	ld hl, EnemyWithdrewText
	call PrintText

.skiptext
	ld a, 1
	ld [wBattleHasJustStarted], a
	callfar NewEnemyMonStatus
	callfar ResetEnemyStatLevels
	ld hl, wPlayerSubStatus1
	res SUBSTATUS_IN_LOVE, [hl]
	farcall EnemySwitch
	farcall ResetBattleParticipants
	xor a
	ld [wBattleHasJustStarted], a
	ld a, [wLinkMode]
	and a
	ret nz
	scf
	ret

EnemyWithdrewText:
	text_far _EnemyWithdrewText
	text_end

EnemyUsedFullHealRed: ; unreferenced
	call AIUsedItemSound
	call AI_HealStatus
	ld a, FULL_HEAL_RED ; X_SPEED
	jp PrintText_UsedItemOn_AND_AIUpdateHUD

AI_HealStatus:
; BUG: AI use of Full Heal or Full Restore does not cure Nightmare status (see docs/bugs_and_glitches.md)
	ld a, [wCurOTMon]
	ld hl, wOTPartyMon1Status
	ld bc, PARTYMON_STRUCT_LENGTH
	call AddNTimes
	xor a
	ld [hl], a
	ld [wEnemyMonStatus], a
	ld hl, wEnemySubStatus5
	res SUBSTATUS_TOXIC, [hl]
	ret

EnemyUsedXAccuracy:
	call AIUsedItemSound
	ld hl, wEnemySubStatus4
	set SUBSTATUS_X_ACCURACY, [hl]
	push hl
	ld hl, X_ACCURACY
	call GetItemIDFromIndex
	pop hl
	jp PrintText_UsedItemOn_AND_AIUpdateHUD

EnemyUsedGuardSpec:
	call AIUsedItemSound
	ld hl, wEnemySubStatus4
	set SUBSTATUS_MIST, [hl]
	push hl
	ld hl, GUARD_SPEC
	call GetItemIDFromIndex
	pop hl
	jp PrintText_UsedItemOn_AND_AIUpdateHUD

EnemyUsedDireHit:
	call AIUsedItemSound
	ld hl, wEnemySubStatus4
	set SUBSTATUS_FOCUS_ENERGY, [hl]
	push hl
	ld hl, DIRE_HIT
	call GetItemIDFromIndex
	pop hl
	jp PrintText_UsedItemOn_AND_AIUpdateHUD

AICheckEnemyFractionMaxHP: ; unreferenced
; Input: a = divisor
; Work: bc = [wEnemyMonMaxHP] / a
; Work: de = [wEnemyMonHP]
; Output:
; -  c, nz if [wEnemyMonHP] > [wEnemyMonMaxHP] / a
; - nc,  z if [wEnemyMonHP] = [wEnemyMonMaxHP] / a
; - nc, nz if [wEnemyMonHP] < [wEnemyMonMaxHP] / a
	ldh [hDivisor], a
	ld hl, wEnemyMonMaxHP
	ld a, [hli]
	ldh [hDividend], a
	ld a, [hl]
	ldh [hDividend + 1], a
	ld b, 2
	call Divide
	ldh a, [hQuotient + 3]
	ld c, a
	ldh a, [hQuotient + 2]
	ld b, a
	ld hl, wEnemyMonHP + 1
	ld a, [hld]
	ld e, a
	ld a, [hl]
	ld d, a
	ld a, d
	sub b
	ret nz
	ld a, e
	sub c
	ret

EnemyUsedXAttack:
	ld b, ATTACK
	push hl
	ld hl, X_ATTACK
	call GetItemIDFromIndex
	pop hl
	jr EnemyUsedXItem

EnemyUsedXDefend:
	ld b, DEFENSE
	push hl
	ld hl, X_DEFEND
	call GetItemIDFromIndex
	pop hl
	jr EnemyUsedXItem

EnemyUsedXSpeed:
	ld b, SPEED
	push hl
	ld hl, X_SPEED
	call GetItemIDFromIndex
	pop hl
	jr EnemyUsedXItem

EnemyUsedXSpecial:
	ld b, SP_ATTACK
	push hl
	ld hl, X_SPECIAL
	call GetItemIDFromIndex
	pop hl

; Parameter
; a = ITEM_CONSTANT
; b = BATTLE_CONSTANT (ATTACK, DEFENSE, SPEED, SP_ATTACK, SP_DEFENSE, ACCURACY, EVASION)
EnemyUsedXItem:
	ld [wCurEnemyItem], a
	push bc
	call PrintText_UsedItemOn
	pop bc
	farcall RaiseStat
	jp AIUpdateHUD

; Parameter
; a = ITEM_CONSTANT
PrintText_UsedItemOn_AND_AIUpdateHUD:
	ld [wCurEnemyItem], a
	call PrintText_UsedItemOn
	jp AIUpdateHUD

PrintText_UsedItemOn:
	ld a, [wCurEnemyItem]
	ld [wNamedObjectIndex], a
	call GetItemName
	ld hl, wStringBuffer1
	ld de, wMonOrItemNameBuffer
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	ld hl, EnemyUsedOnText
	jp PrintText

EnemyUsedOnText:
	text_far _EnemyUsedOnText
	text_end
