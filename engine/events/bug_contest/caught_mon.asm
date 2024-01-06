BugContest_SetCaughtContestMon:
	ld a, [wContestMon]
	and a
	jr z, .firstcatch
	ld [wNamedObjectIndex], a
	call DisplayAlreadyCaughtText
	call DisplayCaughtContestMonStats
	lb bc, 14, 7
	call PlaceYesNoBox
	ret c

.firstcatch
	call .generatestats
	ld a, [wTempEnemyMonSpecies]
	ld [wNamedObjectIndex], a
	call GetPokemonName
	ld hl, .ContestCaughtMonText
	jmp PrintText

.generatestats
	ld a, [wTempEnemyMonSpecies]
	ld [wCurSpecies], a
	ld [wCurPartySpecies], a
	call GetBaseData
	xor a
	ld bc, PARTYMON_STRUCT_LENGTH
	ld hl, wContestMon
	rst ByteFill
	xor a
	ld [wMonType], a
	ld hl, wContestMon
	jmp GeneratePartyMonStats

.ContestCaughtMonText:
	text_far _ContestCaughtMonText
	text_end
