_InitScrollingMenu::
	xor a
	ld [wMenuJoypad], a
	ldh [hBGMapMode], a
	inc a
	ldh [hInMenu], a
	call InitScrollingMenuCursor
	call ScrollingMenu_InitFlags
	call ScrollingMenu_ValidateSwitchItem
	call ScrollingMenu_InitDisplay
	call ApplyTilemap
	xor a
	ldh [hBGMapMode], a
	ret

_ScrollingMenu::
.loop
	call ScrollingMenuJoyAction
	jr c, .exit
	call z, .zero
	jr .loop

.exit
	call MenuClickSound
	ld [wMenuJoypad], a
	xor a
	ldh [hInMenu], a
	ret

.zero
	call ScrollingMenu_InitDisplay
	ld a, 1
	ldh [hBGMapMode], a
	ld c, 3
	call DelayFrames
	xor a
	ldh [hBGMapMode], a
	ret

ScrollingMenu_InitDisplay:
	xor a
	ldh [hBGMapMode], a
	ld hl, wOptions
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]
	call ScrollingMenu_UpdateDisplay
	call ScrollingMenu_PlaceCursor
	call ScrollingMenu_CheckCallFunction3
	pop af
	ld [wOptions], a
	ret

ScrollingMenuJoyAction:
.loop
	call ScrollingMenuJoypad
	ldh a, [hJoyLast]
	and PAD_CTRL_PAD
	ld b, a
	ldh a, [hJoyPressed]
	and PAD_BUTTONS
	or b
	bit B_PAD_A, a
	jr nz, .a_button
	bit B_PAD_B, a
	jr nz, .b_button
	bit B_PAD_SELECT, a
	jr nz, .select
	bit B_PAD_START, a
	jr nz, .start
	bit B_PAD_RIGHT, a
	jmp nz, .d_right
	bit B_PAD_LEFT, a
	jr nz, .d_left
	bit B_PAD_UP, a
	jmp nz, .d_up
	bit B_PAD_DOWN, a
	jmp nz, .d_down
	jr .loop

.a_button
	call PlaceHollowCursor
	ld a, [wMenuCursorY]
	dec a
	call ScrollingMenu_GetListItemCoordAndFunctionArgs
	ld a, [wMenuSelection]
	ld [wCurItem], a
	call CheckItemPocketConversion
	ld a, [wMenuSelectionQuantity]
	ld [wItemQuantity], a
	call ScrollingMenu_GetCursorPosition
	dec a
	ld [wScrollingMenuCursorPosition], a
	ld [wCurItemQuantity], a
	ld a, [wMenuSelection]
	cp -1
	jr z, .b_button
	ld a, PAD_A
	scf
	ret

.b_button
	ld a, PAD_B
	scf
	ret

.select
	ld a, [wMenuDataFlags]
	bit SCROLLINGMENU_ENABLE_SELECT_F, a
	jmp z, xor_a_dec_a
	ld a, [wMenuCursorY]
	dec a
	call ScrollingMenu_GetListItemCoordAndFunctionArgs
	ld a, [wMenuSelection]
	cp -1
	jmp z, xor_a_dec_a
	call ScrollingMenu_GetCursorPosition
	dec a
	ld [wScrollingMenuCursorPosition], a
	ld a, PAD_SELECT
	scf
	ret

.start
	ld a, [wMenuDataFlags]
	bit SCROLLINGMENU_ENABLE_START_F, a
	jmp z, xor_a_dec_a
	ld a, PAD_START
	scf
	ret

.d_left
	ld hl, w2DMenuFlags2
	bit _2DMENU_DISABLE_JOYPAD_FILTER_F, [hl]
	jmp z, xor_a_dec_a
	ld a, [wMenuDataFlags]
	bit SCROLLINGMENU_ENABLE_LEFT_F, a
	jmp z, xor_a_dec_a
	ld a, PAD_LEFT
	scf
	ret

.d_right
	ld hl, w2DMenuFlags2
	bit _2DMENU_DISABLE_JOYPAD_FILTER_F, [hl]
	jmp z, xor_a_dec_a
	ld a, [wMenuDataFlags]
	bit SCROLLINGMENU_ENABLE_RIGHT_F, a
	jmp z, xor_a_dec_a
	ld a, PAD_RIGHT
	scf
	ret

.d_up
	ld hl, w2DMenuFlags2
	bit _2DMENU_DISABLE_JOYPAD_FILTER_F, [hl]
	jmp z, xor_a
	ld hl, wMenuScrollPosition
	ld a, [hl]
	and a
	jr z, .xor_dec_up
	dec [hl]
	jmp xor_a

.xor_dec_up
	jmp xor_a_dec_a

.d_down
	ld hl, w2DMenuFlags2
	bit _2DMENU_DISABLE_JOYPAD_FILTER_F, [hl]
	jmp z, xor_a
	ld hl, wMenuScrollPosition
	ld a, [wMenuData_ScrollingMenuHeight]
	add [hl]
	ld b, a
	ld a, [wScrollingMenuListSize]
	cp b
	jr c, .xor_dec_down
	inc [hl]
	jmp xor_a

.xor_dec_down
	jmp xor_a_dec_a

ScrollingMenu_GetCursorPosition:
	ld a, [wMenuScrollPosition]
	ld c, a
	ld a, [wMenuCursorY]
	add c
	ld c, a
	ret

ScrollingMenu_ClearLeftColumn:
	call MenuBoxCoord2Tile
	ld de, SCREEN_WIDTH
	add hl, de
	ld de, 2 * SCREEN_WIDTH
	ld a, [wMenuData_ScrollingMenuHeight]
.loop
	ld [hl], ' '
	add hl, de
	dec a
	jr nz, .loop
	ret

InitScrollingMenuCursor:
	ld hl, wMenuData_ItemsPointerAddr
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wMenuData_ItemsPointerBank]
	call GetFarByte
	ld [wScrollingMenuListSize], a
	ld a, [wMenuData_ScrollingMenuHeight]
	ld c, a
	ld a, [wMenuScrollPosition]
	add c
	ld c, a
	ld a, [wScrollingMenuListSize]
	inc a
	cp c
	jr nc, .skip
	ld a, [wMenuData_ScrollingMenuHeight]
	ld c, a
	ld a, [wScrollingMenuListSize]
	inc a
	sub c
	jr nc, .store
	xor a

.store
	ld [wMenuScrollPosition], a

.skip
	ld a, [wMenuScrollPosition]
	ld c, a
	ld a, [wMenuCursorPosition]
	add c
	ld b, a
	ld a, [wScrollingMenuListSize]
	inc a
	cp b
	jr c, .wrap
	ret nc

.wrap
	xor a
	ld [wMenuScrollPosition], a
	ld a, $1
	ld [wMenuCursorPosition], a
	ret

ScrollingMenu_InitFlags:
	ld a, [wMenuDataFlags]
	ld c, a
	ld a, [wScrollingMenuListSize]
	ld b, a
	ld a, [wMenuBorderTopCoord]
	inc a
	ld [w2DMenuCursorInitY], a
	ld a, [wMenuBorderLeftCoord]
	ld [w2DMenuCursorInitX], a
	ld a, [wMenuData_ScrollingMenuHeight]
	cp b
	jr c, .no_extra_row
	jr z, .no_extra_row
	ld a, b
	inc a
.no_extra_row
	ld [w2DMenuNumRows], a
	ld a, 1
	ld [w2DMenuNumCols], a
	ld a, _2DMENU_EXIT_UP | _2DMENU_EXIT_DOWN | _2DMENU_DISABLE_JOYPAD_FILTER
	bit SCROLLINGMENU_ENABLE_RIGHT_F, c
	jr z, .skip_set_0
	set _2DMENU_EXIT_RIGHT_F, a

.skip_set_0
	bit SCROLLINGMENU_ENABLE_LEFT_F, c
	jr z, .skip_set_1
	set _2DMENU_EXIT_LEFT_F, a

.skip_set_1
	ld [w2DMenuFlags1], a
	xor a
	ld [w2DMenuFlags2], a
	ld a, $20
	ld [w2DMenuCursorOffsets], a
	ld a, PAD_A | PAD_B | PAD_UP | PAD_DOWN
	bit SCROLLINGMENU_ENABLE_SELECT_F, c
	jr z, .disallow_select
	add PAD_SELECT

.disallow_select
	bit SCROLLINGMENU_ENABLE_START_F, c
	jr z, .disallow_start
	add PAD_START

.disallow_start
	ld [wMenuJoypadFilter], a
	ld a, [w2DMenuNumRows]
	ld b, a
	ld a, [wMenuCursorPosition]
	and a
	jr z, .reset_cursor
	cp b
	jr z, .cursor_okay
	jr c, .cursor_okay

.reset_cursor
	ld a, 1

.cursor_okay
	ld [wMenuCursorY], a
	ld a, 1
	ld [wMenuCursorX], a
	xor a
	ld [wCursorCurrentTile], a
	ld [wCursorCurrentTile + 1], a
	ld [wCursorOffCharacter], a
	ret

ScrollingMenu_ValidateSwitchItem:
	ld a, [wScrollingMenuListSize]
	ld c, a
	ld a, [wSwitchItem]
	and a
	ret z
	dec a
	cp c
	ret c
	xor a
	ld [wSwitchItem], a
	ret

ScrollingMenu_UpdateDisplay:
	call ClearWholeMenuBox
	ld a, [wMenuDataFlags]
	bit SCROLLINGMENU_DISPLAY_ARROWS_F, a
	jr z, .okay
	ld a, [wMenuScrollPosition]
	and a
	jr z, .okay
	ld a, [wMenuBorderTopCoord]
	ld b, a
	ld a, [wMenuBorderRightCoord]
	ld c, a
	call Coord2Tile
	ld [hl], '▲'

.okay
	call MenuBoxCoord2Tile
	ld bc, SCREEN_WIDTH + 1
	add hl, bc
	ld a, [wMenuData_ScrollingMenuHeight]
	ld b, a
	ld c, $0
.loop
	ld a, [wMenuScrollPosition]
	add c
	ld [wScrollingMenuCursorPosition], a
	ld a, c
	call ScrollingMenu_GetListItemCoordAndFunctionArgs
	ld a, [wMenuSelection]
	cp -1
	jr z, .cancel
	push bc
	push hl
	call ScrollingMenu_CallFunctions1and2
	pop hl
	ld bc, 2 * SCREEN_WIDTH
	add hl, bc
	pop bc
	inc c
	ld a, c
	cp b
	jr nz, .loop
	ld a, [wMenuDataFlags]
	bit SCROLLINGMENU_DISPLAY_ARROWS_F, a
	ret z
	ld a, [wMenuBorderBottomCoord]
	ld b, a
	ld a, [wMenuBorderRightCoord]
	ld c, a
	call Coord2Tile
	ld [hl], '▼'
	ret

.cancel
	ld a, [wMenuDataFlags]
	bit SCROLLINGMENU_CALL_FUNCTION1_CANCEL_F, a
	jr nz, .call_function
	ld de, .CancelString
	jmp PlaceString

.CancelString
	db "CANCEL@"

.call_function
	ld d, h
	ld e, l
	ld hl, wMenuData_ScrollingMenuFunction1
	jmp CallPointerAt

ScrollingMenu_CallFunctions1and2:
	push hl
	ld d, h
	ld e, l
	ld hl, wMenuData_ScrollingMenuFunction1
	call CallPointerAt
	pop hl
	ld a, [wMenuData_ScrollingMenuWidth]
	and a
	ret z
	ld e, a
	ld d, 0
	add hl, de
	ld d, h
	ld e, l
	ld hl, wMenuData_ScrollingMenuFunction2
	jmp CallPointerAt

ScrollingMenu_PlaceCursor:
	ld a, [wSwitchItem]
	and a
	ret z
	ld b, a
	ld a, [wMenuScrollPosition]
	cp b
	ret nc
	ld c, a
	ld a, [wMenuData_ScrollingMenuHeight]
	add c
	cp b
	ret c
	ld a, b
	sub c
	dec a
	add a
	inc a
	ld c, a
	ld a, [wMenuBorderTopCoord]
	add c
	ld b, a
	ld a, [wMenuBorderLeftCoord]
	ld c, a
	call Coord2Tile
	ld [hl], '▷'
	ret

ScrollingMenu_CheckCallFunction3:
	ld a, [wMenuDataFlags]
	bit SCROLLINGMENU_ENABLE_FUNCTION3_F, a
	ret z
	bit SCROLLINGMENU_CALL_FUNCTION3_NO_SWITCH_F, a
	jr z, .call
	ld a, [wSwitchItem]
	and a
	ret nz

.call
	ld a, [wMenuCursorY]
	dec a
	call ScrollingMenu_GetListItemCoordAndFunctionArgs
	ld hl, wMenuData_ScrollingMenuFunction3
	jmp CallPointerAt

ScrollingMenu_GetListItemCoordAndFunctionArgs:
	push de
	push hl
	ld e, a
	ld a, [wMenuScrollPosition]
	add e
	ld e, a
	ld d, 0
	ld hl, wMenuData_ItemsPointerAddr
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc hl ; items
	ld a, [wItemFlags]
	and (1 << IN_PC_F)
	jr nz, ScrollingMenu_GetListItemCoordAndFunctionArgs16bit
	ld a, [wItemFlags]
	and (1 << IN_BAG_F)
	jr z, .skip
	ld a, [wCurPocket]
	and a ; ITEM_POCKET
	jr z, ScrollingMenu_GetListItemCoordAndFunctionArgs16bit
.skip
	ld a, [wMenuData_ScrollingMenuItemFormat]
	cp SCROLLINGMENU_ITEMS_NORMAL
	jr z, .got_spacing
	add hl, de
.got_spacing
	add hl, de
	ld a, [wMenuData_ItemsPointerBank]
	call GetFarByte
	ld [wMenuSelection], a
	ld [wCurItem], a
	inc hl
	ld a, [wMenuData_ItemsPointerBank]
	call GetFarByte
	ld [wMenuSelectionQuantity], a
	pop hl
	pop de
	ret

ScrollingMenu_GetListItemCoordAndFunctionArgs16bit:
	ld a, [wMenuData_ScrollingMenuItemFormat]
	cp SCROLLINGMENU_ITEMS_NORMAL
	jr z, .got_spacing
	add hl, de
.got_spacing
	add hl, de
	add hl, de
	ld a, [wMenuData_ItemsPointerBank]
	push hl
	call GetFarWord
	ld a, l
	cp -1
	jr z, .end_of_list
	ld d, l
	ld l, h
	ld h, d
	call GetItemIDFromIndex
.end_of_list
	pop hl
	ld [wMenuSelection], a
	ld [wCurItem], a
	call CheckItemPocketConversion
	inc hl
	inc hl
	ld a, [wMenuData_ItemsPointerBank]
	call GetFarByte
	ld [wMenuSelectionQuantity], a
	pop hl
	pop de
	ret

CheckItemPocketConversion:
	ld a, [wItemFlags]
	and (1 << IN_BAG_F)
	ret z
	ld a, [wCurPocket]
	cp BALL_POCKET
	jr nz, .not_ball_pocket
	ld a, [wCurItem]
	push hl
	ld h, HIGH(FIRST_BALL_ITEM)
	ld l, a
	call GetItemIDFromIndex
	pop hl
	ld [wCurItem], a
	ret

.not_ball_pocket
	cp BERRY_POCKET
	jr nz, .not_berry_pocket
	ld a, [wCurItem]
	push hl
	ld h, HIGH(FIRST_BERRY_ITEM)
	ld l, a
	call GetItemIDFromIndex
	pop hl
	ld [wCurItem], a
	ret

.not_berry_pocket
	cp KEY_ITEM_POCKET
	ret nz
	ld a, [wCurItem]
	push hl
	ld h, HIGH(FIRST_KEY_ITEM)
	ld l, a
	call GetItemIDFromIndex
	pop hl
	ld [wCurItem], a
	ret
