MobileMenu_InitMenuBuffers:
	ld hl, w2DMenuCursorInitY
	ld a, 2
	ld [hli], a
	ld a, 5 ; w2DMenuCursorInitX
	ld [hli], a
	ld a, 5 ; w2DMenuNumRows
	ld [hli], a
	ld a, 1 ; w2DMenuNumCols
	ld [hli], a
	ld [hl], $0 ; w2DMenuFlags1
	set 5, [hl]
	inc hl
	xor a ; w2DMenuFlags2
	ld [hli], a
	ld a, $20 ; w2DMenuCursorOffsets
	ld [hli], a
	; could have done "ld a, A_BUTTON | D_UP | D_DOWN | B_BUTTON" instead
	ld a, A_BUTTON
	add D_UP
	add D_DOWN
	add B_BUTTON
	ld [hli], a ; wMenuJoypadFilter
	ld a, 1
	ld [hli], a ; wMenuCursorY, wMenuCursorX
	ld [hli], a ; wMenuCursorY, wMenuCursorX
	ret

Function4a118:
	ld hl, w2DMenuCursorInitY
	ld a, $1
	ld [hli], a
	ld a, $d
	ld [hli], a
	ld a, $3
	ld [hli], a
	ld a, $1
	ld [hli], a
	ld [hl], $0
	set 5, [hl]
	inc hl
	xor a
	ld [hli], a
	ld a, $20
	ld [hli], a
	ld a, $1
	add $2
	ld [hli], a
	ld a, $1
	ld [hli], a
	ld [hli], a
	ret

String_4a1ef:
	db   "モバイルセンター¯えらぶ"
	next "ログインパスワード¯いれる"
	next "もどる@"

Strings_4a23d:
	db   "いつも　せつぞく¯する"
	next "モバイルセンター¯えらびます@"

	db   "モバイルセンター<NI>せつぞくするとき"
	next "つかうパスワード¯ほぞんできます@"

	db   "まえ<NO>がめん　<NI>もどります@"

	db   "@"

Function4a28a:
	hlcoord 2, 3
	lb bc, 6, 1
	ld a, " "
	call Function4a6d8
	call PlaceHollowCursor
	call WaitBGMap
	call LoadStandardMenuHeader
	ld a, $5
	call OpenSRAM
	ld a, [$aa4b]
	call CloseSRAM
	and a
	jr z, .asm_4a2df
	hlcoord 12, 0
	ld b, $5
	ld c, $6
	call Function48cdc
	hlcoord 14, 1
	ld de, String_4a34b
	rst PlaceString
	farcall Mobile_OpenAndCloseMenu_HDMATransferTilemapAndAttrmap
	call Function4a118
	call ScrollingMenuJoypad
	push af
	call PlayClickSFX
	pop af
	bit B_BUTTON_F, a
	jr nz, .quit
	ld a, [wMenuCursorY]
	cp $2
	jr z, .DeleteLoginPassword
	cp $3
	jr z, .quit
.asm_4a2df
	farcall Function11765d
	call ClearBGPalettes
	call ExitMenu
	call LoadFontsExtra
	scf
	ret

.DeleteLoginPassword:
	call PlaceHollowCursor
	ld hl, DeleteSavedLoginPasswordText
	call PrintText
	hlcoord 14, 7
	ld b, 3
	ld c, 4
	call Textbox
	farcall Mobile_OpenAndCloseMenu_HDMATransferTilemapAndAttrmap
	ld hl, DeletePassword_YesNo_MenuHeader
	call LoadMenuHeader
	call VerticalMenu
	bit B_BUTTON_F, a
	jr nz, .dont_delete_password
	ld a, [wMenuCursorY]
	cp $2
	jr z, .dont_delete_password
	ld a, BANK(sMobileLoginPassword)
	call OpenSRAM
	ld hl, sMobileLoginPassword
	xor a
	ld bc, MOBILE_LOGIN_PASSWORD_LENGTH
	rst ByteFill
	call CloseSRAM
	ld hl, DeletedTheLoginPasswordText
	call PrintText
	call JoyWaitAorB
.dont_delete_password
	call ExitMenu
.quit
	call ExitMenu
	farcall Mobile_OpenAndCloseMenu_HDMATransferTilemapAndAttrmap
	xor a
	ret

MenuHeader_0x4a346: ; unreferenced
	db MENU_BACKUP_TILES ; flags
	menu_coords 12, 0, SCREEN_WIDTH - 1, 6

String_4a34b:
	db   "いれなおす"
	next "けす"
	next "もどる@"

DeleteSavedLoginPasswordText:
	text_far _DeleteSavedLoginPasswordText
	text_end

DeletedTheLoginPasswordText:
	text_far _DeletedTheLoginPasswordText
	text_end

DeletePassword_YesNo_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 14, 7, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw MenuData_0x4a36a
	db 2 ; default option

MenuData_0x4a36a:
	db STATICMENU_CURSOR | STATICMENU_NO_TOP_SPACING | STATICMENU_WRAP ; flags
	db 2 ; items
	db "はい@"
	db "いいえ@"

Function4a373:
	ld hl, w2DMenuCursorInitY
	ld a, $4
	ld [hli], a
	ld a, $2
	ld [hli], a
	ld a, $3
	ld [hli], a
	ld a, $1
	ld [hli], a
	ld [hl], $0
	set 5, [hl]
	inc hl
	xor a
	ld [hli], a
	ld a, $20
	ld [hli], a
	ld a, $1
	add $40
	add $80
	add $2
	ld [hli], a
	ld a, $1
	ld [hli], a
	ld [hli], a
	ret

Function4a3aa:
	hlcoord 0, 0
	lb bc, 3, 1
	xor a
	call Function4a6d8
	lb bc, 1, 1
	ld a, $1
	call Function4a6d8
	lb bc, 1, 1
	xor a
	call Function4a6d8
	lb bc, 1, 1
	ld a, $1
	call Function4a6d8
	lb bc, 4, 1
	ld a, $2
	call Function4a6d8
	lb bc, 1, 1
	ld a, $3
	call Function4a6d8
	lb bc, 1, 1
	ld a, " "
	call Function4a6d8
	hlcoord 1, 0
	ld a, $1
	lb bc, 3, 18
	call Function4a6d8
	lb bc, 1, 18
	ld a, $0
	call Function4a6d8
	lb bc, 1, 18
	ld a, $1
	call Function4a6d8
	lb bc, 1, 18
	ld a, $2
	call Function4a6d8
	lb bc, 11, 18
	ld a, " "
	call Function4a6d8
	hlcoord 19, 0
	lb bc, 3, 1
	ld a, $0
	call Function4a6d8
	lb bc, 1, 1
	ld a, $1
	call Function4a6d8
	lb bc, 1, 1
	xor a
	call Function4a6d8
	lb bc, 1, 1
	ld a, $1
	call Function4a6d8
	lb bc, 4, 1
	ld a, $2
	call Function4a6d8
	lb bc, 1, 1
	ld a, $3
	call Function4a6d8
	lb bc, 1, 1
	ld a, " "
	jmp Function4a6d8

Function4a449: ; unreferenced
	ld bc, 3 * SCREEN_WIDTH
	ld a, $0
	hlcoord 0, 0
	rst ByteFill
	ld bc, 2 * SCREEN_WIDTH
	ld a, $1
	rst ByteFill
	ld bc, 2 * SCREEN_WIDTH
	ld a, $0
	rst ByteFill
	ld bc, 2 * SCREEN_WIDTH
	ld a, $1
	rst ByteFill
	ld bc, SCREEN_WIDTH
	ld a, $2
	rst ByteFill
	ld bc, SCREEN_WIDTH
	ld a, $3
	rst ByteFill
	ld bc, SCREEN_WIDTH
	ld a, " "
	jmp ByteFill

Function4a492:
	jmp _CrystalCGB_MobileLayout0

MainMenu_MobileStudium:
	ld a, [wStartDay]
	ld b, a
	ld a, [wStartHour]
	ld c, a
	ld a, [wStartMinute]
	ld d, a
	ld a, [wStartSecond]
	ld e, a
	push bc
	push de
	farcall MobileStudium
	call ClearBGPalettes
	pop de
	pop bc
	ld a, b
	ld [wStartDay], a
	ld a, c
	ld [wStartHour], a
	ld a, d
	ld [wStartMinute], a
	ld a, e
	ld [wStartSecond], a
	ret

Function4a680:
	ld hl, w2DMenuCursorInitY
	ld a, $2
	ld [hli], a
	ld a, $3
	ld [hli], a
	ld a, $5
	ld [hli], a
	ld a, $1
	ld [hli], a
	ld [hl], $0
	set 5, [hl]
	inc hl
	xor a
	ld [hli], a
	ld a, $20
	ld [hli], a
	ld a, $1
	add $40
	add $80
	add $2
	ld [hli], a
	ld a, $1
	ld [hli], a
	ld [hli], a
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ret

Function4a6c5:
	ld a, $5
	ld [wMusicFade], a
	ld a, e
	ld [wMusicFadeID], a
	ld a, d
	ld [wMusicFadeID + 1], a
	ld c, 22
	jmp DelayFrames

Function4a6d8:
	push bc
	push hl
.asm_4a6da
	ld [hli], a
	dec c
	jr nz, .asm_4a6da
	pop hl
	ld bc, SCREEN_WIDTH
	add hl, bc
	pop bc
	dec b
	jr nz, Function4a6d8
	ret

if DEF(_DEBUG)
MainMenu_DebugRoom:
	farjp _DebugRoom
endc
