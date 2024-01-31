ClearSprites::
; Erase OAM data
	ld hl, wShadowOAM
	ld bc, wShadowOAMEnd - wShadowOAM
	xor a
	jmp ByteFill

HideSprites::
; Set all OAM y-positions to 160 to hide them offscreen
	ld hl, wShadowOAMSprite00YCoord
	ld de, SPRITEOAMSTRUCT_LENGTH
	ld b, NUM_SPRITE_OAM_STRUCTS
	ld a, SCREEN_WIDTH_PX
.loop
	ld [hl], a ; y
	add hl, de
	dec b
	jr nz, .loop
	ret

HideNormalSprites::
; Set all normal sprites (non-weather) to 160 to hide them offscreen
	ldh a, [hUsedSpriteIndex]
	cpl
	add (NUM_SPRITE_OAM_STRUCTS * SPRITEOAMSTRUCT_LENGTH) + 1
	ld h, HIGH(wShadowOAM)
	ld l, a
	ld de, SPRITEOAMSTRUCT_LENGTH
	rra
	rra ; / 4
	ld b, a
	ld a, NUM_SPRITE_OAM_STRUCTS
	sub b
	ld b, a
.loop
	ld [hl], SCREEN_HEIGHT_PX + (2 * TILE_WIDTH)
	add hl, de
	dec b
	jr nz, .loop
	ret

BackupSprites::
; Copy wShadowOAM to wShadowOAMBackup
	ldh a, [rSVBK]
	push af
	ld a, BANK(wShadowOAMBackup)
	ldh [rSVBK], a
	ld hl, wShadowOAM
	ld de, wShadowOAMBackup
	ld bc, wShadowOAMEnd - wShadowOAM
	rst CopyBytes
	pop af
	ldh [rSVBK], a
	ret

RestoreSprites::
	; Copy wShadowOAMBackup to wShadowOAM
	ldh a, [rSVBK]
	push af
	ld a, BANK(wShadowOAMBackup)
	ldh [rSVBK], a
	ld hl, wShadowOAMBackup
	ld de, wShadowOAM
	ld bc, wShadowOAMEnd - wShadowOAM
	rst CopyBytes
	pop af
	ldh [rSVBK], a
	ret