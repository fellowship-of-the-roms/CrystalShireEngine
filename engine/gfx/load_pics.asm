GetUnownLetter:
; Return Unown letter in wUnownLetter based on Personality Form at hl
	ld a, [hl]
	and FORM_MASK
	ld [wUnownLetter], a
	ret

GetMonFrontpic:
	ld a, [wCurPartySpecies]
	ld [wCurSpecies], a
	call IsAPokemon
	ret c
	ldh a, [rSVBK]
	push af
	call _GetFrontpic
	pop af
	ldh [rSVBK], a
	jmp CloseSRAM

GetAnimatedFrontpic:
	ld a, [wCurPartySpecies]
	ld [wCurSpecies], a
	call IsAPokemon
	ret c
	ldh a, [rSVBK]
	push af
	xor a
	ldh [hBGMapMode], a
	call _GetFrontpic
	ld a, BANK(vTiles3)
	ldh [rVBK], a
	call GetAnimatedEnemyFrontpic
	xor a
	ldh [rVBK], a
	pop af
	ldh [rSVBK], a
	jmp CloseSRAM

PrepareFrontpic:
	ldh a, [rSVBK]
	push af
	call _PrepareFrontpic
	pop af
	ldh [rSVBK], a
	ret

_PrepareFrontpic:
	ld a, BANK(sEnemyFrontPicTileCount)
	call OpenSRAM
	push de
	call GetBaseData
	ld a, [wBasePicSize]
	and $f
	ld b, a
	push bc
	call GetFrontpicPointer
	ld a, BANK(wDecompressScratch)
	ldh [rSVBK], a
	ld a, b
	ld de, wDecompressScratch
	call FarDecompress
	; calculate tile count from final address; requires wDecompressScratch to be at the beginning of the bank
	swap e
	swap d
	ld a, d
	and $f0 ; get rid of the upper nibble of the address
	or e
	; and save the tile count for later
	ld [sEnemyFrontPicTileCount], a
	pop bc
	ld hl, sPaddedEnemyFrontPic
	ld de, wDecompressScratch
	call PadFrontpic
	pop hl
	push hl
	ld de, sPaddedEnemyFrontPic
	ld c, 7 * 7
	ldh a, [hROMBank]
	pop hl
	ret

_GetFrontpic:
	call _PrepareFrontpic
	push hl
	call Get2bpp
	pop hl
	ret

GetPicIndirectPointer:
	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld b, h
	ld c, l
	ld a, l
	sub LOW(UNOWN)
	if HIGH(UNOWN) == 0
		or h
	else
		jr nz, .not_unown
		if HIGH(UNOWN) == 1
			dec h
		else
			ld a, h
			cp HIGH(UNOWN)
		endc
	endc
	jr z, .unown
.not_unown
	ld hl, PokemonPicPointers
	ld d, BANK(PokemonPicPointers)
.done
	ld a, 6
	jmp AddNTimes

.unown
	ld a, [wUnownLetter]
	ld c, a
	ld b, 0
	ld hl, UnownPicPointers - 6
	ld d, BANK(UnownPicPointers)
	jr .done

GetFrontpicPointer:
	call GetPicIndirectPointer
	ld a, d
	call GetFarByte
	push af
	inc hl
	ld a, d
	call GetFarWord
	pop bc
	ret

GetAnimatedEnemyFrontpic:
	push hl
	ld de, sPaddedEnemyFrontPic
	ld c, 7 * 7
	ldh a, [hROMBank]
	ld b, a
	call Get2bpp
	pop hl
	ld de, 7 * 7 tiles
	add hl, de
	push hl
	ld a, BANK(wBasePicSize)
	ld hl, wBasePicSize
	call GetFarWRAMByte
	pop hl
	and $f
	ld de, wDecompressScratch + 5 * 5 tiles
	ld c, 5 * 5
	cp 5
	jr z, .got_dims
	ld de, wDecompressScratch + 6 * 6 tiles
	ld c, 6 * 6
	cp 6
	jr z, .got_dims
	ld de, wDecompressScratch + 7 * 7 tiles
	ld c, 7 * 7
.got_dims
	; calculate the number of tiles dedicated to animation
	ld a, [sEnemyFrontPicTileCount]
	sub c
	; exit early if none
	ret z
	ld c, a
	push hl
	push bc
	call LoadFrontpicTiles
	pop bc
	pop hl
	ld de, wDecompressScratch
	ldh a, [hROMBank]
	ld b, a
	; if the tiles fit in a single VRAM block ($80 tiles), load them...
	ld a, c
	sub 128 - 7 * 7
	jr c, .finish
	; otherwise, load as many as we can...
	inc a
	ld [sEnemyFrontPicTileCount], a ; save the remainder
	ld c, 127 - 7 * 7
	call Get2bpp
	; ...and load the rest into vTiles4
	ld de, wDecompressScratch + (127 - 7 * 7) tiles
	ld hl, vTiles4
	ldh a, [hROMBank]
	ld b, a
	ld a, [sEnemyFrontPicTileCount]
	ld c, a
.finish
	jmp Get2bpp

LoadFrontpicTiles:
	ld hl, wDecompressScratch
	swap c
	ld a, c
	and $f
	ld b, a
	ld a, c
	and $f0
	ld c, a
	push bc
	call LoadOrientedFrontpic
	pop bc
	ld a, c
	and a
	jr z, .handle_loop
	inc b
	jr .handle_loop

.loop
	push bc
	ld c, 0
	call LoadOrientedFrontpic
	pop bc
.handle_loop
	dec b
	jr nz, .loop
	ret

GetMonBackpic:
	ld a, [wCurPartySpecies]
	call IsAPokemon
	ret c

	ldh a, [rSVBK]
	push af
	push de
	call GetPicIndirectPointer
	ld a, BANK(wDecompressScratch)
	ldh [rSVBK], a

	inc hl
	inc hl
	inc hl
	ld a, d
	call GetFarByte
	push af
	inc hl
	ld a, d
	call GetFarWord
	ld de, wDecompressScratch
	pop af
	call FarDecompress
	ld hl, wDecompressScratch
	ld c, 6 * 6
	call FixBackpicAlignment
	pop hl
	ld de, wDecompressScratch
	ldh a, [hROMBank]
	ld b, a
	call Get2bpp
	pop af
	ldh [rSVBK], a
	ret

GetTrainerPic:
	ld a, [wTrainerClass]
	and a
	ret z
	cp NUM_TRAINER_CLASSES + 1
	ret nc
	call WaitBGMap
	xor a
	ldh [hBGMapMode], a
	ld hl, TrainerPicPointers
	ld a, [wTrainerClass]
	dec a
	ld bc, 3
	rst AddNTimes
	ldh a, [rSVBK]
	push af
	ld a, BANK(wDecompressScratch)
	ldh [rSVBK], a
	push de
	ld a, BANK(TrainerPicPointers)
	call GetFarByte
	push af
	inc hl
	ld a, BANK(TrainerPicPointers)
	call GetFarWord
	pop af
	ld de, wDecompressScratch
	call FarDecompress
	pop hl
	ld de, wDecompressScratch
	ld c, 7 * 7
	ldh a, [hROMBank]
	ld b, a
	call Get2bpp
	pop af
	ldh [rSVBK], a
	call WaitBGMap
	ld a, 1
	ldh [hBGMapMode], a
	ret

DecompressGet2bpp:
; Decompress lz data from b:hl to wDecompressScratch, then copy it to address de.

	ldh a, [rSVBK]
	push af
	ld a, BANK(wDecompressScratch)
	ldh [rSVBK], a

	push de
	push bc
	ld a, b
	ld de, wDecompressScratch
	call FarDecompress
	pop bc
	ld de, wDecompressScratch
	pop hl
	ldh a, [hROMBank]
	ld b, a
	call Get2bpp

	pop af
	ldh [rSVBK], a
	ret

FixBackpicAlignment:
	push de
	push bc
	ld a, [wBoxAlignment]
	and a
	jr z, .keep_dims
	ld a, c
	cp 7 * 7
	ld de, 7 * 7 tiles
	jr z, .got_dims
	cp 6 * 6
	ld de, 6 * 6 tiles
	jr z, .got_dims
	ld de, 5 * 5 tiles

.got_dims
	ld a, [hl]
	lb bc, 0, 8
.loop
	rra
	rl b
	dec c
	jr nz, .loop
	ld a, b
	ld [hli], a
	dec de
	ld a, e
	or d
	jr nz, .got_dims

.keep_dims
	pop bc
	pop de
	ret

PadFrontpic:
; pads frontpic to fill 7x7 box
	ld a, b
	cp 6
	jr z, .six
	cp 5
	jr z, .five

.seven_loop
	ld c, 7 << 4
	call LoadOrientedFrontpic
	dec b
	jr nz, .seven_loop
	ret

.six
	ld c, 7 << 4
	xor a
	call .Fill
.six_loop
	ld c, (7 - 6) << 4
	xor a
	call .Fill
	ld c, 6 << 4
	call LoadOrientedFrontpic
	dec b
	jr nz, .six_loop
	ret

.five
	ld c, 7 << 4
	xor a
	call .Fill
.five_loop
	ld c, (7 - 5) << 4
	xor a
	call .Fill
	ld c, 5 << 4
	call LoadOrientedFrontpic
	dec b
	jr nz, .five_loop
	ld c, 7 << 4
	xor a
; fallthrough
.Fill:
	ld [hli], a
	dec c
	jr nz, .Fill
	ret

LoadOrientedFrontpic:
	ld a, [wBoxAlignment]
	and a
	jr nz, .x_flip
.left_loop
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, .left_loop
	ret

.x_flip
	push bc
.right_loop
	ld a, [de]
	inc de
	ld b, a
	xor a
rept 8
	rr b
	rla
endr
	ld [hli], a
	dec c
	jr nz, .right_loop
	pop bc
	ret
