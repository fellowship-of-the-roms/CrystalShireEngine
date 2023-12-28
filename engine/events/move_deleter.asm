MoveDeletion:
	ld hl, .DeleterIntroText
	call PrintText
	call YesNoBox
	jr c, .declined
	ld hl, .DeleterAskWhichMonText
	call PrintText
	farcall SelectMonFromParty
	jr c, .declined
	ld a, [wCurPartySpecies]
	cp EGG
	jr z, .egg
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1Moves + 1
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld a, [hl]
	and a
	jr z, .onlyonemove
	ld hl, .DeleterAskWhichMoveText
	call PrintText
	call LoadStandardMenuHeader
	farcall ChooseMoveToDelete
	push af
	call ReturnToMapWithSpeechTextbox
	pop af
	jr c, .declined
	ld a, [wMenuCursorY]
	push af
	ld a, [wCurSpecies]
	ld [wNamedObjectIndex], a
	call GetMoveName
	ld hl, .AskDeleteMoveText
	call PrintText
	call YesNoBox
	pop bc
	jr c, .declined
	call .DeleteMove
	call WaitSFX
	ld de, SFX_MOVE_DELETED
	call PlaySFX
	call WaitSFX
	ld hl, .DeleterForgotMoveText
	jmp PrintText

.egg
	ld hl, .MailEggText
	jmp PrintText

.declined
	ld hl, .DeleterNoComeAgainText
	jmp PrintText

.onlyonemove
	ld hl, .MoveKnowsOneText
	jmp PrintText

.MoveKnowsOneText:
	text_far _MoveKnowsOneText
	text_end

.AskDeleteMoveText:
	text_far _AskDeleteMoveText
	text_end

.DeleterForgotMoveText:
	text_far _DeleterForgotMoveText
	text_end

.MailEggText:
	text_far _DeleterEggText
	text_end

.DeleterNoComeAgainText:
	text_far _DeleterNoComeAgainText
	text_end

.DeleterAskWhichMoveText:
	text_far _DeleterAskWhichMoveText
	text_end

.DeleterIntroText:
	text_far _DeleterIntroText
	text_end

.DeleterAskWhichMonText:
	text_far _DeleterAskWhichMonText
	text_end

.DeleteMove:
	ld a, b
	push bc
	dec a
	ld c, a
	ld b, 0
	ld hl, wPartyMon1Moves
	add hl, bc
	ld a, [wCurPartyMon]
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	pop bc
	push bc
	inc b
.loop
	ld a, b
	cp NUM_MOVES + 1
	jr z, .okay
	inc hl
	ld a, [hld]
	ld [hli], a
	inc b
	jr .loop

.okay
	xor a
	ld [hl], a
	pop bc

	ld a, b
	push bc
	dec a
	ld c, a
	ld b, 0
	ld hl, wPartyMon1PP
	add hl, bc
	ld a, [wCurPartyMon]
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	pop bc
	inc b
.loop2
	ld a, b
	cp NUM_MOVES + 1
	jr z, .done
	inc hl
	ld a, [hld]
	ld [hli], a
	inc b
	jr .loop2

.done
	xor a
	ld [hl], a
	ret
