ClearSavedObjPals::
	xor a
	ld [wUsedObjectPals], a
	ld hl, wUsedObjectPals
	ld bc, wNeededPalIndex - wUsedObjectPals
	ld a, -1
	jmp ByteFill

DisableDynPalUpdates::
	ld hl, wPalFlags
	set DISABLE_DYN_PAL_F, [hl]
	ret

EnableDynPalUpdates::
	ld hl, wPalFlags
	res DISABLE_DYN_PAL_F, [hl]
	; fallthrough to manually run CheckForUsedObjPals

CheckForUsedObjPals::
	push hl
	push de
	push bc
	push af

	ld hl, wPalFlags
	bit DISABLE_DYN_PAL_F, [hl]
	jmp nz, PopAFBCDEHL

	; reset all wUsedObjectPals bits
	xor a
	ld [wUsedObjectPals], a

	; Scan for active objects first and mark those pals still in use.
	ld hl, wPalFlags
	set SCAN_OBJECTS_FIRST_F, [hl]
	call ScanObjectStructPals

	; Scan for active objects that still need pals loaded
	ld hl, wPalFlags
	res SCAN_OBJECTS_FIRST_F, [hl]
	call ScanObjectStructPals

	; If this flag was set, it's time to reset it
	ld hl, wPalFlags
	res NO_DYN_PAL_APPLY_F, [hl]
	jmp PopAFBCDEHL

ScanObjectStructPals:
	ld de, wObjectStructs
	ld b, NUM_OBJECT_STRUCTS

.loop
	; Check if the object has a sprite
	ld hl, OBJECT_SPRITE
	add hl, de
	ld a, [hl]
	and a
	jr z, .skip

	; Look up the object's requested color palette
	ld hl, OBJECT_PAL_INDEX
	add hl, de
	ld a, [hl]
	ld [wNeededPalIndex], a

	; Mark the palette in use and/or load the palette
	call MarkUsedPal
	; Then load the return into OBJECT_PALETTE, which corresponds
	; to OBJ 0 - OBJ 7
	and PALETTE_MASK
	ld c, a
	ld hl, OBJECT_PALETTE
	add hl, de
	ld a, [hl]
	and ~PALETTE_MASK
	or c
	ld [hl], a

.skip
	dec b
	ret z

	ld hl, OBJECT_LENGTH
	add hl, de
	ld d, h
	ld e, l
	jr .loop

MarkUsedPal:
	push hl
	push de
	push bc

	; Check if pal is already loaded
	lb bc, 8, 0
	ld hl, wLoadedObjPal0
.loaded_loop
	cp [hl]
	jr z, .mark_in_use
	inc hl
	inc c
	dec b
	jr nz, .loaded_loop

	; If this is the first pass, we do not want to
	; load any pals yet, just mark the still active pals
	ld hl, wPalFlags
	bit SCAN_OBJECTS_FIRST_F, [hl]
	jr nz, .done

	ld b, a
	push bc

	; Pal is not already loaded, find a empty pal slot
	ld a, [wUsedObjectPals]
	inc a
	jr nz, .some_available
	ld b, 7
	jr .unset_bit_found
.some_available
	dec a
	ld b, -1
.bit_check_loop
	inc b
	rrca
	jr c, .bit_check_loop
.unset_bit_found
	ld a, b
	pop bc

	; Save and remember what pal is loaded where
	ld c, a
	ld a, b
	ld b, 0
	ld hl, wLoadedObjPal0
	add hl, bc
	ld [hl], a

	; Copy the needed pal
	push bc
	ld a, c
	ld bc, 1 palettes
	ld hl, wOBPals1
	rst AddNTimes
	ld d, h
	ld e, l
	call CopySpritePal
	pop bc

	; Set the corresponding bit in wUsedObjectPals
	; A set bit corresponds to a used pal slot
.mark_in_use
	push bc
	ld hl, wUsedObjectPals
	inc c
	ld a, 1
.used_loop
	dec c
	jr z, .found_used
	rla
	jr .used_loop
.found_used
	or [hl]
	ld [hl], a
	pop bc
	ld a, c

.done
	jmp PopBCDEHL
