ReinitBattleAnimFrameset:
	ld hl, BATTLEANIMSTRUCT_FRAMESET_ID
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_DURATION
	add hl, bc
	ld [hl], 0
	ld hl, BATTLEANIMSTRUCT_FRAME
	add hl, bc
	ld [hl], -1
	ret

GetBattleAnimOAMPointer:
	ld l, a
	ld h, 0
	ld de, BattleAnimOAMData
	ld a, [wBattleAnimTempFrameOAMFlags]
	add a, a
	jr nc, .ok
	ld de, BattleAnimOAMData + 4 * NUM_BATTLE_ANIM_OAMSETS
.ok
	add hl, hl
	add hl, hl
	add hl, de
	ret

LoadBattleAnimGFX:
	push hl
	cp BATTLE_ANIM_GFX_POKE_BALL
	call z, .LoadBallPalette
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	ld de, AnimObjGFX
	add hl, de
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop de
	push bc
	call DecompressRequest2bpp
	pop bc
	ret

.LoadBallPalette:
	; save the current WRAM bank
	ldh a, [rSVBK]
	push af
	; switch to the WRAM bank of wCurItem so we can read it
	ld a, BANK(wCurItem)
	ldh [rSVBK], a
	; store the current item in b
	ld a, [wCurItem]
	ld b, a
	; seek for the BallColors entry matching the current item
	ld hl, BallColors
.loop
	ld a, [hli]
	push hl
	ld h, [hl]
	ld l, a
	call GetItemIDFromIndex
	pop hl
	inc hl
	cp b ; did we find the current ball?
	jr z, .done
	cp -1 ; did we reach the end of the list?
	jr z, .done
rept PAL_COLOR_SIZE * 2
	inc hl ; skip over the two RGB colors to the next entry
endr
	jr .loop
.done
	; switch to the WRAM bank of wOBPals2 so we can write to it
	ld a, BANK(wOBPals2)
	ldh [rSVBK], a
	; load the RGB colors into the middle two colors of PAL_BATTLE_OB_RED
	ld de, wOBPals2 palette PAL_BATTLE_OB_RED color 1
rept PAL_COLOR_SIZE * 2 - 1
	ld a, [hli]
	ld [de], a
	inc de
endr
	ld a, [hl]
	ld [de], a
	; apply the updated colors to the palette RAM
	ld a, $1
	ldh [hCGBPalUpdate], a
	; restore the previous WRAM bank
	pop af
	ldh [rSVBK], a
	; restore the graphics index to be loaded
	ld a, BATTLE_ANIM_GFX_POKE_BALL
	ret

INCLUDE "data/battle_anims/ball_colors.asm"

INCLUDE "data/battle_anims/oam.asm"

INCLUDE "data/battle_anims/object_gfx.asm"
