Function8b342::
; Loads the map data pointer, then runs through a
; dw with three dummy functions. Spends a lot of energy
; doing pretty much nothing.
	call GetMapAttributesPointer
	ld d, h
	ld e, l

; Everything between here and "ret" is useless.
	xor a
.loop
	push af
	ld hl, .dw
	call JumpTable
	pop af
	inc a
	cp 3
	jr nz, .loop
	ret

.dw
	dw .zero
	dw .one
	dw .two

.zero
	ret

.one
	ret

.two
	ret

Function8b35d: ; unreferenced
	ld a, h
	cp d
	ret nz
	ld a, l
	cp e
	ret

Function8b36c:
	; [bc + (0:4)] = -1
	push bc
	ld h, b
	ld l, c
	ld bc, 4
	ld a, -1
	rst ByteFill
	pop bc
	ret

Function8b379:
	; d = [bc + e]
	push bc
	ld a, c
	add e
	ld c, a
	ld a, $0
	adc b
	ld b, a
	ld a, [bc]
	ld d, a
	pop bc
	ret

Function8b385:
	; [bc + e] = d
	push bc
	ld a, c
	add e
	ld c, a
	ld a, $0
	adc b
	ld b, a
	ld a, d
	ld [bc], a
	pop bc
	ret

Function8b391:
	; find first e in range(4) such that [bc + e] == -1
	; if none exist, return carry
	push bc
	ld e, 0
	ld d, 4
.loop
	ld a, [bc]
	inc bc
	cp -1
	jr z, .done
	inc e
	dec d
	jr nz, .loop
	dec e
	scf
.done
	pop bc
	ret

Function8b3a4:
	; strcmp(hl, bc, 4)
	push de
	push bc
	ld d, b
	ld e, c
	ld c, 4
	call Function89185
	pop bc
	pop de
	ret

Function8b3cd:
	push de
	push bc
	ld e, $4
.asm_8b3d1
	ld a, [bc]
	inc bc
	call Function8998b
	inc hl
	dec e
	jr nz, .asm_8b3d1
	pop bc
	pop de
	ret

Function8b3dd:
	push de
	push bc
	call JoyTextDelay_ForcehJoyDown ; joypad
	ld a, c
	pop bc
	pop de
	bit A_BUTTON_F, a
	jr nz, .a_button
	bit B_BUTTON_F, a
	jr nz, .b_button
	bit D_UP_F, a
	jr nz, .d_up
	bit D_DOWN_F, a
	jr nz, .d_down
	and a
	ret

.a_button
	ld a, e
	cp $3
	jr z, .e_is_zero
	inc e
	ld d, 0
	call Function8b385
	xor a
	ld [wd010], a
	ret

.e_is_zero
	call PlayClickSFX
	ld d, $0
	scf
	ret

.b_button
	ld a, e
	and a
	jr nz, .e_is_not_zero
	call PlayClickSFX
	ld d, -1
	call Function8b385
	ld d, 1
	scf
	ret

.e_is_not_zero
	ld d, -1
	call Function8b385
	dec e
	xor a
	ld [wd010], a
	ret

.d_up
	call Function8b379
	ld a, d
	cp $a
	jr c, .less_than_10_up_1
	ld d, $9
.less_than_10_up_1
	inc d
	ld a, d
	cp $a
	jr c, .less_than_10_up_2
	ld d, $0
.less_than_10_up_2
	call Function8b385
	xor a
	ld [wd010], a
	ret

.d_down
	call Function8b379
	ld a, d
	cp $a
	jr c, .less_than_10_down
	ld d, $0
.less_than_10_down
	ld a, d
	dec d
	and a
	jr nz, .nonzero_down
	ld d, $9
.nonzero_down
	call Function8b385
	xor a
	ld [wd010], a
	ret

Function8b45c:
	call Function8b36c
	xor a
	ld [wd010], a
	ld [wd012], a
	call Function8b391
	ld d, $0
	call Function8b385
.asm_8b46e
	call Mobile22_SetBGMapMode0
	call Function8b493
	call Function8b4cc
	call Function8b518
	call Function89b78
	push bc
	call Function8b4fd
	call Function89c44
	ld a, $1
	ldh [hBGMapMode], a
	pop bc
	call Function8b3dd
	jr nc, .asm_8b46e
	ld a, d
	and a
	ret z
	scf
	ret

Function8b493:
	push bc
	call Mobile22_SetBGMapMode0
	call Function8b521
	ld hl, Jumptable_8b4a0
	pop bc
	call JumpTable
	ret

Jumptable_8b4a0:
	dw Function8b4a4
	dw Function8b4b8

Function8b4a4:
	push bc
	push de
	call Function8b4d8
	call Textbox
	pop de
	pop bc
	call Function8b4cc
	call Function8b518
	jmp Function8b3cd

Function8b4b8:
	push bc
	push de
	call Function8b4ea
	call Function89b3b
	pop de
	pop bc
	call Function8b4cc
	call Function8b518
	jmp Function8b3cd

Function8b4cc:
	push bc
	ld hl, Unknown_8b529
	call Function8b50a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop bc
	ret

Function8b4d8:
	ld hl, Unknown_8b529
	call Function8b50a
	push hl
	inc hl
	inc hl
	ld a, [hli]
	ld b, a
	ld a, [hl]
	ld c, a
	pop hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret

Function8b4ea:
	ld hl, Unknown_8b529
	call Function8b50a
	push hl
	inc hl
	inc hl
	ld a, [hli]
	ld b, a
	ld a, [hl]
	ld c, a
	pop hl
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	ret

Function8b4fd:
	ld hl, Unknown_8b529 + 4
	call Function8b50a
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld d, a
	ret

Function8b50a:
	ld a, [wd02e]
	and a
	ret z
	ld b, $0
	ld c, $8
.asm_8b513
	add hl, bc
	dec a
	jr nz, .asm_8b513
	ret

Function8b518:
	push de
	ld d, $0
	ld e, $14
	add hl, de
	inc hl
	pop de
	ret

Function8b521:
	ld hl, Unknown_8b529 + 7
	call Function8b50a
	ld a, [hl]
	ret

Unknown_8b529:
	dwcoord 2, 5
	db 1, 4, $20, $49, 0, 1
	dwcoord 7, 4
	db 1, 4, $48, $41, 0, 0

Function8b539:
	ld bc, wd017
	call Function8b36c
	xor a
	ld [wd012], a
	ld [wd02e], a
	call Function8b493
	call Function8b4fd
	ld e, $0
	call Function89c44
	jmp CGBOnly_CopyTilemapAtOnce

EnterNewPasscodeText:
	text_far _EnterNewPasscodeText
	text_end

ConfirmPasscodeText:
	text_far _ConfirmPasscodeText
	text_end

PasscodesNotSameText:
	text_far _PasscodesNotSameText
	text_end

PasscodeSetText:
	text_far _PasscodeSetText
	text_end

FourZerosInvalidText:
	text_far _FourZerosInvalidText
	text_end

EnterPasscodeText:
	text_far _EnterPasscodeText
	text_end

IncorrectPasscodeText:
	text_far _IncorrectPasscodeText
	text_end

UnknownText_0x8b64c:
	; CARD FOLDER open.@ @
	text_far _CardFolderOpenText
	text_asm
	ld de, SFX_TWINKLE
	call PlaySFX
	call WaitSFX
	ld c, $8
	call DelayFrames
	ld hl, .string_8b663
	ret

.string_8b663
	text_end

Function8b664:
	push bc
	ld de, $4
.asm_8b668
	ld a, [bc]
	cp $0
	jr nz, .asm_8b66e
	inc d
.asm_8b66e
	inc bc
	dec e
	jr nz, .asm_8b668
	pop bc
	ld a, d
	cp $4
	ret

Function8b677:
	call ClearBGPalettes
	call DisableLCD
	call Function8b690
	call Function8b6bb
	call Function8b6ed
	call EnableLCD
	call Function891ab
	jmp SetPalettes

Function8b690:
	ld hl, MobileCardListGFX
	ld de, vTiles2
	ld bc, $16 tiles
	ld a, BANK(MobileCardListGFX)
	call FarCopyBytes
	ld hl, MobileCardListGFX tile $15
	ld de, vTiles2 tile $61
	ld bc, 1 tiles
	ld a, BANK(MobileCardListGFX)
	call FarCopyBytes
	ld hl, MobileCardListGFX tile $16
	ld de, vTiles0 tile $ee
	ld bc, 1 tiles
	ld a, BANK(MobileCardListGFX)
	jmp FarCopyBytes

Function8b6bb:
	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a
	ld hl, Palette_8b6d5
	ld de, wBGPals1
	ld bc, 3 palettes
	rst CopyBytes
	pop af
	ldh [rSVBK], a
	jmp Function8949c

Palette_8b6d5:
	RGB 31, 31, 31
	RGB 31, 21, 00
	RGB 14, 07, 03
	RGB 00, 00, 00
	RGB 31, 31, 31
	RGB 31, 21, 00
	RGB 22, 09, 17
	RGB 00, 00, 00
	RGB 31, 31, 31
	RGB 31, 21, 00
	RGB 06, 24, 08
	RGB 00, 00, 00

Function8b6ed:
	hlcoord 0, 0, wAttrmap
	ld bc, $012c
	xor a
	rst ByteFill
	hlcoord 0, 14, wAttrmap
	ld bc, $0050
	ld a, $7
	jmp ByteFill

Function8b703:
	call Mobile22_SetBGMapMode0
	push hl
	ld a, $c
	ld [hli], a
	inc a
	call Function8b73e
	inc a
	ld [hl], a
	pop hl
	push hl
	push bc
	ld de, SCREEN_WIDTH
	add hl, de
.asm_8b717
	push hl
	ld a, $f
	ld [hli], a
	ld a, $7f
	call Function8b73e
	ld a, $11
	ld [hl], a
	pop hl
	ld de, SCREEN_WIDTH
	add hl, de
	dec b
	jr nz, .asm_8b717
	call Function8b732
	pop bc
	pop hl
	jr Function8b744

Function8b732:
	ld a, $12
	ld [hli], a
	ld a, $13
	call Function8b73e
	ld a, $14
	ld [hl], a
	ret

Function8b73e:
	ld d, c
.asm_8b73f
	ld [hli], a
	dec d
	jr nz, .asm_8b73f
	ret

Function8b744:
	ld de, wAttrmap - wTilemap
	add hl, de
	inc b
	inc b
	inc c
	inc c
	xor a
.asm_8b74d
	push bc
	push hl
.asm_8b74f
	ld [hli], a
	dec c
	jr nz, .asm_8b74f
	pop hl
	ld de, SCREEN_WIDTH
	add hl, de
	pop bc
	dec b
	jr nz, .asm_8b74d
	ret

Function8b75d:
	call Mobile22_SetBGMapMode0
	hlcoord 0, 0
	ld a, $1
	ld bc, SCREEN_WIDTH
	rst ByteFill
	hlcoord 0, 1
	ld a, $2
	ld [hl], a
	hlcoord 9, 1
	ld c, $b
	call Function8b788
	hlcoord 1, 1
	ld a, $4
	ld e, $8
.asm_8b780
	ld [hli], a
	inc a
	dec e
	jr nz, .asm_8b780
	jr Function8b79e

Function8b787: ; unreferenced
	ret

Function8b788:
.asm_8b788
	ld a, $2
	ld [hli], a
	dec c
	ret z
	ld a, $1
	ld [hli], a
	dec c
	ret z
	ld a, $3
	ld [hli], a
	dec c
	ret z
	ld a, $1
	ld [hli], a
	dec c
	jr nz, .asm_8b788
	ret

Function8b79e:
	hlcoord 0, 1, wAttrmap
	ld a, $1
	ld [hli], a
	hlcoord 9, 1, wAttrmap
	ld e, $b
.asm_8b7a9
	ld a, $2
	ld [hli], a
	dec e
	ret z
	xor a
	ld [hli], a
	dec e
	ret z
	ld a, $1
	ld [hli], a
	dec e
	ret z
	xor a
	ld [hli], a
	dec e
	jr nz, .asm_8b7a9
	ret

Function8b832:
	ld a, [wMenuScrollPosition]
	ld hl, wMenuDataItems
	sub [hl]
	jr nc, Function8b84b
	xor a
	jr Function8b84b

Function8b83e:
	ld a, [wMenuScrollPosition]
	ld hl, wMenuDataItems
	add [hl]
	cp $24
	jr c, Function8b84b
	ld a, $24

Function8b84b:
	ld [wMenuScrollPosition], a
	ld a, [wMenuCursorY]
	ld [wMenuCursorPosition], a
	ret

Function8b855:
	ld a, $28
	ld hl, wd002
	ld [hli], a
	ld c, $28
	xor a
.asm_8b85e
	inc a
	ld [hli], a
	dec c
	jr nz, .asm_8b85e
	ld a, $ff
	ld [hl], a
	ret

Function8b880:
	ld h, d
	ld l, e
	ld de, wMenuSelection
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	jmp PrintNum

Function8b8c8:
	hlcoord 0, 14
	ld b, $2
	ld c, $12
	call Textbox
	ld a, [wd033]
	ld b, 0
	ld c, a
	ld hl, Unknown_8b903
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld d, h
	ld e, l
	hlcoord 1, 16
	rst PlaceString
	hlcoord 0, 13
	ld a, $f
	ld [hl], a
	hlcoord 19, 13
	ld a, $11
	ld [hl], a
	ld a, [wMenuScrollPosition]
	cp $24
	ret c
	hlcoord 0, 13
	ld c, $12
	jmp Function8b732

Unknown_8b903:
	dw String_8b90b
	dw String_8b919
	dw String_8b92a
	dw String_8b938

String_8b90b: db "めいしを　えらんでください@"        ; Please select a noun.
String_8b919: db "どの　めいしと　いれかえますか？@"    ; OK to swap with any noun?
String_8b92a: db "あいてを　えらんでください@"        ; Please select an opponent.
String_8b938: db "いれる　ところを　えらんでください@" ; Please select a location.

Function8b94a:
	ld [wd033], a
	xor a
	ld [wMenuScrollPosition], a
	ld [wd032], a
	ld [wd0e3], a
	ld [wd031], a
	ld a, $1
	ld [wd030], a
	ret

Function8b99f:
	ld hl, wd002
	dec a
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [hl]
	cp $ff
	ret

Function8b9ab:
	ret

MenuHeader_0x8b9ac:
	db MENU_BACKUP_TILES ; flags
	menu_coords 11, 0, SCREEN_WIDTH - 1, TEXTBOX_Y - 1

MenuHeader_0x8b9b1:
	db MENU_BACKUP_TILES ; flags
	menu_coords 11, 0, SCREEN_WIDTH - 1, 7
	dw MenuData_0x8b9b9
	db 1 ; default option

MenuData_0x8b9b9:
	db STATICMENU_CURSOR | STATICMENU_WRAP ; flags
	db 3 ; items
	db "へんしゅう@" ; EDIT
	db "いれかえ@"   ; REPLACE
	db "やめる@"     ; QUIT

MenuHeader_0x8b9ca:
	db MENU_BACKUP_TILES ; flags
	menu_coords 11, 0, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw MenuData_0x8b9d2
	db 1 ; default option

MenuData_0x8b9d2:
	db STATICMENU_CURSOR | STATICMENU_WRAP ; flags
	db 5 ; items
	db "みる@"       ; VIEW
	db "へんしゅう@" ; EDIT
	db "いれかえ@"   ; REPLACE
	db "けす@"       ; ERASE
	db "やめる@"     ; QUIT

Unknown_8ba1c:
	db 2, 4, -1

Unknown_8ba1f:
	db 1, 2, 4, 3, -1
