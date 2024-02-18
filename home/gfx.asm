DEF TILES_PER_CYCLE EQU 8
DEF MOBILE_TILES_PER_CYCLE EQU 6

Get2bppViaHDMA::
	ldh a, [rLCDC]
	bit rLCDC_ENABLE, a
	jmp z, Copy2bpp

	homecall HDMATransfer2bpp

	ret

Get1bppViaHDMA::
	ldh a, [rLCDC]
	bit rLCDC_ENABLE, a
	jmp z, Copy1bpp

	homecall HDMATransfer1bpp

	ret

FarCopyBytesDouble_DoubleBankSwitch::
	ldh [hTempBank], a
	ldh a, [hROMBank]
	push af
	ldh a, [hTempBank]
	rst Bankswitch

	call FarCopyBytesDouble

	pop af
	rst Bankswitch
	ret

SafeHDMATransfer::
; Copy c 2bpp tiles from b:de to hl using GDMA. Assumes $00 < c <= $80.
	dec c
	ldh a, [hBGMapMode]
	push af
	xor a
	ldh [hBGMapMode], a
	ldh a, [hROMBank]
	push af
	ld a, b
	rst Bankswitch

	; load the source and target MSB and LSB
	ld a, d
	ldh [rHDMA1], a ; source MSB
	ld a, e
	ldh [rHDMA2], a ; source LSB
	ld a, h
	ldh [rHDMA3], a ; target MSB
	ld a, l
	ldh [rHDMA4], a ; target LSB

	; if LCD is disabled, just run all of it
	ldh a, [rLCDC]
	bit rLCDC_ENABLE, a
	jr nz, .lcd_enabled

	ld a, c
	ldh [rHDMA5], a
	jr .done

.lcd_enabled
	push de
	di
.loop
	ld a, c
	cp 4
	ld d, c
	jr c, .got_tilecopy
	ld d, 3
.got_tilecopy
	push bc
	lb bc, %11, LOW(rSTAT)
.wait_hblank1
	ld a, [c]
	and b
	jr z, .wait_hblank1
.wait_hblank2
	ld a, [c]
	and b
	jr nz, .wait_hblank2

	ld a, d
	ldh [rHDMA5], a
	pop bc
	ld a, c
	sub 4
	ld c, a
	jr nc, .loop
	xor a
	ldh [rIF], a
	ei
	pop de
.done
	pop af
	rst Bankswitch
	pop af
	ldh [hBGMapMode], a
	ret

UpdatePlayerSprite::
	farjp _UpdatePlayerSprite

LoadStandardFont::
	farjp _LoadStandardFont

LoadFontsBattleExtra::
	farjp _LoadFontsBattleExtra

LoadFontsExtra::
	farjp LoadFrame

DecompressRequest2bpp::
	push de
	ld a, BANK(sScratch)
	call OpenSRAM
	push bc

	ld de, sScratch
	ld a, b
	call FarDecompress

	pop bc
	pop hl

	ld de, sScratch
	call Request2bpp
	jmp CloseSRAM

FarCopyBytes::
; copy bc bytes from a:hl to de

	ldh [hTempBank], a
	ldh a, [hROMBank]
	push af
	ldh a, [hTempBank]
	rst Bankswitch

	rst CopyBytes

	pop af
	rst Bankswitch
	ret

FarCopyBytesDouble:
; Copy bc bytes from a:hl to bc*2 bytes at de,
; doubling each byte in the process.

	ldh [hTempBank], a
	ldh a, [hROMBank]
	push af
	ldh a, [hTempBank]
	rst Bankswitch

; switcheroo, de <> hl
	ld a, h
	ld h, d
	ld d, a
	ld a, l
	ld l, e
	ld e, a

	inc b
	inc c
	jr .dec

.loop
	ld a, [de]
	inc de
	ld [hli], a
	ld [hli], a
.dec
	dec c
	jr nz, .loop
	dec b
	jr nz, .loop

	pop af
	rst Bankswitch
	ret

CheckGDMA:
; Check if we can use GDMA. Return carry if we can.
	ldh a, [hCGB]
	and a
	ret z

	; The 4 least significant bits must be zero.
	ld a, e
	or l
	and $f
	ret nz

	; Must be a copy from non-VRAM to VRAM.
	ld a, d
	sub $80
	cp $20
	ccf
	ret nc
	ld a, h
	sub $80
	cp $20
	ret nc

	; Must not be a copy of >$80 tiles.
	ld a, c
	dec a
	add a
	ccf
	ret

Request2bpp::
; Load 2bpp at b:de to occupy c tiles of hl.
	call CheckGDMA
	jmp c, SafeHDMATransfer

	ldh a, [hBGMapMode]
	push af
	xor a
	ldh [hBGMapMode], a

	ldh a, [hROMBank]
	push af
	ld a, b
	rst Bankswitch

	ldh a, [hTilesPerCycle]
	push af
	ld a, TILES_PER_CYCLE
	ldh [hTilesPerCycle], a

	ld a, [wLinkMode]
	cp LINK_MOBILE
	jr nz, .NotMobile
	ldh a, [hMobile]
	and a
	jr nz, .NotMobile
	ld a, MOBILE_TILES_PER_CYCLE
	ldh [hTilesPerCycle], a

.NotMobile:
	ld a, e
	ld [wRequested2bppSource], a
	ld a, d
	ld [wRequested2bppSource + 1], a
	ld a, l
	ld [wRequested2bppDest], a
	ld a, h
	ld [wRequested2bppDest + 1], a
.loop
	ld a, c
	ld hl, hTilesPerCycle
	cp [hl]
	jr nc, .cycle

	ld [wRequested2bppSize], a
.wait
	call DelayFrame
	ld a, [wRequested2bppSize]
	and a
	jr nz, .wait

	pop af
	ldh [hTilesPerCycle], a

	pop af
	rst Bankswitch

	pop af
	ldh [hBGMapMode], a
	ret

.cycle
	ldh a, [hTilesPerCycle]
	ld [wRequested2bppSize], a

.wait2
	call DelayFrame
	ld a, [wRequested2bppSize]
	and a
	jr nz, .wait2

	ld a, c
	ld hl, hTilesPerCycle
	sub [hl]
	ld c, a
	jr .loop

Get2bpp::
; copy c 2bpp tiles from b:de to hl
	ldh a, [rLCDC]
	bit rLCDC_ENABLE, a
	jmp nz, Request2bpp
	; fallthrough

Copy2bpp:
	call CheckGDMA
	jmp c, SafeHDMATransfer

	push hl
	ld h, d
	ld l, e
	pop de

; bank
	ld a, b

; bc = c * LEN_2BPP_TILE
	push af
	swap c
	ld a, $f
	and c
	ld b, a
	ld a, $f0
	and c
	ld c, a
	pop af

	jmp FarCopyBytes

GetMaybeOpaque1bpp::
	ldh a, [rLCDC]
	bit rLCDC_ENABLE, a
	jr nz, _Request1bpp
	jr _Copy1bpp

GetOpaque1bppSpaceTile::
	ld de, TextboxSpaceGFX
GetOpaque1bppFontTile::
; Two bytes in VRAM define eight pixels (2 bits/pixel)
; Bits are paired from the bytes, e.g. %ABCDEFGH %abcdefgh defines pixels
; %Aa, %Bb, %Cc, %Dd, %Ee, %Ff, %Gg, %Hh
; %00 = white, %11 = black, %10 = light, %01 = dark
	lb bc, BANK(Font), 1
GetOpaque1bpp::
	ldh a, [rLCDC]
	bit rLCDC_ENABLE, a
	jr nz, RequestOpaque1bpp
CopyOpaque1bpp:
	ld a, 1
	ldh [hRequestOpaque1bpp], a
	jr _Copy1bpp

Get1bpp::
	ldh a, [rLCDC]
	bit rLCDC_ENABLE, a
	jr nz, Request1bpp
Copy1bpp::
	xor a
	ldh [hRequestOpaque1bpp], a
_Copy1bpp::
; copy c 1bpp tiles from b:de to hl
	call StackCallInBankB

.Function:
	call WriteVCopyRegistersToHRAM
	ld b, c
	di
	call _Serve1bppRequest
	reti

	RequestOpaque1bpp:
	ld a, 1
	ldh [hRequestOpaque1bpp], a
	jr _Request1bpp
Request1bpp::
	xor a
	ldh [hRequestOpaque1bpp], a
_Request1bpp:
; Load 1bpp at b:de to occupy c tiles of hl.
	call StackCallInBankB

.Function:
	ldh a, [hBGMapMode]
	push af
	xor a
	ldh [hBGMapMode], a

	call WriteVCopyRegistersToHRAM
	ldh a, [rLY]
	cp $88
	jr c, .handleLoop
.loop
	ldh a, [hTilesPerCycle]
	sub 16
	ldh [hTilesPerCycle], a
	jr c, .copyRemainingTilesAndExit
	jr nz, .copySixteenTilesAndContinue
.copyRemainingTilesAndExit
	add 16
	ldh [hRequested1bpp], a
	xor a
	ldh [hTilesPerCycle], a
	call DelayFrame
	ldh a, [hRequested1bpp]
	and a
	jr z, .clearTileCountAndFinish
.addUncopiedTilesToCount
	ld b, a
	ldh a, [hTilesPerCycle]
	add b
	ldh [hTilesPerCycle], a
	xor a
	ldh [hRequested1bpp], a
	jr .handleLoop
.clearTileCountAndFinish
	xor a
	ldh [hTilesPerCycle], a
	jr .done
.copySixteenTilesAndContinue
	ld a, 16
	ldh [hRequested1bpp], a
	call DelayFrame
	ldh a, [hRequested1bpp]
	and a
	jr nz, .addUncopiedTilesToCount
.handleLoop
	call HBlankCopy1bpp
	jr c, .loop
.done
	pop af
	ldh [hBGMapMode], a
	ret

HBlankCopy1bpp:
	di
	ld [hSPBuffer], sp
	ld hl, hRequestedVTileDest
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a ; destination

	ld sp, hl ; source
	pop hl
	ld sp, hl ; set source to sp
	ld h, d ; exchange hl and de
	ld l, e
	jr .innerLoop
.outerLoop
	ldh a, [rLY]
	cp $88
	jr nc, ContinueHBlankCopy
.innerLoop
	pop bc
	pop de
	ldh a, [hRequestOpaque1bpp]
	dec a
	jr z, .waitNoHBlankOpaque
.waitNoHBlank
	ldh a, [rSTAT]
	and rSTAT_MODE_MASK
	jr z, .waitNoHBlank
.waitHBlank
	ldh a, [rSTAT]
	and rSTAT_MODE_MASK
	jr nz, .waitHBlank
; preloads r us
	ld a, c
	ld [hli], a
	ld [hli], a
	ld a, b
	ld [hli], a
	ld [hli], a
	ld a, e
	ld [hli], a
	ld [hli], a
	ld a, d
	ld [hli], a
	ld [hli], a
rept 2
	pop de
	ld a, e
	ld [hli], a
	ld [hli], a
	ld a, d
	ld [hli], a
	ld [hli], a
endr
	ldh a, [hTilesPerCycle]
	dec a
	ldh [hTilesPerCycle], a
	jr nz, .outerLoop
	jr DoneHBlankCopy

.waitNoHBlankOpaque
	ldh a, [rSTAT]
	and rSTAT_MODE_MASK
	jr z, .waitNoHBlankOpaque
.waitHBlankOpaque
	ldh a, [rSTAT]
	and rSTAT_MODE_MASK
	jr nz, .waitHBlankOpaque
; preloads r us
	ld a, $ff
	ld [hli], a
	ld a, c
	ld [hli], a
	ld a, $ff
	ld [hli], a
	ld a, b
	ld [hli], a
	ld a, $ff
	ld [hli], a
	ld a, e
	ld [hli], a
	ld a, $ff
	ld [hli], a
	ld a, d
	ld [hli], a
rept 2
	pop de
	ld a, $ff
	ld [hli], a
	ld a, e
	ld [hli], a
	ld a, $ff
	ld [hli], a
	ld a, d
	ld [hli], a
endr
	ldh a, [hTilesPerCycle]
	dec a
	ldh [hTilesPerCycle], a
	jr nz, .outerLoop
	jr DoneHBlankCopy

ContinueHBlankCopy:
	ld [hRequestedVTileSource], sp
	ld sp, hl
	ld [hRequestedVTileDest], sp
	scf
DoneHBlankCopy:
	ld sp, hSPBuffer
	pop hl
	ld sp, hl
	reti

WriteVCopyRegistersToHRAM:
	ld a, e
	ldh [hRequestedVTileSource], a
	ld a, d
	ldh [hRequestedVTileSource + 1], a
	ld a, l
	ldh [hRequestedVTileDest], a
	ld a, h
	ldh [hRequestedVTileDest + 1], a
	ld a, c
	ldh [hTilesPerCycle], a
	ret

VRAMToVRAMCopy::
	lb bc, rSTAT_MODE_MASK, LOW(rSTAT) ; predefine for speed and size
	jr .waitNoHBlank2
.outerLoop2
	ldh a, [rLY]
	cp $88
	jr nc, ContinueHBlankCopy
.waitNoHBlank2
	ldh a, [c]
	and b
	jr z, .waitNoHBlank2
.waitHBlank2
	ldh a, [c]
	and b
	jr nz, .waitHBlank2
rept 8
	pop de
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
endr
	ld a, l
	and $f
	jr nz, .waitNoHBlank2
	ldh a, [hTilesPerCycle]
	dec a
	ldh [hTilesPerCycle], a
	jr nz, .outerLoop2
	jr DoneHBlankCopy