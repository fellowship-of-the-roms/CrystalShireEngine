PlaceWaitingText::
	hlcoord 3, 10
	ld b, 1
	ld c, 11

	ld a, [wBattleMode]
	and a
	jr z, .notinbattle

	call Textbox
	jr .proceed

.notinbattle
	predef LinkTextboxAtHL

.proceed
	hlcoord 4, 11
	ld de, .Waiting
	rst PlaceString
	ld c, 50
	jmp DelayFrames

.Waiting:
	db "Waiting...!@"
