_Diploma:
	call PlaceDiplomaOnScreen
	jmp WaitPressAorB_BlinkCursor

PlaceDiplomaOnScreen:
	call ClearBGPalettes
	call ClearTilemap
	call ClearSprites
	call DisableLCD
	ld hl, DiplomaGFX
	ld de, vTiles2
	call Decompress
	ld hl, DiplomaPage1Tilemap
	decoord 0, 0
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	rst CopyBytes
	ld de, .Player
	hlcoord 2, 5
	rst PlaceString
	ld de, .EmptyString
	hlcoord 15, 5
	rst PlaceString
	ld de, wPlayerName
	hlcoord 9, 5
	rst PlaceString
	ld de, .Certification
	hlcoord 2, 8
	rst PlaceString
	call EnableLCD
	call WaitBGMap
	ld b, SCGB_DIPLOMA
	call GetSGBLayout
	call SetPalettes
	jmp DelayFrame

.Player:
	db "PLAYER@"

.EmptyString:
	db "@"

.Certification:
	db   "This certifies"
	next "that you have"
	next "completed the"
	next "new #DEX."
	next "Congratulations!"
	db   "@"

PrintDiplomaPage2:
	hlcoord 0, 0
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	ld a, " "
	rst ByteFill
	ld hl, DiplomaPage2Tilemap
	decoord 0, 0
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	rst CopyBytes
	ld de, .GameFreak
	hlcoord 8, 0
	rst PlaceString
	ld de, .PlayTime
	hlcoord 3, 15
	rst PlaceString
	hlcoord 12, 15
	ld de, wGameTimeHours
	lb bc, 2, 4
	call PrintNum
	ld [hl], $67 ; colon
	inc hl
	ld de, wGameTimeMinutes
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	jmp PrintNum

.PlayTime: db "PLAY TIME@"
.GameFreak: db "GAME FREAK@"

DiplomaGFX:
INCBIN "gfx/diploma/diploma.2bpp.lz"

DiplomaPage1Tilemap:
INCBIN "gfx/diploma/page1.tilemap"

DiplomaPage2Tilemap:
INCBIN "gfx/diploma/page2.tilemap"