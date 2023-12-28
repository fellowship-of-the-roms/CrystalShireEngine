UpdateItemDescription:
	ld a, [wMenuSelection]
	ld [wCurSpecies], a
	hlcoord 0, 12
	lb bc, 4, SCREEN_WIDTH - 2
	call Textbox
	ld a, [wMenuSelection]
	cp -1
	ret z
	decoord 1, 14
	farjp PrintItemDescription

UpdateItemBallDescription:
	ld a, [wMenuSelection]
	ld h, HIGH(FIRST_BALL_ITEM)
	ld l, a
	jr UpdateDescription16bit

UpdateKeyItemDescription:
	ld a, [wMenuSelection]
	ld h, HIGH(FIRST_KEY_ITEM)
	ld l, a
; fallthrough
UpdateDescription16bit:
	call GetItemIDFromIndex
	ld [wCurSpecies], a
	hlcoord 0, 12
	lb bc, 4, SCREEN_WIDTH - 2
	call Textbox
	ld a, [wMenuSelection]
	cp -1
	ret z
	decoord 1, 14
	farjp PrintItemDescription
