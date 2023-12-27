HoOhChamber:
	ld hl, wPartySpecies
	ld a, [hl]
	; is Ho-oh the first Pokémon in the party? If not, we're done
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(HO_OH)
	if HIGH(HO_OH) == 0
		or h
	else
		ret nz
		if HIGH(HO_OH) == 1
			dec h
		else
			ld a, h
			cp HIGH(HO_OH)
		endc
	endc
	ret nz
	call GetMapAttributesPointer ; pointless?
	ld de, EVENT_WALL_OPENED_IN_HO_OH_CHAMBER
	ld b, SET_FLAG
	jmp EventFlagAction

OmanyteChamber:
	call GetMapAttributesPointer ; pointless?
	ld de, EVENT_WALL_OPENED_IN_OMANYTE_CHAMBER
	ld b, CHECK_FLAG
	call EventFlagAction
	ld a, c
	and a
	ret nz

	ld hl, WATER_STONE
	call GetItemIDFromIndex
	ld [wCurItem], a
	ld hl, wNumItems
	call CheckItem
	jr c, .open

	ld a, [wPartyCount]
	ld b, a
	inc b
.loop
	dec b
	ret z
	ld a, b
	dec a
	ld [wCurPartyMon], a
	push bc
	ld a, MON_ITEM
	call GetPartyParamLocation
	pop bc
	ld a, [hl]
	push hl
	call GetItemIndexFromID
	cphl16 WATER_STONE
	pop hl
	jr nz, .loop

.open
	call GetMapAttributesPointer ; pointless?
	ld de, EVENT_WALL_OPENED_IN_OMANYTE_CHAMBER
	ld b, SET_FLAG
	jmp EventFlagAction

SpecialAerodactylChamber:
	push de
	push bc

	call GetMapAttributesPointer
	ld a, h
	cp HIGH(RuinsOfAlphAerodactylChamber_MapAttributes)
	jr nz, .nope
	ld a, l
	cp LOW(RuinsOfAlphAerodactylChamber_MapAttributes)
	jr nz, .nope

	ld de, EVENT_WALL_OPENED_IN_AERODACTYL_CHAMBER
	ld b, SET_FLAG
	call EventFlagAction

	scf
	jr .done

.nope
	and a

.done
	pop bc
	pop de
	ret

SpecialKabutoChamber:
	push hl
	push de

	call GetMapAttributesPointer
	ld a, h
	cp HIGH(RuinsOfAlphKabutoChamber_MapAttributes)
	jr nz, .done
	ld a, l
	cp LOW(RuinsOfAlphKabutoChamber_MapAttributes)
	jr nz, .done

	ld de, EVENT_WALL_OPENED_IN_KABUTO_CHAMBER
	ld b, SET_FLAG
	call EventFlagAction

.done
	pop de
	pop hl
	ret

DisplayUnownWords:
	ld a, [wScriptVar]
	ld hl, MenuHeaders_UnownWalls
	and a
	jr z, .load

	lb de, $0, $5
.loop
	add hl, de
	dec a
	jr nz, .loop

.load
	call LoadMenuHeader
	xor a
	ldh [hBGMapMode], a
	call MenuBox
	call UpdateSprites
	call ApplyTilemap
	call MenuBoxCoord2Tile
	inc hl
	lb de, 0, SCREEN_WIDTH
	add hl, de
	add hl, de
	ld a, [wScriptVar]
	ld c, a
	ld de, UnownWalls
	and a
	jr z, .copy
.loop2
	ld a, [de]
	inc de
	cp -1
	jr nz, .loop2
	dec c
	jr nz, .loop2
.copy
	call _DisplayUnownWords_CopyWord
	ld bc, wAttrmap - wTilemap
	add hl, bc
	call _DisplayUnownWords_FillAttr
	call WaitBGMap2
	call JoyWaitAorB
	call PlayClickSFX
	jmp CloseWindow

INCLUDE "data/events/unown_walls.asm"

_DisplayUnownWords_FillAttr:
	ld a, [de]
	cp $ff
	ret z
	cp $60
	; a = carry ? (VRAM_BANK_1 | PAL_BG_BROWN) : PAL_BG_BROWN
	assert (VRAM_BANK_1 | PAL_BG_BROWN) > PAL_BG_BROWN
	sbc a
	and (VRAM_BANK_1 | PAL_BG_BROWN) - PAL_BG_BROWN
	add PAL_BG_BROWN
	call .PlaceSquare
	inc hl
	inc hl
	inc de
	jr _DisplayUnownWords_FillAttr

.PlaceSquare:
	push hl
	ld [hli], a
	ld [hld], a
	lb bc, 0, SCREEN_WIDTH
	add hl, bc
	ld [hli], a
	ld [hl], a
	pop hl
	ret

_DisplayUnownWords_CopyWord:
	push hl
	push de
.word_loop
	ld a, [de]
	cp $ff
	jr z, .word_done
	ld c, a
	call .ConvertChar
	inc hl
	inc hl
	inc de
	jr .word_loop

.word_done
	pop de
	pop hl
	ret

.ConvertChar:
	push hl
	ld a, c
	cp $60
	jr z, .Tile60
	cp $62
	jr z, .Tile62
	cp $64
	jr z, .Tile64
	ld [hli], a
	inc a
	ld [hld], a
	dec a
	lb bc, 0, SCREEN_WIDTH
	add hl, bc
	ld c, $10
	add c
	ld [hli], a
	inc a
	ld [hl], a
	pop hl
	ret

.Tile60:
	ld a, $5b
	ld [hli], a
	ld [hl], $5c
	ld bc, SCREEN_WIDTH - 1
	add hl, bc
	ld a, $4d
	ld [hli], a
	ld [hl], $5d
	pop hl
	ret

.Tile62:
	ld a, $4e
	ld [hli], a
	ld [hl], $4f
	ld bc, SCREEN_WIDTH - 1
	add hl, bc
	ld a, $5e
	ld [hli], a
	ld [hl], $5f
	pop hl
	ret

.Tile64:
	ld a, $2
	ld [hli], a
	ld [hl], $3
	ld bc, SCREEN_WIDTH - 1
	add hl, bc
	ld a, $3
	ld [hli], a
	ld [hl], $2
	pop hl
	ret
