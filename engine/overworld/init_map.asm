ReanchorBGMap_NoOAMUpdate::
	call DelayFrame
	ldh a, [hOAMUpdate]
	push af

	ld a, $1
	ldh [hOAMUpdate], a
	ldh a, [hBGMapMode]
	push af
	xor a
	ldh [hBGMapMode], a

	call .ReanchorBGMap

	pop af
	ldh [hBGMapMode], a
	pop af
	ldh [hOAMUpdate], a

	ld hl, wStateFlags
	set TEXT_STATE_F, [hl]
	ret

.ReanchorBGMap:
	ld hl, rIE
	res B_IE_STAT, [hl]
	xor a
	ldh [hLCDCPointer], a
	ldh [hBGMapMode], a
	ld a, $90
	ldh [hWY], a
	call LoadOverworldTilemapAndAttrmapPals
	ld a, HIGH(vBGMap1)
	call .LoadBGMapAddrIntoHRAM
	call HDMATransferTilemapAndAttrmap_Menu
	farcall LoadOW_BGPal7
	farcall ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	xor a
	ldh [hBGMapMode], a
	ldh [hWY], a
	call HDMATransfer_FillBGMap0WithBlack
	ld a, HIGH(vBGMap0)
	call .LoadBGMapAddrIntoHRAM
	xor a ; LOW(vBGMap0)
	ld [wBGMapAnchor], a
	ld a, HIGH(vBGMap0)
	ld [wBGMapAnchor + 1], a
	xor a
	ldh [hSCX], a
	ldh [hSCY], a
	jmp ApplyBGMapAnchorToObjects

.LoadBGMapAddrIntoHRAM:
	ldh [hBGMapAddress + 1], a
	xor a
	ldh [hBGMapAddress], a
	ret

LoadFonts_NoOAMUpdate::
	ldh a, [hOAMUpdate]
	push af
	ld a, $1
	ldh [hOAMUpdate], a

	call .LoadGFX

	pop af
	ldh [hOAMUpdate], a
	ret

.LoadGFX:
	call LoadFontsExtra
	ld a, $90
	ldh [hWY], a
	call SafeUpdateSprites
	jmp LoadStandardFont

HDMATransfer_FillBGMap0WithBlack:
	ldh a, [rWBK]
	push af
	ld a, BANK(wDecompressScratch)
	ldh [rWBK], a

	ld a, '■'
	ld hl, wDecompressScratch
	ld bc, wScratchAttrmap - wDecompressScratch
	rst ByteFill
	ld a, HIGH(wDecompressScratch)
	ldh [rVDMA_SRC_HIGH], a
	ld a, LOW(wDecompressScratch)
	ldh [rVDMA_SRC_LOW], a
	ld a, HIGH(vBGMap0 - STARTOF(VRAM))
	ldh [rVDMA_DEST_HIGH], a
	ld a, LOW(vBGMap0 - STARTOF(VRAM))
	ldh [rVDMA_DEST_LOW], a
	ld a, $3f
	ldh [hDMATransfer], a
	call DelayFrame

	pop af
	ldh [rWBK], a
	ret
