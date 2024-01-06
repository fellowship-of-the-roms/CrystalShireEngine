Function17c000:
	call DisableLCD

	ld hl, vTiles2
	ld bc, $31 tiles
	xor a
	rst ByteFill

	call LoadStandardFont
	call LoadFontsExtra

	ld hl, HaveWantMap
	decoord 0, 0
	bccoord 0, 0, wAttrmap

	ld a, SCREEN_HEIGHT
.y
	push af
	ld a, SCREEN_WIDTH

	push hl
.x
	push af
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [bc], a
	inc bc
	pop af
	dec a
	jr nz, .x
	pop hl

	push bc
	ld bc, BG_MAP_WIDTH * 2
	add hl, bc
	pop bc

	pop af
	dec a
	jr nz, .y

	ldh a, [rSVBK]
	push af

	ld a, BANK(wBGPals1)
	ldh [rSVBK], a

	ld hl, HaveWantPals
	ld de, wBGPals1
	ld bc, 16 palettes
	rst CopyBytes

	pop af
	ldh [rSVBK], a

	ld hl, MobileSelectGFX
	ld de, vTiles0 tile $30
	ld bc, $20 tiles
	rst CopyBytes

	ld a, 1
	ldh [rVBK], a

	ld hl, HaveWantGFX
	ld de, vTiles2
	ld bc, $80 tiles
	rst CopyBytes

	ld hl, HaveWantGFX + $80 tiles
	ld de, vTiles1
	ld bc, $10 tiles
	rst CopyBytes

	xor a
	ldh [rVBK], a

	call EnableLCD
	farjp ReloadMapPart

HaveWantGFX:
INCBIN "gfx/mobile/havewant.2bpp"

MobileSelectGFX:
INCBIN "gfx/mobile/select.2bpp"

HaveWantMap:
; Interleaved tile/palette map.
INCBIN "gfx/mobile/havewant_map.bin"

HaveWantPals:
; BG and OBJ palettes.
	RGB  0,  0,  0
	RGB 21, 21, 21
	RGB  0,  0,  0
	RGB  0,  0,  0

	RGB  0,  0,  0
	RGB  4, 17, 29
	RGB  6, 19, 31
	RGB 31, 31, 31

	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0

	RGB  0,  0,  0
	RGB  2, 13, 18
	RGB  6, 19, 31
	RGB 31, 31, 31

	RGB  0,  0,  0
	RGB 31,  5,  5
	RGB 29, 21, 21
	RGB 31, 31, 31

	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0

	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0

	RGB  0,  0,  0
	RGB  4, 17, 29
	RGB  6, 19, 31
	RGB  2, 15, 27

	RGB  0,  0,  0
	RGB 28, 19, 18
	RGB 25,  9,  0
	RGB  0,  0,  0

	RGB  0,  0,  0
	RGB 31, 27, 27
	RGB 31, 10,  4
	RGB 29,  0,  0

	RGB  0,  0,  0
	RGB 31, 31, 31
	RGB 26,  8, 23
	RGB 22,  0, 16

	RGB  0,  0,  0
	RGB 31, 31, 31
	RGB 20,  8, 31
	RGB 15,  1, 26

	RGB  0,  0,  0
	RGB 31, 31, 31
	RGB 17, 12, 31
	RGB 12,  6, 31

	RGB  0, 16,  0
	RGB 11, 11, 14
	RGB  5,  5,  7
	RGB 31, 31, 31

	RGB  0, 31,  0
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0

	RGB 16, 31,  0
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0

CheckStringForErrors:
; Valid character ranges:
; $0, $5 - $13, $19 - $1c, $26 - $34, $3a - $3e, $40 - $48, $60 - $ff
.loop
	ld a, [de]
	inc de
	and a ; "<NULL>"
	jr z, .NextChar
	cp FIRST_REGULAR_TEXT_CHAR
	jr nc, .NextChar
	cp "<NEXT>"
	jr z, .NextChar
	cp "@"
	jr z, .Done
	cp "ガ"
	jr c, .Fail
	cp "<PLAY_G>"
	jr c, .NextChar
	cp "<JP_18>" + 1
	jr c, .Fail
	cp "<NI>"
	jr c, .NextChar
	cp "<NO>" + 1
	jr c, .Fail
	cp "<ROUTE>"
	jr c, .NextChar
	cp "<GREEN>" + 1
	jr c, .Fail
	cp "<ENEMY>"
	jr c, .NextChar
	cp "<ENEMY>" + 1
	jr c, .Fail
	cp "<MOM>"
	jr c, .NextChar

.Fail:
	scf
	ret

.NextChar:
	dec c
	jr nz, .loop

.Done:
	and a
	ret

CheckStringForErrors_IgnoreTerminator:
; Find control chars
.loop
	ld a, [de]
	inc de
	and a
	jr z, .next
	cp "<DEXEND>" + 1
	jr nc, .next
	cp "<NEXT>"
	jr z, .next
	cp "@"
	jr z, .next

	cp "ガ"
	jr c, .end
	cp "<PLAY_G>"
	jr c, .next
	cp "<JP_18>" + 1
	jr c, .end
	cp "<NI>"
	jr c, .next
	cp "<NO>" + 1
	jr c, .end
	cp "<ROUTE>"
	jr c, .next
	cp "<GREEN>" + 1
	jr c, .end
	cp "<ENEMY>"
	jr c, .next
	cp "<ENEMY>" + 1
	jr c, .end
	cp "<MOM>"
	jr c, .next

.end
	scf
	ret

.next
	dec c
	jr nz, .loop
	and a
	ret

CheckStringContainsLessThanBNextCharacters:
.loop
	ld a, [de]
	inc de
	cp "<NEXT>"
	jr nz, .next_char
	dec b
	jr z, .done

.next_char
	dec c
	jr nz, .loop
	and a
	ret

.done
	scf
	ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Parameter: [wScriptVar] = 0..1
;
; if [wScriptVar] == FALSE
;    Show japanese menu options
;    - News - News - ??? - Cancel
; if [wScriptVar] == TRUE
;    Show BattleTower-Menu with 3 options in english language
;    - Challenge - Explanation - Cancel
Menu_ChallengeExplanationCancel:
	ld a, [wScriptVar]
	and a
	jr nz, .English
	ld a, $4
	ld [wScriptVar], a
	ld hl, MenuHeader_17d26a ; Japanese Menu, where you can choose 'News' as an option
	jr .Load_Interpret

.English:
	ld a, $4
	ld [wScriptVar], a
	ld hl, MenuHeader_ChallengeExplanationCancel ; English Menu

.Load_Interpret:
	call LoadMenuHeader
	call Function17d246
	jmp CloseWindow

Function17d246:
	call VerticalMenu
	jr c, .Exit
	ld a, [wScriptVar]
	cp $5
	jr nz, .UsewMenuCursorY
	ld a, [wMenuCursorY]
	cp $3
	ret z
	jr c, .UsewMenuCursorY
	dec a
	jr .LoadToScriptVar

.UsewMenuCursorY:
	ld a, [wMenuCursorY]

.LoadToScriptVar:
	ld [wScriptVar], a
	ret

.Exit:
	ld a, $4
	ld [wScriptVar], a
	ret

MenuHeader_17d26a:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 14, 9
	dw MenuData_17d272
	db 1 ; default option

MenuData_17d272:
	db STATICMENU_CURSOR | STATICMENU_WRAP ; flags
	db 4
	db "ニュース<WO>よみこむ@"
	db "ニュース<WO>みる@"
	db "せつめい@"
	db "やめる@"

MenuHeader_ChallengeExplanationCancel:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 14, 7
	dw MenuData_ChallengeExplanationCancel
	db 1 ; default option

MenuData_ChallengeExplanationCancel:
	db STATICMENU_CURSOR | STATICMENU_WRAP ; flags
	db 3
	db "Challenge@"
	db "Explanation@"
	db "Cancel@"

Function17d2b6:
	call Function17d2c0
	farjp Function1181da

Function17d2c0:
	xor a
	ld [wJumptableIndex], a
	ld [wcf64], a
	ld [wcf65], a
	ld [wcf66], a
	ret

Function17d405:
	call DisableLCD
	ld hl, vTiles0 tile $ee
	ld de, wc608
	ld bc, 1 tiles
	rst CopyBytes
	ld a, $1
	ldh [rVBK], a
	ld hl, PokemonNewsGFX
	ld de, vTiles1
	ld bc, $48 tiles
	rst CopyBytes
	xor a
	ld hl, vTiles2 tile $7f
	ld bc, 1 tiles
	rst ByteFill
	ld hl, wc608
	ld de, vTiles0 tile $ee
	ld bc, 1 tiles
	rst CopyBytes
	xor a
	ldh [rVBK], a
	call EnableLCD
	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a
	ld hl, PokemonNewsPalettes
	ld de, wBGPals1
	ld bc, 8 palettes
	rst CopyBytes
	call SetPalettes
	pop af
	ldh [rSVBK], a
	ret

Function17d711:
.crash_loop
	cp $31
	jr nc, .crash_loop
	ld e, a
	ld d, 0
	ld hl, Jumptable17d72a
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

Jumptable17d72a:
	dw DoNothing
	dw Function17d7b4
	dw Function17d7c2
	dw Function17d7d3
	dw Function17d7e5
	dw Function17d818
	dw Function17d93a
	dw Function17d98b
	dw Function17d9e3
	dw Function17da31
	dw Function17da9c
	dw Function17dadc
	dw Function17db2d
	dw Function17db56
	dw Function17db77
	dw Function17dbe9
	dw Function17dc1f
	dw Function17dc9f
	dw Function17dca9
	dw Function17dccf
	dw Function17dd13
	dw Function17dd30
	dw Function17dd49
	dw Function17ddcd
	dw Function17de32
	dw Function17de91
	dw Function17ded9
	dw Function17e0fd
	dw DoNothing
	dw Function17e165
	dw Function17e1a1
	dw Function17e254
	dw Function17e261
	dw Function17e270
	dw Function17e27f
	dw Function17e293
	dw IncCrashCheckPointer_SaveGameData
	dw IncCrashCheckPointer_SaveAfterLinkTrade
	dw IncCrashCheckPointer_SaveBox
	dw IncCrashCheckPointer_SaveChecksum
	dw IncCrashCheckPointer_SaveTrainerRankingsChecksum
	dw Function17e3e0
	dw Function17e3f0
	dw Function17e409

Function17d7b4:
	call IncCrashCheckPointer
	ld a, [hli]
	ld e, a
	ld d, 0
	call PlayMusic2
	jmp HlToCrashCheckPointer

Function17d7c2:
	call IncCrashCheckPointer
	ld a, [hli]
	ld e, a
	ld d, 0
	call PlaySFX
	call WaitSFX
	jmp HlToCrashCheckPointer

Function17d7d3:
	call IncCrashCheckPointer
	ld a, [hli]
	push bc
	call GetCryIndex
	ld d, b
	ld e, c
	pop bc
	call nc, PlayCry
	call WaitSFX
	jmp HlToCrashCheckPointer

Function17d7e5:
	call IncCrashCheckPointer
	ld a, [hli]
	ld [wcd4f], a
	ld a, [hli]
	ld [wcd50], a
	ld a, [hli]
	ld [wcd51], a
	ld a, [hli]
	ld [wcd52], a
	ld a, [hli]
	add a
	add a
	add a
	add $98
	ld [wcd53], a
	ld de, wcd4f
	call Function17e613
	ld a, [hli]
	ld [wcd53], a
	ld de, wcd4f
	call Function17e691
	jmp HlToCrashCheckPointer

Function17d818:
	call IncCrashCheckPointer
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	call HlToCrashCheckPointer
	call Function17e447
	ld e, l
	ld d, h
	hlcoord 0, 0
	add hl, bc
	jmp PlaceString

Function17d93a:
	call IncCrashCheckPointer
	ld de, wc708
	ld bc, $5
	rst CopyBytes
	call HlToCrashCheckPointer
	call Function17e32b
	ldh a, [rSVBK]
	push af
	ld a, $1
	ldh [rSVBK], a
	ld a, [wc70c]
	call Function17e6de
	ld a, [wc70a]
	ld [wCurPartySpecies], a
	ld a, [wc70c]
	ld e, a
	farcall LoadMonPaletteAsNthBGPal
	call SetPalettes
	ld a, [wc708]
	ld l, a
	ld a, [wc709]
	ld h, a
	ld a, [wc70b]
	ld c, a
	decoord 0, 0
	add hl, de
	ld e, l
	ld d, h
	farcall HOF_AnimateFrontpic
	pop af
	ldh [rSVBK], a
	jmp Function17e349

Function17d98b:
	call IncCrashCheckPointer
	ld de, wc708
	ld bc, $4
	rst CopyBytes
	call HlToCrashCheckPointer
	call Function17e32b
	ldh a, [rSVBK]
	push af
	ld a, $1
	ldh [rSVBK], a
	ld a, [wc70b]
	call Function17e6de
	ld a, [wc70a]
	ld [wTrainerClass], a
	ld a, [wc70b]
	ld e, a
	farcall LoadTrainerClassPaletteAsNthBGPal
	call SetPalettes
	ld a, [wc708]
	ld e, a
	ld a, [wc709]
	ld d, a
	push de
	ld de, vTiles2
	farcall GetTrainerPic
	pop hl
	decoord 0, 0
	add hl, de
	ld bc, $707
	predef PlaceGraphic
	pop af
	ldh [rSVBK], a
	jmp Function17e349

Function17d9e3:
	call IncCrashCheckPointer
	ld de, wc708
	ld bc, $7
	rst CopyBytes
	call HlToCrashCheckPointer
	ld a, [wc70b]
	push af
	cp $c0
	jr c, .asm_17da01
	ld a, [wc70c]
	ldh [rSVBK], a
	jr .asm_17da07

.asm_17da01
	ld a, [wc70c]
	call OpenSRAM

.asm_17da07
	ld a, [wc708]
	ld l, a
	ld a, [wc709]
	ld h, a
	ld a, [wc70a]
	ld e, a
	ld a, [wc70b]
	ld d, a
	ld a, [wc70d]
	ld c, a
	ld a, [wc70e]
	ld b, a
	rst CopyBytes
	pop af
	cp $c0
	jr c, .asm_17da2d
	ld a, $4
	ldh [rSVBK], a
	ret

.asm_17da2d
	jmp CloseSRAM

Function17da31:
	call IncCrashCheckPointer
	ld de, wc708
	ld bc, $4
	rst CopyBytes
	call HlToCrashCheckPointer
	ld a, [wc709]
	push af
	cp $c0
	jr c, .asm_17da4f
	ld a, [wc70a]
	ldh [rSVBK], a
	jr .asm_17da55

.asm_17da4f
	ld a, [wc70a]
	call OpenSRAM

.asm_17da55
	ld a, [wc708]
	ld e, a
	ld a, [wc709]
	ld d, a
	ld a, [wc70b]
	ld c, a
	bit 7, c
	jr nz, .asm_17da70
	ld hl, Unknown_17da8c
	ld b, $0
	add hl, bc
	ld a, [de]
	or [hl]
	ld [de], a
	jr .asm_17da7d

.asm_17da70
	ld hl, Unknown_17da94
	ld a, c
	and $7f
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [de]
	and [hl]
	ld [de], a

.asm_17da7d
	pop af
	cp $c0
	jr c, .asm_17da88
	ld a, $4
	ldh [rSVBK], a
	ret

.asm_17da88
	jmp CloseSRAM

Unknown_17da8c:
for x, 8
	db 1 << x
endr

Unknown_17da94:
for x, 8
	db ~(1 << x)
endr

Function17da9c:
	ld a, [wcd31]
	dec a
	jr z, .asm_17dabd
	push af
	call Function17e566
	pop af
	ld [wcd31], a
	ld hl, wcd24
	ld a, [wcd2e]
	sub [hl]
	ld [wcd2e], a
	call Function17e55b
	call Function17e5af
.asm_17daba
	jmp IncCrashCheckPointer

.asm_17dabd
	ld a, [wcd2f]
	and a
	jr z, .asm_17daba
	ld hl, wcd24
	sub [hl]
	ld [wcd2f], a
	ld a, [wcd2e]
	sub [hl]
	ld [wcd2e], a
	call Function17e451
	call Function17e55b
	call Function17e5af
	jr .asm_17daba

Function17dadc:
	ld a, [wcd2e]
	ld hl, wcd24
	add [hl]
	ld hl, wcd42
	cp [hl]
	jr z, .asm_17db0e
	jr nc, .asm_17db0e
	ld hl, wcd31
	ld a, [wcd2b]
	cp [hl]
	jr z, .asm_17db11
	call Function17e566
	ld hl, wcd31
	inc [hl]
	ld hl, wcd24
	ld a, [wcd2e]
	add [hl]
	ld [wcd2e], a
	call Function17e55b
	call Function17e5af

.asm_17db0e
	jmp IncCrashCheckPointer

.asm_17db11
	ld hl, wcd24
	ld a, [wcd2f]
	add [hl]
	ld [wcd2f], a
	ld a, [wcd2e]
	add [hl]
	ld [wcd2e], a
	call Function17e451
	call Function17e55b
	call Function17e5af
	jr .asm_17db0e

Function17db2d:
	ld a, [wcd30]
	ld hl, wcd24
	cp [hl]
	jr z, .asm_17db53
	ld hl, wcd42
	ld a, [wcd2e]
	inc a
	cp [hl]
	jr z, .asm_17db53
	ld [wcd2e], a
	call Function17e566
	ld hl, wcd30
	inc [hl]
	call Function17e55b
	call Function17e5af

.asm_17db53
	jmp IncCrashCheckPointer

Function17db56:
	ld a, [wcd30]
	cp $1
	jr z, .asm_17db74
	call Function17e566
	ld hl, wcd30
	dec [hl]
	ld hl, wcd2e
	dec [hl]
	call Function17e55b
	call Function17e5af

.asm_17db74
	jmp IncCrashCheckPointer

Function17db77:
	ld hl, wcd2d
	ld a, [wcd2f]
	add [hl]
	ld hl, wcd42
	cp [hl]
	jr z, .asm_17dbae
	jr nc, .asm_17dbae
	call Function17e566
	ld hl, wcd2d
	ld a, [wcd2f]
	add [hl]
	ld [wcd2f], a
	ld a, [wcd2e]
	add [hl]
	ld hl, wcd42
	cp [hl]
	jr c, .asm_17db9f
	ld a, [hl]
	dec a

.asm_17db9f
	ld [wcd2e], a
	call Function17dbb1
	call Function17e451
	call Function17e55b
	call Function17e5af

.asm_17dbae
	jmp IncCrashCheckPointer

Function17dbb1:
	ld hl, wcd2f
	ld a, [wcd42]
	sub [hl]
	ld hl, wcd2d
	cp [hl]
	ret nc
	ld a, $1
	ld [wcd30], a
	ld [wcd31], a
	ld a, [wcd24]
	ld c, a
	ld a, [wcd24]
	ld b, a
	ld a, [wcd2e]
	ld hl, wcd2f
	sub [hl]
.asm_17dbd4
	and a
	ret z
	push af
	ld hl, wcd30
	ld a, b
	cp [hl]
	jr nz, .asm_17dbe4
	ld [hl], $1
	ld hl, wcd31

.asm_17dbe4
	inc [hl]
	pop af
	dec a
	jr .asm_17dbd4

Function17dbe9:
	ld hl, wcd2d
	ld a, [wcd2f]
	sub [hl]
	bit 7, a
	jr z, .asm_17dbf5
	xor a

.asm_17dbf5
	ld [wcd2f], a
	ld a, [wcd30]
	dec a
	ld c, a
	ld a, [wcd31]
	ld b, a
	xor a
	ld hl, wcd24
.asm_17dc05
	dec b
	jr z, .asm_17dc0b
	add [hl]
	jr .asm_17dc05

.asm_17dc0b
	add c
	ld hl, wcd2f
	add [hl]
	ld [wcd2e], a
	call Function17e451
	call Function17e55b
	call Function17e5af
	jmp IncCrashCheckPointer

Function17dc1f:
	call IncCrashCheckPointer
	ld de, wc688
	ld bc, $6
	rst CopyBytes
	call Function17e32b
	ldh a, [rSVBK]
	push af
	ld a, $1
	ldh [rSVBK], a
	ld hl, wc688
	ld a, $40
	ld [wc708], a
	ld a, [hli]
	ld [wc70a], a
	add $5
	ld [wc70c], a
	ld a, [hli]
	ld [wc709], a
	add $4
	ld [wc70b], a
	ld a, $96
	ld [wc70d], a
	ld a, $5c
	ld [wc70e], a
	ld a, $1
	ld [wc70f], a
	ld hl, wc708
	call LoadMenuHeader
	call VerticalMenu
	jr nc, .asm_17dc6e
	ld a, $2
	ld [wMenuCursorY], a

.asm_17dc6e
	call CloseWindow
	pop af
	ldh [rSVBK], a
	ld a, [wMenuCursorY]
	cp $1
	jr nz, .asm_17dc85
	ld hl, wc68a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jr .asm_17dc8d

.asm_17dc85
	ld hl, wc68a + 2
	ld a, [hli]
	ld h, [hl]
	ld l, a

.asm_17dc8d
	push hl
	call Function17e349
	pop hl
	jmp Function17e40f

Function17dc9f:
	call IncCrashCheckPointer
	call HlToCrashCheckPointer
;	jmp RotateFourPalettesLeft

Function17dca9:
	call IncCrashCheckPointer
	call HlToCrashCheckPointer
; Function17dcaf:
	ld a, $5
	ldh [rSVBK], a
	ld hl, wBGPals1
	ld de, 1 palettes
	ld c, 8
.asm_17dcbb
	push hl
	ld a, $ff
	ld [hli], a
	ld [hl], $7f
	pop hl
	add hl, de
	dec c
	jr nz, .asm_17dcbb
;	call RotateThreePalettesRight
	ld a, $4
	ldh [rSVBK], a
	ret

Function17dccf:
	call IncCrashCheckPointer
	push hl
	ld a, [wcd4b]
	ld l, a
	ld a, [wcd4c]
	ld h, a
	ld a, [wcd2e]
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld c, a
	ld a, [hl]
	ld b, a
	call Function17e43d
	call HlToCrashCheckPointer
.asm_17dced
	ld hl, wMobileCrashCheckPointer
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [hl]
	cp $ff
	jr z, .asm_17dd0d
.crash_loop
	cp $31
	jr nc, .crash_loop
	call Function17d711
	ld a, [wcd77]
	bit 7, a
	jr nz, .asm_17dd0d
	and a
	jr z, .asm_17dd11
	jr .asm_17dced

.asm_17dd0d
	pop hl
	jmp HlToCrashCheckPointer

.asm_17dd11
	pop hl
	ret

Function17dd13:
	call IncCrashCheckPointer
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	call HlToCrashCheckPointer
	call Function17e447
	push hl
	hlcoord 0, 0
	add hl, bc
	push hl
	pop bc
	pop hl
	jmp PlaceHLTextAtBC

Function17dd30:
	call IncCrashCheckPointer
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld c, a
	ld b, 0
	ld a, [hli]
	push af
	call HlToCrashCheckPointer
	pop af
	hlcoord 0, 0
	add hl, de
	jmp Function17e600

Function17dd49:
	call IncCrashCheckPointer
	ld de, wc708
	ld bc, $a
	rst CopyBytes
	ld a, [wc711]
	ld c, a
	ld b, 0
	rst CopyBytes
	ld a, [wc70a]
	cp $c0
	jr c, .sram
	ld a, [wc708]
	ldh [rSVBK], a
	jr .got_bank

.sram
	ld a, [wc708]
	call OpenSRAM

.got_bank
	ld a, [wc709]
	ld l, a
	ld a, [wc70a]
	ld h, a
	ld de, wc688
	ld a, [wc711]
	ld c, a
	ld b, 0
	rst CopyBytes
	ld a, [wc70a]
	cp $c0
	jr c, .close_sram
	ld a, $4
	ldh [rSVBK], a
	jr .exited_bank

.close_sram
	call CloseSRAM

.exited_bank
	ld a, [wc711]
	ld c, a
	ld hl, wc712
	ld de, wc688
.loop
	ld a, [de]
	inc de
	cp [hl]
	inc hl
	jr z, .next
	jr c, .load
	jr .load2

.next
	dec c
	jr nz, .loop
	ld a, [wc70d]
	ld l, a
	ld a, [wc70e]
	ld h, a
	jr .done

.load2
	ld a, [wc70f]
	ld l, a
	ld a, [wc710]
	ld h, a
	jr .done

.load
	ld a, [wc70b]
	ld l, a
	ld a, [wc70c]
	ld h, a

.done
	jmp Function17e40f

Function17ddcd:
	call IncCrashCheckPointer
	ld de, wc708
	ld bc, $8
	rst CopyBytes
	ld a, [wc70a]
	cp $c0
	jr c, .asm_17dde7
	ld a, [wc708]
	ldh [rSVBK], a
	jr .asm_17dded

.asm_17dde7
	ld a, [wc708]
	call OpenSRAM

.asm_17dded
	ld a, [wc709]
	ld e, a
	ld a, [wc70a]
	ld d, a
	ld a, [de]
	ld [wc710], a
	ld a, [wc70b]
	ld c, a
	ld b, 0
	ld a, [wc70a]
	cp $c0
	jr c, .asm_17de0c
	ld a, $4
	ldh [rSVBK], a
	jr .asm_17de0f

.asm_17de0c
	call CloseSRAM

.asm_17de0f
	push hl
	ld hl, Unknown_17da8c
	add hl, bc
	ld a, [hl]
	ld hl, wc710
	and [hl]
	pop hl
	jr nz, .asm_17de26
	ld a, [wc70e]
	ld l, a
	ld a, [wc70f]
	ld h, a
	jr .asm_17de2e

.asm_17de26
	ld a, [wc70c]
	ld l, a
	ld a, [wc70d]
	ld h, a

.asm_17de2e
	jmp Function17e40f

Function17de32:
	call IncCrashCheckPointer
	ld de, wc708
	ld bc, $9
	rst CopyBytes
	ld a, [wc710]
	ld c, a
	ld b, 0
	rst CopyBytes
	ld a, $6
	call OpenSRAM
	call Function17f4f6
	ld a, [wc708]
	ld e, a
	ld a, [wc709]
	ld d, a
	add hl, de
	ld e, l
	ld d, h
	ld a, [wc710]
	ld c, a
	ld hl, wc711
.asm_17de61
	ld a, [de]
	inc de
	cp [hl]
	inc hl
	jr z, .asm_17de6b
	jr c, .asm_17de82
	jr .asm_17de78

.asm_17de6b
	dec c
	jr nz, .asm_17de61
	ld a, [wc70c]
	ld l, a
	ld a, [wc70d]
	ld h, a
	jr .asm_17de8a

.asm_17de78
	ld a, [wc70e]
	ld l, a
	ld a, [wc70f]
	ld h, a
	jr .asm_17de8a

.asm_17de82
	ld a, [wc70a]
	ld l, a
	ld a, [wc70b]
	ld h, a

.asm_17de8a
	call CloseSRAM
	jmp Function17e40f

Function17de91:
	call IncCrashCheckPointer
	ld de, wc708
	ld bc, $7
	rst CopyBytes
	ld a, $6
	call OpenSRAM
	call Function17f4f6
	ld a, [wc708]
	ld e, a
	ld a, [wc709]
	ld d, a
	add hl, de
	ld e, l
	ld d, h
	ld a, [wc70a]
	ld c, a
	ld b, 0
	ld hl, Unknown_17da8c
	add hl, bc
	ld a, [hl]
	ld l, e
	ld h, d
	and [hl]
	jr nz, .asm_17deca
	ld a, [wc70d]
	ld l, a
	ld a, [wc70e]
	ld h, a
	jr .asm_17ded2

.asm_17deca
	ld a, [wc70b]
	ld l, a
	ld a, [wc70c]
	ld h, a

.asm_17ded2
	call CloseSRAM
	jmp Function17e40f

Function17ded9:
	call IncCrashCheckPointer
	ld de, wc708
	ld bc, $1f
	rst CopyBytes
	call Function17e32b
	ldh a, [rSVBK]
	push af
	ld a, $1
	ldh [rSVBK], a
	ld hl, wc708
	ld a, [hli]
	ld [wCurPartySpecies], a
	ld [wTempEnemyMonSpecies], a
	ld a, [hli]
	ld [wCurPartyLevel], a
	ld a, [hli]
	ld b, a
	ld a, [wPartyCount]
	cp $6
	ret nc
	xor a
	ld [wMonType], a
	push hl
	push bc
	predef TryAddMonToParty
	farcall SetCaughtData
	pop bc
	pop hl
	bit 1, b
	jr z, .asm_17df33
	push bc
	push hl
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMonNicknames
	call SkipNames
	ld d, h
	ld e, l
	pop hl
	rst CopyBytes
	pop bc
	jr .asm_17df37

.asm_17df33
	ld de, $6
	add hl, de

.asm_17df37
	bit 2, b
	jr z, .asm_17df5a
	push bc
	push hl
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMonOTs
	call SkipNames
	ld d, h
	ld e, l
	pop hl
	rst CopyBytes
	ld a, [hli]
	ld b, a
	push hl
	farcall SetGiftPartyMonCaughtData
	pop hl
	pop bc
	jr .asm_17df5e

.asm_17df5a
	ld de, $7
	add hl, de

.asm_17df5e
	bit 3, b
	jr z, .asm_17df79
	push bc
	push hl
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1ID
	call GetPartyLocation
	ld d, h
	ld e, l
	pop hl
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	pop bc
	jr .asm_17df7b

.asm_17df79
	inc hl
	inc hl

.asm_17df7b
	bit 4, b
	jr z, .asm_17dfd0
	push bc
	push hl
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1IVs
	call GetPartyLocation
	ld d, h
	ld e, l
	pop hl
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	push hl
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1Species
	call GetPartyLocation
	ld a, [hl]
	ld [wCurSpecies], a
	call GetBaseData
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1MaxHP
	call GetPartyLocation
	ld d, h
	ld e, l
	push hl
	ld b, FALSE
	farcall CalcMonStats
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1HP
	call GetPartyLocation
	ld d, h
	ld e, l
	pop hl
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	pop hl
	pop bc
	jr .asm_17dfd2

.asm_17dfd0
	inc hl
	inc hl

.asm_17dfd2
	bit 5, b
	jr z, .asm_17dfea
	push bc
	push hl
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1Item
	call GetPartyLocation
	ld d, h
	ld e, l
	pop hl
	ld a, [hli]
	ld [de], a
	pop bc
	jr .asm_17dfeb

.asm_17dfea
	inc hl

.asm_17dfeb
	bit 6, b
	jr z, .asm_17e01f
	push bc
	push hl
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1Moves
	call GetPartyLocation
	ld d, h
	ld e, l
	pop hl
	push de
	ld bc, $4
	rst CopyBytes
	pop de
	push hl
	push de
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1PP
	call GetPartyLocation
	ld d, h
	ld e, l
	pop hl
	predef FillPP
	pop hl
	pop bc
	jr asm_17e0ee

.asm_17e01f
	ld de, $4
	add hl, de
; fallthrough
asm_17e0ee:
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop af
	ldh [rSVBK], a
	push hl
	call Function17e349
	pop hl
	jmp Function17e40f

Function17e0fd:
	call IncCrashCheckPointer
	ld de, wc708
	ld bc, $6
	rst CopyBytes
	ldh a, [rSVBK]
	push af
	ld a, $1
	ldh [rSVBK], a
	ld hl, wc708
	ld a, [hli]
	ld [wCurItem], a
	ld a, [hli]
	ld [wItemQuantityChange], a
	push hl
	ld hl, wNumItems
	call ReceiveItem
	pop hl
	jr c, .asm_17e127
	inc hl
	inc hl

.asm_17e127
	ld a, [hli]
	ld b, a
	ld a, [hl]
	ld h, a
	ld l, b
	pop af
	ldh [rSVBK], a
	jmp Function17e40f

Function17e165:
	call IncCrashCheckPointer
	ld de, wc708
	ld bc, $5
	rst CopyBytes
	ldh a, [rSVBK]
	push af
	ld a, $1
	ldh [rSVBK], a
	ld hl, wc708
	ld a, [hli]
	ld [wCurItem], a
	push hl
	ld hl, wNumItems
	call CheckItem
	pop hl
	jr c, .asm_17e195
	push hl
	ld hl, wNumPCItems
	call CheckItem
	pop hl
	jr c, .asm_17e195
	inc hl
	inc hl

.asm_17e195
	ld a, [hli]
	ld b, a
	ld a, [hl]
	ld h, a
	ld l, b
	pop af
	ldh [rSVBK], a
	jmp Function17e40f

Function17e1a1:
	call IncCrashCheckPointer
	ld de, wc708
	ld bc, $d
	rst CopyBytes
	ld a, [wc70a]
	cp $c0
	jr c, .asm_17e1bb
	ld a, [wc708]
	ldh [rSVBK], a
	jr .asm_17e1c1

.asm_17e1bb
	ld a, [wc708]
	call OpenSRAM

.asm_17e1c1
	ld a, [wc709]
	ld l, a
	ld a, [wc70a]
	ld h, a
	ld de, wc608
	ld a, [wc70b]
	ld c, a
	ld b, 0
	rst CopyBytes
	ld a, [wc70a]
	cp $c0
	jr c, .asm_17e1e2
	ld a, $4
	ldh [rSVBK], a
	jr .asm_17e1e5

.asm_17e1e2
	call CloseSRAM

.asm_17e1e5
	ld a, [wc70e]
	cp $c0
	jr c, .asm_17e1f3
	ld a, [wc70c]
	ldh [rSVBK], a
	jr .asm_17e1f9

.asm_17e1f3
	ld a, [wc70c]
	call OpenSRAM

.asm_17e1f9
	ld a, [wc70d]
	ld l, a
	ld a, [wc70e]
	ld h, a
	ld de, wc688
	ld a, [wc70b]
	ld c, a
	ld b, 0
	rst CopyBytes
	ld a, [wc70e]
	cp $c0
	jr c, .asm_17e21a
	ld a, $4
	ldh [rSVBK], a
	jr .asm_17e21d

.asm_17e21a
	call CloseSRAM

.asm_17e21d
	ld a, [wc70b]
	ld c, a
	ld hl, wc688
	ld de, wc608
.asm_17e227
	ld a, [de]
	inc de
	cp [hl]
	inc hl
	jr z, .asm_17e231
	jr c, .asm_17e23e
	jr .asm_17e248

.asm_17e231
	dec c
	jr nz, .asm_17e227
	ld a, [wc711]
	ld l, a
	ld a, [wc712]
	ld h, a
	jr .asm_17e250

.asm_17e23e
	ld a, [wc70f]
	ld l, a
	ld a, [wc710]
	ld h, a
	jr .asm_17e250

.asm_17e248
	ld hl, wc712 + 1
	ld a, [hli]
	ld h, [hl]
	ld l, a

.asm_17e250
	jmp Function17e40f

Function17e254:
	call IncCrashCheckPointer
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld [de], a
	jmp HlToCrashCheckPointer

Function17e261:
	call IncCrashCheckPointer
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [de]
	add [hl]
	ld [de], a
	inc hl
	jmp HlToCrashCheckPointer

Function17e270:
	call IncCrashCheckPointer
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [de]
	sub [hl]
	ld [de], a
	inc hl
	jmp HlToCrashCheckPointer

Function17e27f:
	call IncCrashCheckPointer
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	call HlToCrashCheckPointer
	ld l, c
	ld h, b
	ld a, [de]
	add [hl]
	ld [de], a
	ret

Function17e293:
	call IncCrashCheckPointer
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	call HlToCrashCheckPointer
	ld l, c
	ld h, b
	ld a, [de]
	sub [hl]
	ld [de], a
	ret

Function17e32b:
	ld a, $5
	call OpenSRAM
	ld hl, wc608
	ld de, $b0b1
	ld bc, $40
	rst CopyBytes
	ld hl, wBGMapBuffer
	ld bc, $5b
	rst CopyBytes
	jmp CloseSRAM

Function17e349:
	ld a, $5
	call OpenSRAM
	ld hl, $b0b1
	ld de, wc608
	ld bc, $40
	rst CopyBytes
	ld de, wBGMapBuffer
	ld bc, $5b
	rst CopyBytes
	jmp CloseSRAM

MACRO inc_crash_check_pointer_farcall
	call IncCrashCheckPointer
	call HlToCrashCheckPointer ; redundant
	ldh a, [rSVBK]
	push af
	ld a, $1
	ldh [rSVBK], a
	rept _NARG
		farcall \1
		shift
	endr
	pop af
	ldh [rSVBK], a
	ret
ENDM

MACRO inc_crash_check_pointer_call
	call IncCrashCheckPointer
	call HlToCrashCheckPointer ; redundant
	ldh a, [rSVBK]
	push af
	ld a, $1
	ldh [rSVBK], a
	rept _NARG
		call \1
		shift
	endr
	pop af
	ldh [rSVBK], a
	ret
ENDM

IncCrashCheckPointer_SaveGameData:
	inc_crash_check_pointer_farcall SaveGameData

IncCrashCheckPointer_SaveAfterLinkTrade:
	inc_crash_check_pointer_farcall SaveAfterLinkTrade

IncCrashCheckPointer_SaveBox:
	inc_crash_check_pointer_call DoNothing

IncCrashCheckPointer_SaveChecksum:
	inc_crash_check_pointer_farcall SaveChecksum

IncCrashCheckPointer_SaveTrainerRankingsChecksum:
	inc_crash_check_pointer_farcall UpdateTrainerRankingsChecksum2, BackupGSBallFlag

Function17e3e0:
	call IncCrashCheckPointer
	ld a, [hli]
	ld c, a
	call HlToCrashCheckPointer
	ld a, $1
	ldh [hBGMapMode], a
	jmp DelayFrames

Function17e3f0:
	call IncCrashCheckPointer
	call HlToCrashCheckPointer
.asm_17e3f6
	call JoyTextDelay
	ld hl, hJoyPressed
	ld a, [hl]
	and $1
	ret nz
	ld a, [hl]
	and $2
	ret nz
	call WaitBGMap
	jr .asm_17e3f6

Function17e409:
	ld hl, wcd77
	set 7, [hl]
	ret

Function17e40f:
	ld de, wBGPals1
	add hl, de
	jr HlToCrashCheckPointer

IncCrashCheckPointer:
	ld hl, wMobileCrashCheckPointer
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc hl

HlToCrashCheckPointer:
	ld a, l
	ld [wMobileCrashCheckPointer], a
	ld a, h
	ld [wMobileCrashCheckPointer + 1], a
	ret

Function17e43d:
	ld a, [wBGMapBuffer]
	ld l, a
	ld a, [wcd21]
	ld h, a
	add hl, bc
	ret

Function17e447:
	ld a, [wBGMapBuffer]
	ld l, a
	ld a, [wcd21]
	ld h, a
	add hl, de
	ret

Function17e451:
	ld a, [wcd42]
	and a
	ret z
	call Function17e51b
	call Function17e4dd
	ld a, [wcd2e]
	push af
	ld a, [wcd49]
	ld l, a
	ld a, [wcd4a]
	ld h, a
	ld a, [wcd2f]
	ld [wcd2e], a
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	push hl
	hlcoord 0, 0
	ld bc, $14
	ld a, [wcd23]
	rst AddNTimes
	ld a, [wCreditsTimer]
	ld c, a
	ld b, 0
	add hl, bc
	pop bc
	ld a, [wMobileCommsJumptableIndex]
.asm_17e48b
	push af
	push hl
	ld a, [wcd24]
.asm_17e490
	push af
	push hl
	ld a, [bc]
	inc bc
	ld e, a
	ld a, [bc]
	inc bc
	ld d, a
	push bc
	push hl
	ld a, [wBGMapBuffer]
	ld l, a
	ld a, [wcd21]
	ld h, a
	add hl, de
	push hl
	pop de
	pop hl
	rst PlaceString
	pop bc
	pop hl
	ld a, [wcd26]
	ld e, a
	ld d, 0
	add hl, de
	ld a, [wcd2e] ; no-optimize Inefficient WRAM increment/decrement
	inc a
	ld [wcd2e], a
	ld e, a
	ld a, [wcd42]
	cp e
	jr z, .asm_17e4d5
	pop af
	dec a
	jr nz, .asm_17e490
	pop hl
	ld a, [wcd27]
	ld de, $14
.asm_17e4cb
	add hl, de
	dec a
	jr nz, .asm_17e4cb
	pop af
	dec a
	jr nz, .asm_17e48b
	jr .asm_17e4d8

.asm_17e4d5
	pop af
	pop hl
	pop af

.asm_17e4d8
	pop af
	ld [wcd2e], a
	ret

Function17e4dd:
	ld a, [wcd2c]
	and $1
	ret z
	ld a, [wcd29]
	hlcoord 0, 0
	ld bc, $14
	rst AddNTimes
	ld a, [wcd28]
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [wcd2f]
	and a
	jr z, .asm_17e4ff
	ld [hl], $61

.asm_17e4ff
	ld a, [wcd2a]
	ld bc, $14
	rst AddNTimes
	ld a, [wcd42]
	ld c, a
	ld a, [wcd2e]
	ld b, a
	ld a, [wcd24]
	add b
	cp c
	ret z
	ret nc
	ld [hl], $ee
	ret

Function17e51b:
	ld a, [wcd28]
	ld hl, wCreditsTimer
	sub [hl]
	inc a
	ld [wcd4f], a
	hlcoord 0, 0
	ld bc, $14
	ld a, [wcd23]
	dec a
	rst AddNTimes
	ld a, [wCreditsTimer]
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [wMobileCommsJumptableIndex]
	ld c, a
	ld a, [wcd27]
	call SimpleMultiply
.asm_17e544
	push af
	push hl
	ld a, [wcd4f]
	ld c, a
	ld b, 0
	ld a, $7f
	rst ByteFill
	pop hl
	ld bc, $14
	add hl, bc
	pop af
	dec a
	jr nz, .asm_17e544
	ret

Function17e55b:
	ld a, [wcd42]
	and a
	ret z
	ld a, $ed
	jr Function17e571

Function17e566:
	ld a, [wcd42]
	and a
	ret z
	ld a, $7f
; fallthrough
Function17e571:
	push af
	hlcoord 0, 0
	ld bc, $14
	ld a, [wcd23]
	rst AddNTimes
	ld a, [wCreditsTimer]
	ld c, a
	ld b, 0
	add hl, bc
	dec hl
	push hl
	ld a, [wcd31]
	dec a
	ld c, a
	ld a, [wcd27]
	call SimpleMultiply
	ld l, $0
	ld h, l
	ld bc, $14
	rst AddNTimes
	ld a, [wcd30]
	dec a
	ld c, a
	ld a, [wcd26]
	call SimpleMultiply
	ld c, a
	ld b, 0
	add hl, bc
	pop bc
	add hl, bc
	pop af
	ld [hl], a
	ret

Function17e5af:
	ld a, [wcd2c]
	and $2
	ret z
	ld a, [wcd43]
	ld l, a
	ld a, [wMobileInactivityTimerMinutes]
	ld h, a
	bccoord 0, 0
	add hl, bc
	ld bc, $ffec
	add hl, bc
	ld a, [wMobileInactivityTimerSeconds]
	ld c, a
	ld b, 0
	ld a, [wMobileInactivityTimerFrames]
	call Function17e600
	ld a, [wcd2e]
	ld c, a
	ld b, 0
	ld a, [wcd4d]
	ld l, a
	ld a, [wcd4e]
	ld h, a
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [wBGMapBuffer]
	ld l, a
	ld a, [wcd21]
	ld h, a
	add hl, de
	push hl
	pop de
	ld a, [wcd43]
	ld l, a
	ld a, [wMobileInactivityTimerMinutes]
	ld h, a
	bccoord 0, 0
	add hl, bc
	jmp PlaceString

Function17e600:
.asm_17e600
	push af
	push hl
	push bc
	ld a, $7f
	rst ByteFill
	pop bc
	pop hl
	ld de, $14
	add hl, de
	pop af
	dec a
	jr nz, .asm_17e600
	ret

Function17e613:
	push hl
	hlcoord 0, 0
	ld bc, $14
	ld a, [de]
	inc de
	push af
	ld a, [de]
	inc de
	and a
.asm_17e620
	jr z, .asm_17e626
	add hl, bc
	dec a
	jr .asm_17e620

.asm_17e626
	pop af
	ld c, a
	ld b, 0
	add hl, bc
	push hl
	ld a, [wcd53]
	ld [hli], a
	ld a, [de]
	inc de
	dec a
	dec a
	jr z, .asm_17e63f
	ld c, a
	ld a, [wcd53]
	inc a
.asm_17e63b
	ld [hli], a
	dec c
	jr nz, .asm_17e63b

.asm_17e63f
	ld a, [wcd53]
	add $2
	ld [hl], a
	pop hl
	ld bc, $14
	add hl, bc
	ld a, [de]
	dec de
	dec a
	dec a
	jr z, .asm_17e674
	ld b, a
.asm_17e651
	push hl
	ld a, [wcd53]
	add $3
	ld [hli], a
	ld a, [de]
	dec a
	dec a
	jr z, .asm_17e664
	ld c, a
	ld a, $7f
.asm_17e660
	ld [hli], a
	dec c
	jr nz, .asm_17e660

.asm_17e664
	ld a, [wcd53]
	add $4
	ld [hl], a
	pop hl
	push bc
	ld bc, $14
	add hl, bc
	pop bc
	dec b
	jr nz, .asm_17e651

.asm_17e674
	ld a, [wcd53]
	add $5
	ld [hli], a
	ld a, [de]
	dec a
	dec a
	jr z, .asm_17e689
	ld c, a
	ld a, [wcd53]
	add $6
.asm_17e685
	ld [hli], a
	dec c
	jr nz, .asm_17e685

.asm_17e689
	ld a, [wcd53]
	add $7
	ld [hl], a
	pop hl
	ret

Function17e691:
	push hl
	ld hl, NULL
	ld bc, $14
	ld a, [de]
	inc de
	push af
	ld a, [de]
	inc de
	inc de
	and a
.asm_17e69f
	jr z, .asm_17e6a5
	add hl, bc
	dec a
	jr .asm_17e69f

.asm_17e6a5
	pop af
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [de]
	dec de
.asm_17e6ac
	push af
	push hl
	ld a, [de]
.asm_17e6af
	push af
	push hl
	push hl
	bccoord 0, 0
	add hl, bc
	ld a, [hl]
	cp $7f
	jr z, .asm_17e6c2
	ld a, [wcd53]
	add $8
	jr .asm_17e6c7

.asm_17e6c2
	ld a, [wcd53]
.asm_17e6c7
	pop hl
	bccoord 0, 0, wAttrmap
	add hl, bc
	ld [hl], a
	pop hl
	inc hl
	pop af
	dec a
	jr nz, .asm_17e6af
	pop hl
	ld bc, $14
	add hl, bc
	pop af
	dec a
	jr nz, .asm_17e6ac
	pop hl
	ret

Function17e6de:
	push af
	ld a, [wc708]
	ld l, a
	ld a, [wc709]
	ld h, a
	decoord 0, 0, wAttrmap
	add hl, de
	pop af
	ld b, $7
.asm_17e6ee
	push hl
	ld c, $7
.asm_17e6f1
	ld [hli], a
	dec c
	jr nz, .asm_17e6f1
	pop hl
	ld de, $14
	add hl, de
	dec b
	jr nz, .asm_17e6ee
	ret

PokemonNewsGFX:
INCBIN "gfx/mobile/pokemon_news.2bpp"

PokemonNewsPalettes:
INCLUDE "gfx/mobile/pokemon_news.pal"

Function17f4f6:
	ld a, [wcd6a]
	ld l, a
	ld a, [wcd6b]
	ld h, a
	ld a, [wcd47]
	ld c, a
	ld a, [wBGMapPalBuffer]
	ld b, a
	ld a, [wcd2e]
.asm_17f509
	and a
	ret z
	dec a
	add hl, bc
	jr .asm_17f509

