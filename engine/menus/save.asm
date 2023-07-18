SaveMenu:
	call LoadStandardMenuHeader
	farcall DisplaySaveInfoOnSave
	call SpeechTextbox
	call UpdateSprites
	farcall SaveMenu_CopyTilemapAtOnce
	ld hl, WouldYouLikeToSaveTheGameText
	call SaveTheGame_yesorno
	jr nz, .refused
	call AskOverwriteSaveFile
	jr c, .refused
	call PauseGameLogic
	call SavedTheGame
	call ResumeGameLogic
	call ExitMenu
	and a
	ret

.refused
	call ExitMenu
	farcall SaveMenu_CopyTilemapAtOnce
	scf
	ret

SaveAfterLinkTrade:
	call PauseGameLogic
	farcall StageRTCTimeForSave
	farcall BackupMysteryGift
	call SavePokemonData
	call SaveIndexTables
	call SaveChecksum
	call SaveBackupPokemonData
	call SaveBackupIndexTables
	call SaveBackupChecksum
	farcall BackupPartyMonMail
	farcall SaveRTC
	call ResumeGameLogic
	ret

ChangeBoxSaveGame:
	push de
	ld hl, ChangeBoxSaveText
	call MenuTextbox
	call YesNoBox
	call ExitMenu
	jr c, .refused
	call AskOverwriteSaveFile
	jr c, .refused
	call PauseGameLogic
	call SaveBox
	pop de
	ld a, e
	ld [wCurBox], a
	call LoadBox
	call SavedTheGame
	call ResumeGameLogic
	and a
	ret
.refused
	pop de
	ret

Link_SaveGame:
	call AskOverwriteSaveFile
	jr c, .refused
	call PauseGameLogic
	call SavedTheGame
	call ResumeGameLogic
	and a

.refused
	ret

MoveMonWOMail_SaveGame:
	call PauseGameLogic
	push de
	call SaveBox
	pop de
	ld a, e
	ld [wCurBox], a
	call LoadBox
	call ResumeGameLogic
	ret

MoveMonWOMail_InsertMon_SaveGame:
	call PauseGameLogic
	push de
	call SaveBox
	pop de
	ld a, e
	ld [wCurBox], a
	ld a, TRUE
	ld [wSaveFileExists], a
	farcall StageRTCTimeForSave
	farcall BackupMysteryGift
	call ValidateSave
	call SaveOptions
	call SavePlayerData
	call SavePokemonData
	call SaveIndexTables
	call SaveChecksum
	call ValidateBackupSave
	call SaveBackupOptions
	call SaveBackupPlayerData
	call SaveBackupPokemonData
	call SaveBackupIndexTables
	call SaveBackupChecksum
	farcall BackupPartyMonMail
	farcall BackupGSBallFlag
	farcall SaveRTC
	call LoadBox
	call ResumeGameLogic
	ld de, SFX_SAVE
	jp PlaySFX

StartMoveMonWOMail_SaveGame:
	ld hl, MoveMonWOMailSaveText
	call MenuTextbox
	call YesNoBox
	call ExitMenu
	jr c, .refused
	call AskOverwriteSaveFile
	jr c, .refused
	call PauseGameLogic
	call SavedTheGame
	call ResumeGameLogic
	and a
	ret

.refused
	scf
	ret

PauseGameLogic:
	ld a, TRUE
	ld [wGameLogicPaused], a
	ret

ResumeGameLogic:
	xor a ; FALSE
	ld [wGameLogicPaused], a
	ret

AddHallOfFameEntry:
	ld a, BANK(sHallOfFame)
	call OpenSRAM
	ld hl, sHallOfFame + HOF_LENGTH * (NUM_HOF_TEAMS - 1) - 1
	ld de, sHallOfFame + HOF_LENGTH * NUM_HOF_TEAMS - 1
	ld bc, HOF_LENGTH * (NUM_HOF_TEAMS - 1)
.loop
	ld a, [hld]
	ld [de], a
	dec de
	dec bc
	ld a, c
	or b
	jr nz, .loop
	ld hl, wHallOfFamePokemonList
	ld de, sHallOfFame
	ld bc, HOF_LENGTH
	call CopyBytes
	call CloseSRAM
	ret

AskOverwriteSaveFile:
	ld a, [wSaveFileExists]
	and a
	jr z, .erase
	call CompareLoadedAndSavedPlayerID
	ret z
	ld hl, AnotherSaveFileText
	call SaveTheGame_yesorno
	jr nz, .refused

.erase
	call ErasePreviousSave
	and a
	ret

.refused
	scf
	ret

SaveTheGame_yesorno:
	ld b, BANK(WouldYouLikeToSaveTheGameText)
	call MapTextbox
	call LoadMenuTextbox
	lb bc, 0, 7
	call PlaceYesNoBox
	ld a, [wMenuCursorY]
	dec a
	call CloseWindow
	and a
	ret

CompareLoadedAndSavedPlayerID:
	ld a, BANK(sPlayerData)
	call OpenSRAM
	ld hl, sPlayerData + (wPlayerID - wPlayerData)
	ld a, [hli]
	ld c, [hl]
	ld b, a
	call CloseSRAM
	ld a, [wPlayerID]
	cp b
	ret nz
	ld a, [wPlayerID + 1]
	cp c
	ret

SavedTheGame:
	ld hl, wOptions
	set NO_TEXT_SCROLL, [hl]
	push hl
	ld hl, .saving_text
	call PrintText
	pop hl
	res NO_TEXT_SCROLL, [hl]
	call SaveGameData
	; <PLAYER> saved the game!
	ld hl, SavedTheGameText
	call PrintText
	ld de, SFX_SAVE
	call WaitPlaySFX
	jp WaitSFX

.saving_text
	text "Saving…"
	done

SaveGameData:
	ld a, TRUE
	ld [wSaveFileExists], a
	farcall StageRTCTimeForSave
	farcall BackupMysteryGift
	call ValidateSave
	call SaveOptions
	call SavePlayerData
	call SavePokemonData
	call SaveIndexTables
	call SaveBox
	call SaveChecksum
	call ValidateBackupSave
	call SaveBackupOptions
	call SaveBackupPlayerData
	call SaveBackupPokemonData
	call SaveBackupIndexTables
	call SaveBackupChecksum
	call UpdateStackTop
	farcall BackupPartyMonMail
	farcall BackupGSBallFlag
	farcall SaveRTC
	ld a, BANK(sBattleTowerChallengeState)
	call OpenSRAM
	ld a, [sBattleTowerChallengeState]
	cp BATTLETOWER_RECEIVED_REWARD
	jr nz, .ok
	xor a
	ld [sBattleTowerChallengeState], a
.ok
	call CloseSRAM
	ret

UpdateStackTop:
; sStackTop appears to be unused.
; It could have been used to debug stack overflow during saving.
	call FindStackTop
	ld a, BANK(sStackTop)
	call OpenSRAM
	ld a, [sStackTop + 0]
	ld e, a
	ld a, [sStackTop + 1]
	ld d, a
	or e
	jr z, .update
	ld a, e
	sub l
	ld a, d
	sbc h
	jr c, .done

.update
	ld a, l
	ld [sStackTop + 0], a
	ld a, h
	ld [sStackTop + 1], a

.done
	call CloseSRAM
	ret

FindStackTop:
; Find the furthest point that sp has traversed to.
; This is distinct from the current value of sp.
	ld hl, wStackBottom
.loop
	ld a, [hl]
	or a
	ret nz
	inc hl
	jr .loop

ErasePreviousSave:
	call EraseBoxes
	call EraseHallOfFame
	call EraseLinkBattleStats
	call EraseMysteryGift
	call SaveData
	call EraseBattleTowerStatus
	ld a, BANK(sStackTop)
	call OpenSRAM
	xor a
	ld [sStackTop + 0], a
	ld [sStackTop + 1], a
	call CloseSRAM
	ld a, $1
	ld [wSavedAtLeastOnce], a
	ret

EraseLinkBattleStats:
	ld a, BANK(sLinkBattleStats)
	call OpenSRAM
	ld hl, sLinkBattleStats
	ld bc, sLinkBattleStatsEnd - sLinkBattleStats
	xor a
	call ByteFill
	jp CloseSRAM

EraseMysteryGift:
	ld a, BANK(sBackupMysteryGiftItem)
	call OpenSRAM
	ld hl, sBackupMysteryGiftItem
	ld bc, sBackupMysteryGiftItemEnd - sBackupMysteryGiftItem
	xor a
	call ByteFill
	jp CloseSRAM

EraseHallOfFame:
	ld a, BANK(sHallOfFame)
	call OpenSRAM
	ld hl, sHallOfFame
	ld bc, sHallOfFameEnd - sHallOfFame
	xor a
	call ByteFill
	jp CloseSRAM

InitDefaultEZChatMsgs: ; unreferenced
	ld a, BANK(sEZChatMessages) ; MBC30 bank used by JP Crystal; inaccessible by MBC3
	call OpenSRAM
	ld hl, .Data
	ld de, sEZChatMessages
	ld bc, EASY_CHAT_MESSAGE_LENGTH * 4
	call CopyBytes
	jp CloseSRAM

.Data:
; introduction
	db $0d, EZCHAT_GREETINGS,    $00, EZCHAT_EXCLAMATIONS, $00, EZCHAT_POKEMON
	db $22, EZCHAT_GREETINGS,    $01, EZCHAT_EXCLAMATIONS, $00, EZCHAT_POKEMON
; begin battle
	db $03, EZCHAT_BATTLE,       $05, EZCHAT_CONDITIONS,   $03, EZCHAT_EXCLAMATIONS
	db $0e, EZCHAT_CONVERSATION, $03, EZCHAT_GREETINGS,    $00, EZCHAT_POKEMON
; win battle
	db $39, EZCHAT_FEELINGS,     $07, EZCHAT_BATTLE,       $00, EZCHAT_EXCLAMATIONS
	db $04, EZCHAT_FEELINGS,     $01, EZCHAT_EXCLAMATIONS, $00, EZCHAT_POKEMON
; lose battle
	db $0f, EZCHAT_EXCLAMATIONS, $14, EZCHAT_FEELINGS,     $05, EZCHAT_EXCLAMATIONS
	db $11, EZCHAT_TIME,         $0c, EZCHAT_CONVERSATION, $06, EZCHAT_BATTLE

EraseBattleTowerStatus:
	ld a, BANK(sBattleTowerChallengeState)
	call OpenSRAM
	xor a
	ld [sBattleTowerChallengeState], a
	jp CloseSRAM

SaveData:
	call _SaveData
	ret

Function14d6c: ; unreferenced
	ld a, BANK(s4_a60b) ; MBC30 bank used by JP Crystal; inaccessible by MBC3
	call OpenSRAM
	ld a, [s4_a60b] ; address of MBC30 bank
	ld b, $0
	and a
	jr z, .ok
	ld b, $2

.ok
	ld a, b
	ld [s4_a60b], a ; address of MBC30 bank
	call CloseSRAM
	ret

Function14d83: ; unreferenced
	ld a, BANK(s4_a60c) ; aka BANK(s4_a60d) ; MBC30 bank used by JP Crystal; inaccessible by MBC3
	call OpenSRAM
	xor a
	ld [s4_a60c], a ; address of MBC30 bank
	ld [s4_a60d], a ; address of MBC30 bank
	call CloseSRAM
	ret

DisableMobileStadium: ; unreferenced
	ld a, BANK(sMobileStadiumFlag)
	call OpenSRAM
	xor a
	ld [sMobileStadiumFlag], a
	call CloseSRAM
	ret

HallOfFame_InitSaveIfNeeded:
	ld a, [wSavedAtLeastOnce]
	and a
	ret nz
	call ErasePreviousSave
	ret

ValidateSave:
	ld a, BANK(sCheckValue1) ; aka BANK(sCheckValue2)
	call OpenSRAM
	ld a, SAVE_CHECK_VALUE_1
	ld [sCheckValue1], a
	ld a, SAVE_CHECK_VALUE_2
	ld [sCheckValue2], a
	jp CloseSRAM

SaveOptions:
	ld a, BANK(sOptions)
	call OpenSRAM
	ld hl, wOptions
	ld de, sOptions
	ld bc, wOptionsEnd - wOptions
	call CopyBytes
	ld a, [wOptions]
	and ~(1 << NO_TEXT_SCROLL)
	ld [sOptions], a
	jp CloseSRAM

SavePlayerData:
	ld a, BANK(sPlayerData)
	call OpenSRAM
	ld hl, wPlayerData
	ld de, sPlayerData
	ld bc, wPlayerDataEnd - wPlayerData
	call CopyBytes
	ld hl, wCurMapData
	ld de, sCurMapData
	ld bc, wCurMapDataEnd - wCurMapData
	call CopyBytes
	jp CloseSRAM

SavePokemonData:
	ld a, BANK(sPokemonData)
	call OpenSRAM
	ld hl, wPokemonData
	ld de, sPokemonData
	ld bc, wPokemonDataEnd - wPokemonData
	call CopyBytes
	call CloseSRAM
	ret

SaveIndexTables:
	; saving is already a long operation, so take the chance to GC the table
	farcall ForceGarbageCollection
	ldh a, [rSVBK]
	push af
	ld a, BANK("16-bit WRAM tables")
	ldh [rSVBK], a
	ld a, BANK(sPokemonIndexTable)
	call OpenSRAM
	ld hl, wPokemonIndexTable
	ld de, sPokemonIndexTable
	ld bc, wPokemonIndexTableEnd - wPokemonIndexTable
	call CopyBytes
	ld hl, wItemIndexTable
	ld de, sItemIndexTable
	ld bc, wItemIndexTableEnd - wItemIndexTable
	call CopyBytes
	ld a, BANK(sMoveIndexTable)
	call OpenSRAM
	ld hl, wMoveIndexTable
	ld de, sMoveIndexTable
	ld bc, wMoveIndexTableEnd - wMoveIndexTable
	call CopyBytes
	pop af
	ldh [rSVBK], a
	jp CloseSRAM

SaveBox:
	call GetBoxAddress
	push de
	push af
	call SaveBoxAddress
	pop af
	call OpenSRAM
	pop hl
	call ComputeSavedBoxIndexTable
	call GetBoxPokemonIndexesAddress
	call OpenSRAM
	ld d, h
	ld e, l
	ld hl, wBoxPartialData
	ld bc, 2 * MONS_PER_BOX
	call CopyBytes
	call GetBoxAddress
	ld b, a
	ld c, 0
	farcall BillsPC_ConvertBoxData
	jp CloseSRAM

SaveChecksum:
	ld a, BANK(sMoveIndexTable)
	call OpenSRAM
	ld hl, sMoveIndexTable
	ld bc, wMoveIndexTableEnd - wMoveIndexTable
	call Checksum
	ld a, BANK(sSaveData)
	call OpenSRAM
	ld hl, sConversionTableChecksum
	ld a, e
	ld [hli], a
	ld [hl], d
	ld hl, sSaveData
	ld bc, sSaveDataEnd - sSaveData
	call Checksum
	ld a, e
	ld [sChecksum + 0], a
	ld a, d
	ld [sChecksum + 1], a
	call CloseSRAM
	ret

ValidateBackupSave:
	ld a, BANK(sBackupCheckValue1) ; aka BANK(sBackupCheckValue2)
	call OpenSRAM
	ld a, SAVE_CHECK_VALUE_1
	ld [sBackupCheckValue1], a
	ld a, SAVE_CHECK_VALUE_2
	ld [sBackupCheckValue2], a
	call CloseSRAM
	ret

SaveBackupOptions:
	ld a, BANK(sBackupOptions)
	call OpenSRAM
	ld hl, wOptions
	ld de, sBackupOptions
	ld bc, wOptionsEnd - wOptions
	call CopyBytes
	call CloseSRAM
	ret

SaveBackupPlayerData:
	ld a, BANK(sBackupPlayerData)
	call OpenSRAM
	ld hl, wPlayerData
	ld de, sBackupPlayerData
	ld bc, wPlayerDataEnd - wPlayerData
	call CopyBytes
	ld hl, wCurMapData
	ld de, sBackupCurMapData
	ld bc, wCurMapDataEnd - wCurMapData
	call CopyBytes
	call CloseSRAM
	ret

SaveBackupPokemonData:
	ld a, BANK(sBackupPokemonData)
	call OpenSRAM
	ld hl, wPokemonData
	ld de, sBackupPokemonData
	ld bc, wPokemonDataEnd - wPokemonData
	call CopyBytes
	call CloseSRAM
	ret

SaveBackupIndexTables:
	ld a, BANK(sBackupPokemonIndexTable)
	call OpenSRAM
	ldh a, [rSVBK]
	push af
	ld a, BANK("16-bit WRAM tables")
	ldh [rSVBK], a
	ld hl, wPokemonIndexTable
	ld de, sBackupPokemonIndexTable
	ld bc, wPokemonIndexTableEnd - wPokemonIndexTable
	call CopyBytes
	ld hl, wItemIndexTable
	ld de, sBackupItemIndexTable
	ld bc, wItemIndexTableEnd - wItemIndexTable
	call CopyBytes
	ld a, BANK(sBackupMoveIndexTable)
	call OpenSRAM
	ld hl, wMoveIndexTable
	ld de, sBackupMoveIndexTable
	ld bc, wMoveIndexTableEnd - wMoveIndexTable
	call CopyBytes
	pop af
	ldh [rSVBK], a
	jp CloseSRAM

SaveBackupChecksum:
	ld a, BANK(sBackupMoveIndexTable)
	call OpenSRAM
	ld hl, sBackupMoveIndexTable
	ld bc, wMoveIndexTableEnd - wMoveIndexTable
	call Checksum
	ld a, BANK(sBackupSaveData)
	call OpenSRAM
	ld hl, sBackupConversionTableChecksum
	ld a, e
	ld [hli], a
	ld [hl], d
	ld hl, sBackupSaveData
	ld bc, sBackupSaveDataEnd - sBackupSaveData
	call Checksum
	ld a, e
	ld [sBackupChecksum + 0], a
	ld a, d
	ld [sBackupChecksum + 1], a
	call CloseSRAM
	ret

TryLoadSaveFile:
	call VerifyChecksum
	jr nz, .backup
	call LoadPlayerData
	call LoadPokemonData
	call LoadIndexTables
	call LoadBox
	farcall RestorePartyMonMail
	farcall RestoreGSBallFlag
	farcall RestoreMysteryGift
	call ValidateBackupSave
	call SaveBackupOptions
	call SaveBackupPlayerData
	call SaveBackupPokemonData
	call SaveBackupIndexTables
	call SaveBackupChecksum
	and a
	ret

.backup
	call VerifyBackupChecksum
	jr nz, .corrupt
	call LoadBackupPlayerData
	call LoadBackupPokemonData
	call LoadBackupIndexTables
	call LoadBox
	farcall RestorePartyMonMail
	farcall RestoreGSBallFlag
	farcall RestoreMysteryGift
	call ValidateSave
	call SaveOptions
	call SavePlayerData
	call SavePokemonData
	call SaveIndexTables
	call SaveChecksum
	and a
	ret

.corrupt
	ld a, [wOptions]
	push af
	set NO_TEXT_SCROLL, a
	ld [wOptions], a
	ld hl, SaveFileCorruptedText
	call PrintText
	pop af
	ld [wOptions], a
	scf
	ret

TryLoadSaveData:
	xor a ; FALSE
	ld [wSaveFileExists], a
	call CheckPrimarySaveFile
	ld a, [wSaveFileExists]
	and a
	jr z, .backup

	ld a, BANK(sPlayerData)
	call OpenSRAM
	ld hl, sPlayerData + wStartDay - wPlayerData
	ld de, wStartDay
	ld bc, 8
	call CopyBytes
	ld hl, sPlayerData + wStatusFlags - wPlayerData
	ld de, wStatusFlags
	ld a, [hl]
	ld [de], a
	call CloseSRAM
	ret

.backup
	call CheckBackupSaveFile
	ld a, [wSaveFileExists]
	and a
	jr z, .corrupt

	ld a, BANK(sBackupPlayerData)
	call OpenSRAM
	ld hl, sBackupPlayerData + wStartDay - wPlayerData
	ld de, wStartDay
	ld bc, 8
	call CopyBytes
	ld hl, sBackupPlayerData + wStatusFlags - wPlayerData
	ld de, wStatusFlags
	ld a, [hl]
	ld [de], a
	call CloseSRAM
	ret

.corrupt
	ld hl, DefaultOptions
	ld de, wOptions
	ld bc, wOptionsEnd - wOptions
	call CopyBytes
	call ClearClock
	ret

INCLUDE "data/default_options.asm"

CheckPrimarySaveFile:
	ld a, BANK(sCheckValue1) ; aka BANK(sCheckValue2)
	call OpenSRAM
	ld a, [sCheckValue1]
	cp SAVE_CHECK_VALUE_1
	jr nz, .nope
	ld a, [sCheckValue2]
	cp SAVE_CHECK_VALUE_2
	jr nz, .nope
	ld hl, sOptions
	ld de, wOptions
	ld bc, wOptionsEnd - wOptions
	call CopyBytes
	call CloseSRAM
	ld a, TRUE
	ld [wSaveFileExists], a

.nope
	call CloseSRAM
	ret

CheckBackupSaveFile:
	ld a, BANK(sBackupCheckValue1) ; aka BANK(sBackupCheckValue2)
	call OpenSRAM
	ld a, [sBackupCheckValue1]
	cp SAVE_CHECK_VALUE_1
	jr nz, .nope
	ld a, [sBackupCheckValue2]
	cp SAVE_CHECK_VALUE_2
	jr nz, .nope
	ld hl, sBackupOptions
	ld de, wOptions
	ld bc, wOptionsEnd - wOptions
	call CopyBytes
	ld a, $2
	ld [wSaveFileExists], a

.nope
	call CloseSRAM
	ret

LoadPlayerData:
	ld a, BANK(sPlayerData)
	call OpenSRAM
	ld hl, sPlayerData
	ld de, wPlayerData
	ld bc, wPlayerDataEnd - wPlayerData
	call CopyBytes
	ld hl, sCurMapData
	ld de, wCurMapData
	ld bc, wCurMapDataEnd - wCurMapData
	call CopyBytes
	call CloseSRAM
	ld a, BANK(sBattleTowerChallengeState)
	call OpenSRAM
	ld a, [sBattleTowerChallengeState]
	cp BATTLETOWER_RECEIVED_REWARD
	jr nz, .not_4
	ld a, BATTLETOWER_WON_CHALLENGE
	ld [sBattleTowerChallengeState], a
.not_4
	call CloseSRAM
	ret

LoadPokemonData:
	ld a, BANK(sPokemonData)
	call OpenSRAM
	ld hl, sPokemonData
	ld de, wPokemonData
	ld bc, wPokemonDataEnd - wPokemonData
	call CopyBytes
	call CloseSRAM
	ret

LoadIndexTables:
	ldh a, [rSVBK]
	push af
	ld a, BANK("16-bit WRAM tables")
	ldh [rSVBK], a
	ld a, BANK(sPokemonIndexTable)
	call OpenSRAM
	ld hl, sPokemonIndexTable
	ld de, wPokemonIndexTable
	ld bc, wPokemonIndexTableEnd - wPokemonIndexTable
	call CopyBytes
	ld hl, sItemIndexTable
	ld de, wItemIndexTable
	ld bc, wItemIndexTableEnd - wItemIndexTable
	call CopyBytes
	ld a, BANK(sMoveIndexTable)
	call OpenSRAM
	ld hl, sMoveIndexTable
	ld de, wMoveIndexTable
	ld bc, wMoveIndexTableEnd - wMoveIndexTable
	call CopyBytes
	pop af
	ldh [rSVBK], a
	jp CloseSRAM

LoadBox:
	call GetBoxAddress
	call LoadBoxAddress
	lb bc, BANK(sBox), 1
	ld de, sBox
	farcall BillsPC_ConvertBoxData
	call GetBoxPokemonIndexesAddress
	call OpenSRAM
	ld de, wBoxPartialData
	ld bc, 2 * MONS_PER_BOX
	call CopyBytes
	ld a, BANK(sBox)
	call OpenSRAM
	push hl
	push de
	call UpdateItemIndexesForLoadedBox
	pop de
	pop hl
	call ClearIndexesForLoadedBox
	; GC the table now that lots of entries are free
	farcall ForceGarbageCollection
	call UpdateIndexesForLoadedBox
	jp CloseSRAM

VerifyChecksum:
	ld hl, sSaveData
	ld bc, sSaveDataEnd - sSaveData
	ld a, BANK(sSaveData)
	call OpenSRAM
	call Checksum
	ld a, [sChecksum + 0]
	cp e
	jr nz, .fail
	ld a, [sChecksum + 1]
	cp d
	jr nz, .fail
	ld hl, sConversionTableChecksum
	ld a, [hli]
	ld h, [hl]
	ld l, a
	push hl
	ld a, BANK(sMoveIndexTable)
	call OpenSRAM
	ld hl, sMoveIndexTable
	ld bc, wMoveIndexTableEnd - wMoveIndexTable
	call Checksum
	pop hl
	ld a, d
	cp h
	jr nz, .fail
	ld a, e
	cp l
.fail
	push af
	call CloseSRAM
	pop af
	ret

LoadBackupPlayerData:
	ld a, BANK(sBackupPlayerData)
	call OpenSRAM
	ld hl, sBackupPlayerData
	ld de, wPlayerData
	ld bc, wPlayerDataEnd - wPlayerData
	call CopyBytes
	ld hl, sBackupCurMapData
	ld de, wCurMapData
	ld bc, wCurMapDataEnd - wCurMapData
	call CopyBytes
	call CloseSRAM
	ret

LoadBackupPokemonData:
	ld a, BANK(sBackupPokemonData)
	call OpenSRAM
	ld hl, sBackupPokemonData
	ld de, wPokemonData
	ld bc, wPokemonDataEnd - wPokemonData
	call CopyBytes
	call CloseSRAM
	ret

LoadBackupIndexTables:
	ldh a, [rSVBK]
	push af
	ld a, BANK("16-bit WRAM tables")
	ldh [rSVBK], a
	ld a, BANK(sBackupPokemonIndexTable)
	call OpenSRAM
	ld hl, sBackupPokemonIndexTable
	ld de, wPokemonIndexTable
	ld bc, wPokemonIndexTableEnd - wPokemonIndexTable
	call CopyBytes
	ld hl, sBackupItemIndexTable
	ld de, wItemIndexTable
	ld bc, wItemIndexTableEnd - wItemIndexTable
	call CopyBytes
	ld a, BANK(sBackupMoveIndexTable)
	call OpenSRAM
	ld hl, sBackupMoveIndexTable
	ld de, wMoveIndexTable
	ld bc, wMoveIndexTableEnd - wMoveIndexTable
	call CopyBytes
	pop af
	ldh [rSVBK], a
	jp CloseSRAM

VerifyBackupChecksum:
	ld hl, sBackupSaveData
	ld bc, sBackupSaveDataEnd - sBackupSaveData
	ld a, BANK(sBackupSaveData)
	call OpenSRAM
	call Checksum
	ld a, [sBackupChecksum + 0]
	cp e
	jr nz, .fail
	ld a, [sBackupChecksum + 1]
	cp d
	jr nz, .fail
	ld hl, sBackupConversionTableChecksum
	ld a, [hli]
	ld h, [hl]
	ld l, a
	push hl
	ld a, BANK(sBackupMoveIndexTable)
	call OpenSRAM
	ld hl, sBackupMoveIndexTable
	ld bc, wMoveIndexTableEnd - wMoveIndexTable
	call Checksum
	pop hl
	ld a, d
	cp h
	jr nz, .fail
	ld a, e
	cp l
.fail
	push af
	call CloseSRAM
	pop af
	ret

_SaveData:
	; This is called within two scenarios:
	;   a) ErasePreviousSave (the process of erasing the save from a previous game file)
	;   b) unused mobile functionality
	; It is not part of a regular save.

	ld a, BANK(sCrystalData)
	call OpenSRAM
	ld hl, wCrystalData
	ld de, sCrystalData
	ld bc, wCrystalDataEnd - wCrystalData
	call CopyBytes

	; This block originally had some mobile functionality, but since we're still in
	; BANK(sCrystalData), it instead overwrites the sixteen wEventFlags starting at 1:s4_a60e with
	; garbage from wd479. This isn't an issue, since ErasePreviousSave is followed by a regular
	; save that unwrites the garbage.

	ld hl, wd479
	ld a, [hli]
	ld [s4_a60e + 0], a
	ld a, [hli]
	ld [s4_a60e + 1], a

	jp CloseSRAM

_LoadData:
	ld a, BANK(sCrystalData)
	call OpenSRAM
	ld hl, sCrystalData
	ld de, wCrystalData
	ld bc, wCrystalDataEnd - wCrystalData
	call CopyBytes

	; This block originally had some mobile functionality to mirror _SaveData above, but instead it
	; (harmlessly) writes the aforementioned wEventFlags to the unused wd479.

	ld hl, wd479
	ld a, [s4_a60e + 0]
	ld [hli], a
	ld a, [s4_a60e + 1]
	ld [hli], a

	jp CloseSRAM

GetBoxAddress:
	ld a, [wCurBox]
	cp NUM_BOXES
	jr c, .ok
	xor a
	ld [wCurBox], a

.ok
	ld e, a
	ld d, 0
	ld hl, BoxAddresses
rept 5
	add hl, de
endr
	ld a, [hli]
	push af
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop af
	ret

GetBoxPokemonIndexesAddress:
	ld a, [wCurBox]
	ld e, a
	ld d, 0
	ld hl, BoxAddresses + 5 * NUM_BOXES
	add hl, de
	add hl, de
	add hl, de
	ld a, [hli]
	push af
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop af
	ret
	ret

SaveBoxAddress:
; Save box via wBoxPartialData.
; We do this in three steps because the size of wBoxPartialData is less than
; the size of sBox.
	push hl
; Load the first part of the active box.
	push af
	push de
	ld a, BANK(sBox)
	call OpenSRAM
	ld hl, sBox
	ld de, wBoxPartialData
	ld bc, (wBoxPartialDataEnd - wBoxPartialData)
	call CopyBytes
	call CloseSRAM
	pop de
	pop af
; Save it to the target box.
	push af
	push de
	call OpenSRAM
	ld hl, wBoxPartialData
	ld bc, (wBoxPartialDataEnd - wBoxPartialData)
	call CopyBytes
	call CloseSRAM

; Load the second part of the active box.
	ld a, BANK(sBox)
	call OpenSRAM
	ld hl, sBox + (wBoxPartialDataEnd - wBoxPartialData)
	ld de, wBoxPartialData
	ld bc, (wBoxPartialDataEnd - wBoxPartialData)
	call CopyBytes
	call CloseSRAM
	pop de
	pop af

	ld hl, (wBoxPartialDataEnd - wBoxPartialData)
	add hl, de
	ld e, l
	ld d, h
; Save it to the next part of the target box.
	push af
	push de
	call OpenSRAM
	ld hl, wBoxPartialData
	ld bc, (wBoxPartialDataEnd - wBoxPartialData)
	call CopyBytes
	call CloseSRAM

; Load the third and final part of the active box.
	ld a, BANK(sBox)
	call OpenSRAM
	ld hl, sBox + (wBoxPartialDataEnd - wBoxPartialData) * 2
	ld de, wBoxPartialData
	ld bc, sBoxEnd - (sBox + (wBoxPartialDataEnd - wBoxPartialData) * 2) ; $8e
	call CopyBytes
	call CloseSRAM
	pop de
	pop af

	ld hl, (wBoxPartialDataEnd - wBoxPartialData)
	add hl, de
	ld e, l
	ld d, h
; Save it to the final part of the target box.
	call OpenSRAM
	ld hl, wBoxPartialData
	ld bc, sBoxEnd - (sBox + (wBoxPartialDataEnd - wBoxPartialData) * 2) ; $8e
	call CopyBytes
	call CloseSRAM

	pop hl
	ret

ComputeSavedBoxIndexTable:
	push hl
	ld a, [hl]
	ld de, wBoxPartialData
	and a
	jr z, .empty_box
	cp MONS_PER_BOX
	jr c, .valid_count
	ld a, MONS_PER_BOX
.valid_count
	ld bc, sBoxMons - sBox
	add hl, bc
	ld [wTempLoopCounter], a
	ld c, BOXMON_STRUCT_LENGTH
.loop
	ld a, [hli]
	push af
	ld a, [hl]
	push de
	push hl
	call GetItemIndexFromID
	ld d, h
	ld e, l
	pop hl
	ld a, e
	ld [hld], a
	ld [hl], d
	pop de
	pop af
	add hl, bc
	push hl
	call GetPokemonIndexFromID
	ld a, l
	ld [de], a
	inc de
	ld a, h
	ld [de], a
	inc de
	ld hl, wTempLoopCounter
	dec [hl]
	pop hl
	jr nz, .loop
.empty_box
	pop hl
	ld a, MONS_PER_BOX
	sub [hl]
	ret c
	add a, a
	ld h, d
	ld l, e
	ld c, a
	xor a
	ld b, a
	jp ByteFill

LoadBoxAddress:
; Load box via wBoxPartialData.
; We do this in three steps because the size of wBoxPartialData is less than
; the size of sBox.
	push hl
	ld l, e
	ld h, d
; Load part 1
	push af
	push hl
	call OpenSRAM
	ld de, wBoxPartialData
	ld bc, (wBoxPartialDataEnd - wBoxPartialData)
	call CopyBytes
	call CloseSRAM
	ld a, BANK(sBox)
	call OpenSRAM
	ld hl, wBoxPartialData
	ld de, sBox
	ld bc, (wBoxPartialDataEnd - wBoxPartialData)
	call CopyBytes
	call CloseSRAM
	pop hl
	pop af

	ld de, (wBoxPartialDataEnd - wBoxPartialData)
	add hl, de
; Load part 2
	push af
	push hl
	call OpenSRAM
	ld de, wBoxPartialData
	ld bc, (wBoxPartialDataEnd - wBoxPartialData)
	call CopyBytes
	call CloseSRAM
	ld a, BANK(sBox)
	call OpenSRAM
	ld hl, wBoxPartialData
	ld de, sBox + (wBoxPartialDataEnd - wBoxPartialData)
	ld bc, (wBoxPartialDataEnd - wBoxPartialData)
	call CopyBytes
	call CloseSRAM
	pop hl
	pop af
; Load part 3
	ld de, (wBoxPartialDataEnd - wBoxPartialData)
	add hl, de
	call OpenSRAM
	ld de, wBoxPartialData
	ld bc, sBoxEnd - (sBox + (wBoxPartialDataEnd - wBoxPartialData) * 2) ; $8e
	call CopyBytes
	call CloseSRAM
	ld a, BANK(sBox)
	call OpenSRAM
	ld hl, wBoxPartialData
	ld de, sBox + (wBoxPartialDataEnd - wBoxPartialData) * 2
	ld bc, sBoxEnd - (sBox + (wBoxPartialDataEnd - wBoxPartialData) * 2) ; $8e
	call CopyBytes
	call CloseSRAM

	pop hl
	ret

ClearIndexesForLoadedBox:
	ld hl, sBoxMon1Species
	ld bc, BOXMON_STRUCT_LENGTH
	ld a, MONS_PER_BOX
.loop
	ld [hl], 0
	add hl, bc
	dec a
	jr nz, .loop
	ret

UpdateItemIndexesForLoadedBox:
	ld de, sBox
	ld a, [de]
	cp MONS_PER_BOX
	jr c, .count_OK
	ld a, MONS_PER_BOX
	ld [de], a
.count_OK
	inc de
	and a
	ret z
	ld [wTempLoopCounter], a
	ld hl, sBoxMon1Species
.loop
	push hl
	ld a, [hli]
	ld l, [hl]
	ld h, a
	call GetItemIDFromIndex
	pop hl
	inc hl
	ld [hl], a
	dec hl
	ld de, BOXMON_STRUCT_LENGTH
	add hl, de
	push hl
	ld hl, wTempLoopCounter
	dec [hl]
	pop hl
	jr nz, .loop
	ret

UpdateIndexesForLoadedBox:
	ld de, sBox
	ld a, [de]
	cp MONS_PER_BOX
	jr c, .count_OK
	ld a, MONS_PER_BOX
	ld [de], a
.count_OK
	inc de
	and a
	jr z, .done
	ld [wTempLoopCounter], a
	ld bc, sBoxMon1Species
	ld hl, wBoxPartialData - 1
.loop
	inc hl
	ld a, [hli]
	push hl
	ld h, [hl]
	ld l, a
	call GetPokemonIDFromIndex
	ld [bc], a
	ld a, [de]
	cp EGG
	jr z, .is_egg
	ld a, [bc]
	ld [de], a
.is_egg
	ld hl, BOXMON_STRUCT_LENGTH
	add hl, bc
	ld b, h
	ld c, l
	inc de
	ld hl, wTempLoopCounter
	dec [hl]
	pop hl
	jr nz, .loop
.done
	ld a, -1
	ld [de], a
	ret

EraseBoxes:
	ld hl, BoxAddresses
	ld c, NUM_BOXES
.next
	push bc
	ld a, [hli]
	call OpenSRAM
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	xor a
	ld [de], a
	inc de
	ld a, -1
	ld [de], a
	inc de
	ld bc, sBoxEnd - (sBox + 2)
.clear
	xor a
	ld [de], a
	inc de
	dec bc
	ld a, b
	or c
	jr nz, .clear
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, -1
	ld [de], a
	inc de
	xor a
	ld [de], a
	call CloseSRAM
	pop bc
	dec c
	jr nz, .next
	ld e, NUM_BOXES
.index_loop
	ld a, [hli]
	call OpenSRAM
	ld a, [hli]
	ld b, a
	ld a, [hli]
	push hl
	ld h, a
	ld l, b
	xor a
	ld bc, 2 * MONS_PER_BOX
	call ByteFill
	pop hl
	dec e
	jr nz, .index_loop
	ret

BoxAddresses:
	table_width 5, BoxAddresses
for n, 1, NUM_BOXES + 1
	db BANK(sBox{d:n}) ; aka BANK(sBox{d:n}End)
	dw sBox{d:n}, sBox{d:n}End
endr
	assert_table_length NUM_BOXES

	; index addresses
BoxIndexAddresses:
	table_width 3, BoxIndexAddresses
	dba sBox1PokemonIndexes
	dba sBox2PokemonIndexes
	dba sBox3PokemonIndexes
	dba sBox4PokemonIndexes
	dba sBox5PokemonIndexes
	dba sBox6PokemonIndexes
	dba sBox7PokemonIndexes
	dba sBox8PokemonIndexes
	dba sBox9PokemonIndexes
	dba sBox10PokemonIndexes
	dba sBox11PokemonIndexes
	dba sBox12PokemonIndexes
	dba sBox13PokemonIndexes
	dba sBox14PokemonIndexes
	assert_table_length NUM_BOXES

Checksum:
	ld de, 0
.loop
	ld a, [hli]
	add e
	ld e, a
	ld a, 0
	adc d
	ld d, a
	dec bc
	ld a, b
	or c
	jr nz, .loop
	ret

WouldYouLikeToSaveTheGameText:
	text_far _WouldYouLikeToSaveTheGameText
	text_end

SavedTheGameText:
	text_far _SavedTheGameText
	text_end

AnotherSaveFileText:
	text_far _AnotherSaveFileText
	text_end

SaveFileCorruptedText:
	text_far _SaveFileCorruptedText
	text_end

ChangeBoxSaveText:
	text_far _ChangeBoxSaveText
	text_end

MoveMonWOMailSaveText:
	text_far _MoveMonWOMailSaveText
	text_end
