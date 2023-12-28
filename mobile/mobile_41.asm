; These functions deal with miscellaneous statistics
; which were used for Trainer Rankings in Pokémon News.

; Copies certain values at the time the player enters the Hall of Fame.
StubbedTrainerRankings_HallOfFame2::
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld a, BANK(sTrainerRankingGameTimeHOF)
	call OpenSRAM

	ld hl, wGameTimeHours
	ld de, sTrainerRankingGameTimeHOF
	ld bc, 4
	rst CopyBytes

	ld hl, sTrainerRankingStepCount
	ld de, sTrainerRankingStepCountHOF
	ld bc, 4
	rst CopyBytes

	; sTrainerRankingHealings is only a 3-byte value.
	; One extraneous byte is copied from sTrainerRankingMysteryGift.
	ld hl, sTrainerRankingHealings
	ld de, sTrainerRankingHealingsHOF
	ld bc, 4
	rst CopyBytes

	ld hl, sTrainerRankingBattles
	ld de, sTrainerRankingBattlesHOF
	ld bc, 3
	rst CopyBytes

	call UpdateTrainerRankingsChecksum
	jmp CloseSRAM

StubbedTrainerRankings_MagikarpLength:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld a, BANK(sTrainerRankingLongestMagikarp)
	call OpenSRAM
	ld de, wMagikarpLength
	ld hl, sTrainerRankingLongestMagikarp

	; Is this Magikarp the longest measured?
	ld a, [de]
	cp [hl]
	jr z, .isLowByteHigher
	jr nc, .newRecordLongest
	jr .checkShortest

.isLowByteHigher
	inc hl
	inc de
	ld a, [de]
	cp [hl]
	dec hl
	dec de
	jr c, .checkShortest

.newRecordLongest
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	dec de
	ld [hl], a

.checkShortest
	; First, check if the record for shortest Magikarp is 0.
	; This seems unnecessary, because the value is initialized to 100.0 cm.
	ld hl, sTrainerRankingShortestMagikarp
	ld a, [hli]
	or [hl]
	dec hl
	jr z, .newRecordShortest

	; Now check if this Magikarp is the shortest
	ld a, [de]
	cp [hl]
	jr z, .isLowByteLower
	jr c, .newRecordShortest
	jr .done

.isLowByteLower
	inc hl
	inc de
	ld a, [de]
	cp [hl]
	jr nc, .done
	dec hl
	dec de

.newRecordShortest
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	ld [hl], a

.done
	call UpdateTrainerRankingsChecksum
	jmp CloseSRAM

StubbedTrainerRankings_BugContestScore:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld a, BANK(sTrainerRankingBugContestScore)
	call OpenSRAM
	ldh a, [hProduct]
	ld hl, sTrainerRankingBugContestScore
	cp [hl]
	jr z, .isLowByteHigher
	jr nc, .newHighScore
	jr .done

.isLowByteHigher
	inc hl
	ldh a, [hMultiplicand]
	cp [hl]
	jr c, .done
	dec hl

.newHighScore
	ldh a, [hProduct]
	ld [hli], a
	ldh a, [hMultiplicand]
	ld [hl], a

.done
	call UpdateTrainerRankingsChecksum
	jmp CloseSRAM

StubbedTrainerRankings_AddToSlotsWinStreak:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld a, BANK(sTrainerRankingCurrentSlotsStreak)
	call OpenSRAM

	; Increment the current streak
	ld hl, sTrainerRankingCurrentSlotsStreak + 1
	inc [hl]
	jr nz, .noCarry
	dec hl
	inc [hl]
	inc hl

.noCarry
	dec hl
	; Now check if this is a new record for longest streak
	ld a, [sTrainerRankingLongestSlotsStreak]
	cp [hl]
	jr z, .isLowByteHigher
	jr c, .newRecordStreak
	jr .done

.isLowByteHigher
	inc hl
	ld a, [sTrainerRankingLongestSlotsStreak + 1]
	cp [hl]
	jr nc, .done
	dec hl

.newRecordStreak
	ld a, [hli]
	ld [sTrainerRankingLongestSlotsStreak], a
	ld a, [hl]
	ld [sTrainerRankingLongestSlotsStreak + 1], a

.done
	call UpdateTrainerRankingsChecksum
	jmp CloseSRAM

StubbedTrainerRankings_EndSlotsWinStreak:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld a, BANK(sTrainerRankingCurrentSlotsStreak)
	call OpenSRAM
	ld hl, sTrainerRankingCurrentSlotsStreak
	xor a
	ld [hli], a
	ld [hl], a
	call UpdateTrainerRankingsChecksum
	jmp CloseSRAM

StubbedTrainerRankings_AddToSlotsPayouts:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld a, BANK(sTrainerRankingTotalSlotsPayouts)
	call OpenSRAM
	ld hl, sTrainerRankingTotalSlotsPayouts + 3
	ld a, e
	add [hl]
	ld [hld], a
	ld a, d
	adc [hl]
	ld [hld], a
	jr nc, .done
	inc [hl]
	jr nz, .done
	dec hl
	inc [hl]
	jr nz, .done
	ld a, $ff
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a

.done
	call UpdateTrainerRankingsChecksum
	jmp CloseSRAM

StubbedTrainerRankings_AddToBattlePayouts:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld a, BANK(sTrainerRankingTotalBattlePayouts)
	call OpenSRAM
	ld hl, sTrainerRankingTotalBattlePayouts + 3
	ld a, [bc]
	dec bc
	add [hl]
	ld [hld], a
	ld a, [bc]
	dec bc
	adc [hl]
	ld [hld], a
	ld a, [bc]
	adc [hl]
	ld [hld], a
	jr nc, .done
	inc [hl]
	jr nz, .done
	ld a, $ff
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a

.done
	call UpdateTrainerRankingsChecksum
	jmp CloseSRAM

StubbedTrainerRankings_StepCount:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld hl, sTrainerRankingStepCount
	jmp StubbedTrainerRankings_Increment4Byte

StubbedTrainerRankings_BattleTowerWins: ; unreferenced
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld hl, sTrainerRankingBattleTowerWins
	jmp StubbedTrainerRankings_Increment2Byte

StubbedTrainerRankings_TMsHMsTaught:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld hl, sTrainerRankingTMsHMsTaught
	jmp StubbedTrainerRankings_Increment3Byte

StubbedTrainerRankings_Battles:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld a, [wBattleType]
	cp BATTLETYPE_TUTORIAL ; Exclude the Dude’s tutorial battle
	ret z
	ld hl, sTrainerRankingBattles
	jmp StubbedTrainerRankings_Increment3Byte

StubbedTrainerRankings_WildBattles:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld a, [wBattleType]
	cp BATTLETYPE_TUTORIAL ; Exclude the Dude’s tutorial battle
	ret z
	ld hl, sTrainerRankingWildBattles
	jmp StubbedTrainerRankings_Increment3Byte

StubbedTrainerRankings_TrainerBattles:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld hl, sTrainerRankingTrainerBattles
	jmp StubbedTrainerRankings_Increment3Byte

StubbedTrainerRankings_HallOfFame::
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld hl, sTrainerRankingHOFEntries
	jmp StubbedTrainerRankings_Increment3Byte

StubbedTrainerRankings_WildMonsCaught:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld hl, sTrainerRankingWildMonsCaught
	jmp StubbedTrainerRankings_Increment3Byte

StubbedTrainerRankings_HookedEncounters:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld hl, sTrainerRankingHookedEncounters
	jmp StubbedTrainerRankings_Increment3Byte

StubbedTrainerRankings_EggsHatched:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld hl, sTrainerRankingEggsHatched
	jr StubbedTrainerRankings_Increment3Byte

StubbedTrainerRankings_MonsEvolved:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld hl, sTrainerRankingMonsEvolved
	jr StubbedTrainerRankings_Increment3Byte

StubbedTrainerRankings_FruitPicked:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld hl, sTrainerRankingFruitPicked
	jr StubbedTrainerRankings_Increment3Byte

StubbedTrainerRankings_Healings:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld hl, sTrainerRankingHealings
	jr StubbedTrainerRankings_Increment3Byte

StubbedTrainerRankings_MysteryGift:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld hl, sTrainerRankingMysteryGift
	jr StubbedTrainerRankings_Increment3Byte

StubbedTrainerRankings_Trades:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld hl, sTrainerRankingTrades
	jr StubbedTrainerRankings_Increment3Byte

StubbedTrainerRankings_Fly:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld hl, sTrainerRankingFly
	jr StubbedTrainerRankings_Increment3Byte

StubbedTrainerRankings_Surf:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld hl, sTrainerRankingSurf
	jr StubbedTrainerRankings_Increment3Byte

StubbedTrainerRankings_Waterfall:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld hl, sTrainerRankingWaterfall
	jr StubbedTrainerRankings_Increment3Byte

StubbedTrainerRankings_WhiteOuts:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld hl, sTrainerRankingWhiteOuts
	jr StubbedTrainerRankings_Increment3Byte

StubbedTrainerRankings_LuckyNumberShow:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld hl, sTrainerRankingLuckyNumberShow
	jr StubbedTrainerRankings_Increment2Byte

StubbedTrainerRankings_PhoneCalls:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld hl, sTrainerRankingPhoneCalls
	jr StubbedTrainerRankings_Increment3Byte

StubbedTrainerRankings_LinkBattles:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld hl, sTrainerRankingLinkBattles
	jr StubbedTrainerRankings_Increment3Byte

StubbedTrainerRankings_Splash:
	ret ; no-optimize Stub function (Plans for functions in the future)
	; Only counts if it’s the player’s turn
	ldh a, [hBattleTurn]
	and a
	ret nz
	ld hl, sTrainerRankingSplash
	jr StubbedTrainerRankings_Increment3Byte

StubbedTrainerRankings_TreeEncounters:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld hl, sTrainerRankingTreeEncounters
	jr StubbedTrainerRankings_Increment3Byte

StubbedTrainerRankings_ColosseumWins:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld hl, sTrainerRankingColosseumWins
	jr StubbedTrainerRankings_Increment3Byte

StubbedTrainerRankings_ColosseumLosses:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld hl, sTrainerRankingColosseumLosses
	jr StubbedTrainerRankings_Increment3Byte

StubbedTrainerRankings_ColosseumDraws:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld hl, sTrainerRankingColosseumDraws
	jr StubbedTrainerRankings_Increment3Byte

; Counts uses of both Selfdestruct and Explosion.
StubbedTrainerRankings_Selfdestruct:
	ret ; no-optimize Stub function (Plans for functions in the future)
	; Only counts if it’s the player’s turn
	ldh a, [hBattleTurn]
	and a
	ret nz
	ld hl, sTrainerRankingSelfdestruct
	jr StubbedTrainerRankings_Increment3Byte

StubbedTrainerRankings_Increment4Byte:
	push bc
	ld bc, 3
	jr StubbedTrainerRankings_Increment

StubbedTrainerRankings_Increment3Byte:
	push bc
	ld bc, 2
	jr StubbedTrainerRankings_Increment

StubbedTrainerRankings_Increment2Byte:
	push bc
	ld bc, 1
	jr StubbedTrainerRankings_Increment

StubbedTrainerRankings_Increment1Byte: ; unreferenced
	push bc
	ld bc, 0

; Increments a big-endian value of bc + 1 bytes at hl
StubbedTrainerRankings_Increment:
	ld a, BANK(sTrainerRankings)
	call OpenSRAM
	push hl
	push de
	ld e, c
	inc e
.asm_106136
	ld a, [hli]
	inc a
	jr nz, .asm_10613d
	dec e
	jr nz, .asm_106136

.asm_10613d
	pop de
	pop hl
	jr z, .asm_10614d
	add hl, bc
.asm_106142
	inc [hl]
	jr nz, .asm_10614d
	ld a, c
	and a
	jr z, .asm_10614d
	dec hl
	dec c
	jr .asm_106142

.asm_10614d
	call UpdateTrainerRankingsChecksum
	call CloseSRAM
	pop bc
	ret

; Used when SRAM bank 5 isn’t already loaded — what’s the point of this?
UpdateTrainerRankingsChecksum2:
	ret ; no-optimize Stub function (Plans for functions in the future)
	ld a, BANK(sTrainerRankings)
	call OpenSRAM
	call UpdateTrainerRankingsChecksum
	jmp CloseSRAM

UpdateTrainerRankingsChecksum:
	push de
	call CalculateTrainerRankingsChecksum
	ld hl, sTrainerRankingsChecksum
	ld a, d
	ld [hli], a
	ld [hl], e
	pop de
	ret

CalculateTrainerRankingsChecksum:
	push bc
	ld hl, sTrainerRankings
	ld bc, sTrainerRankingsChecksum - sTrainerRankings
	xor a
	ld de, 0
.asm_106179
	ld a, e
	add [hl]
	ld e, a
	jr nc, .asm_10617f
	inc d

.asm_10617f
	inc hl
	dec bc
	ld a, b
	or c
	jr nz, .asm_106179
	pop bc
	ret

BackupGSBallFlag:
	ld a, BANK(sGSBallFlag)
	call OpenSRAM
	ld a, [sGSBallFlag]
	push af
	ld a, BANK(sGSBallFlagBackup)
	call OpenSRAM
	pop af
	ld [sGSBallFlagBackup], a
	jmp CloseSRAM

RestoreGSBallFlag:
	ld a, BANK(sGSBallFlagBackup)
	call OpenSRAM
	ld a, [sGSBallFlagBackup]
	push af
	ld a, BANK(sGSBallFlag)
	call OpenSRAM
	pop af
	ld [sGSBallFlag], a
	jmp CloseSRAM

VerifyTrainerRankingsChecksum: ; unreferenced
	call CalculateTrainerRankingsChecksum
	ld hl, sTrainerRankingsChecksum
	ld a, d
	cp [hl]
	ret nz
	inc hl
	ld a, e
	cp [hl]
	ret

ClearGSBallFlag:
	ld a, BANK(sGSBallFlag)
	call OpenSRAM
	xor a
	ld [sGSBallFlag], a
	jmp CloseSRAM

InitializeTrainerRankings: ; unreferenced
; Initializes Trainer Rankings data for a new save file in JP Crystal.
	ld hl, sTrainerRankings
	ld bc, sTrainerRankingsEnd - sTrainerRankings
	xor a
	rst ByteFill

	; Initialize the shortest Magikarp to 100.0 cm
	ld hl, sTrainerRankingShortestMagikarp
	ld a, $3
	ld [hli], a
	ld [hl], $e8

	call UpdateTrainerRankingsChecksum
	ld hl, sTrainerRankings
	ld de, sTrainerRankingsBackup
	ld bc, sTrainerRankingsEnd - sTrainerRankings
	jmp CopyBytes

; functions related to the cable club and various NPC scripts referencing communications

Function106464::
	ld de, MobileDialingFrameGFX
	ld hl, vTiles2 tile $62
	lb bc, BANK(MobileDialingFrameGFX), 9
	call Get2bpp
;	ld de, $40b0
;	ld hl, vTiles2 tile $6b
;	ld b, $0f ; no graphics at 0f:40b0; JP leftover???
;	call Get2bpp
	farjp LoadFrame

MobileDialingFrameGFX:
INCBIN "gfx/mobile/dialing_frame.2bpp"
