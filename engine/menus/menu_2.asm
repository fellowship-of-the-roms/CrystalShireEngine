PlaceMenuItemName:
	push de
	ld a, [wMenuSelection]
	jr _PlaceSimpleMenuQuantity
	
PlaceMenuItemQuantity:
	push de
	ld a, [wMenuSelection]
	jr _PlaceMenuQuantity

PlaceMenuItemBallName:
	push de
	ld a, [wMenuSelection]
	ld h, HIGH(FIRST_BALL_ITEM)
	ld l, a
	jr _PlaceSimpleMenuQuantity16bit

PlaceMenuKeyItemName:
	push de
	ld a, [wMenuSelection]
	ld h, HIGH(FIRST_KEY_ITEM)
	ld l, a
; fallthrough
_PlaceSimpleMenuQuantity16bit:
	call GetItemIDFromIndex
_PlaceSimpleMenuQuantity:
	ld [wNamedObjectIndex], a
	call GetItemName
	pop hl
	jmp PlaceString

PlaceMenuItemBallQuantity:
	push de
	ld a, [wMenuSelection]
	ld h, HIGH(FIRST_BALL_ITEM)
	ld l, a
	jr _PlaceMenuQuantity16bit

PlaceMenuKeyItemQuantity:
	push de
	ld a, [wMenuSelection]
	ld h, HIGH(FIRST_KEY_ITEM)
	ld l, a
; fallthrough
_PlaceMenuQuantity16bit:
	call GetItemIDFromIndex
_PlaceMenuQuantity:
	ld [wCurItem], a
	farcall _CheckTossableItem
	ld a, [wItemAttributeValue]
	pop hl
	and a
	ret nz
	ld de, $15
	add hl, de
	ld a, "x"
	ld [hli], a
	ld de, wMenuSelectionQuantity
	lb bc, 1, 2
	jmp PrintNum

PlaceMoneyTopRight:
	ld hl, MoneyTopRightMenuHeader
	call CopyMenuHeader
	jr PlaceMoneyTextbox

PlaceMoneyBottomLeft:
	ld hl, MoneyBottomLeftMenuHeader
	call CopyMenuHeader
	jr PlaceMoneyTextbox

PlaceMoneyAtTopLeftOfTextbox:
	ld hl, MoneyTopRightMenuHeader
	lb de, 0, 11
	call OffsetMenuHeader

PlaceMoneyTextbox:
	call MenuBox
	call MenuBoxCoord2Tile
	ld de, SCREEN_WIDTH + 1
	add hl, de
	ld de, wMoney
	lb bc, PRINTNUM_MONEY | 3, 6
	jmp PrintNum

MoneyTopRightMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 11, 0, SCREEN_WIDTH - 1, 2
	dw NULL
	db 1 ; default option

MoneyBottomLeftMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 11, 8, 13
	dw NULL
	db 1 ; default option

DisplayCoinCaseBalance:
	; Place a text box of size 1x7 at 11, 0.
	hlcoord 11, 0
	lb bc, 1, 7
	call Textbox
	hlcoord 12, 0
	ld de, CoinString
	rst PlaceString
	hlcoord 17, 1
	ld de, ShowMoney_TerminatorString
	rst PlaceString
	ld de, wCoins
	lb bc, 2, 4
	hlcoord 13, 1
	jmp PrintNum

DisplayMoneyAndCoinBalance:
	hlcoord 5, 0
	lb bc, 3, 13
	call Textbox
	hlcoord 6, 1
	ld de, MoneyString
	rst PlaceString
	hlcoord 12, 1
	ld de, wMoney
	lb bc, PRINTNUM_MONEY | 3, 6
	call PrintNum
	hlcoord 6, 3
	ld de, CoinString
	rst PlaceString
	hlcoord 15, 3
	ld de, wCoins
	lb bc, 2, 4
	jmp PrintNum

MoneyString:
	db "MONEY@"
CoinString:
	db "COIN@"
ShowMoney_TerminatorString:
	db "@"

StartMenu_DrawBugContestStatusBox:
	hlcoord 0, 0
	lb bc, 5, 17
	jmp Textbox

StartMenu_PrintBugContestStatus:
	ld hl, wOptions
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]
	call StartMenu_DrawBugContestStatusBox
	hlcoord 1, 5
	ld de, .BallsString
	rst PlaceString
	hlcoord 8, 5
	ld de, wParkBallsRemaining
	lb bc, PRINTNUM_LEFTALIGN | 1, 2
	call PrintNum
	hlcoord 1, 1
	ld de, .CaughtString
	rst PlaceString
	ld a, [wContestMon]
	and a
	ld de, .NoneString
	jr z, .no_contest_mon
	ld [wNamedObjectIndex], a
	call GetPokemonName

.no_contest_mon
	hlcoord 8, 1
	rst PlaceString
	ld a, [wContestMon]
	and a
	jr z, .skip_level
	hlcoord 1, 3
	ld de, .LevelString
	rst PlaceString
	ld a, [wContestMonLevel]
	ld h, b
	ld l, c
	inc hl
	ld c, 3
	call Print8BitNumLeftAlign

.skip_level
	pop af
	ld [wOptions], a
	ret

.CaughtString:
	db "CAUGHT@"
.BallsString:
	db "BALLS:@"
.NoneString:
	db "None@"
.LevelString:
	db "LEVEL@"

FindApricornsInBag:
; Checks the bag for Apricorns.
	ld hl, wKurtApricornCount
	xor a
	ld [hli], a
	assert wKurtApricornCount + 1 == wKurtApricornItems
	dec a
	ld bc, 10
	rst ByteFill

	ld hl, ApricornBalls
.loop
	push hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	cphl16 $ffff
	jr z, .done
	call GetItemIDFromIndex
	ld [wCurItem], a
	ld hl, wNumItems
	call CheckItem
	pop hl
	inc hl
	inc hl
	call c, .addtobuffer
	jr .loop
.done
	pop hl
	farcall ItemTableGarbageCollection
	ld a, [wKurtApricornCount]
	and a
	ret nz
	scf
	ret

.addtobuffer:
	push hl
	ld hl, wKurtApricornCount
	inc [hl]
	ld e, [hl]
	ld d, 0
	add hl, de
	ld a, [wCurItem]
	ld [hl], a
	pop hl
	ret

INCLUDE "data/items/apricorn_balls.asm"
