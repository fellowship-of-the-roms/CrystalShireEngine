DoOverworldWeather:
	call GetMapEnvironment
	call CheckOutdoorMap
	ret nz ; don't rain indoors.
	push de
	push hl
	push bc
	ld a, [wOverworldWeatherDelay]
	and a
	jr z, .done
	ld a, [hUsedSpriteIndex]
	ld hl, hUsedWeatherSpriteIndex
	cp [hl]
	jr c, .ok
	add SPRITEOAMSTRUCT_LENGTH
	ldh [hUsedWeatherSpriteIndex], a
.ok
	call DoOverworldRain
;	call DoOverworldSnow
	call Random
	cp 1 percent
	jr nc, .done
	call Random
	cp 15 percent
	jr nc, .done
;	farcall BlindingFlash
;	farcall BlindingFlash
.done
	ld a, [wOverworldWeatherDelay]
	xor %1
	ld [wOverworldWeatherDelay], a
	pop bc
	pop hl
	pop de
	ret


DoOverworldSnow:
	call ScanForEmptyOAM
	call nc, SpawnSnowFlake
	call ScanForEmptyOAM
	call nc, SpawnSnowFlake
	call DoSnowFall
	ret

DoOverworldRain:
	ld a, [wLoadedObjPal7]
	cp PAL_OW_COPY_BG_WATER
	jr z, .continue
	ld a, PAL_OW_COPY_BG_WATER
	farcall CopySpritePalToOBPal7
.continue
	call ScanForEmptyOAM
	call nc, SpawnRainDrop
	call ScanForEmptyOAM
	call nc, SpawnRainDrop
	call DoRainFall
	ret

SpawnSnowFlake:
	call Random
	cp 80 percent
	ret nc
	call Random
	and 11
	jr z, .spawn_on_right
	ld a, 0
	ld [hli], a
	ld a, SCREEN_WIDTH_PX + 7
	call RandomRange
	add 1
	ld [hli], a
.finish
	ld a, $f6 ; tile id
	ld [hli], a
	ld [hl], VRAM_BANK_1 | 7 ; pallete 7
	dec hl
	dec hl
	dec hl
	ldh a, [hUsedWeatherSpriteIndex]
	cp l
	ret c
	ld a, l
	ldh [hUsedWeatherSpriteIndex], a
	ret

.spawn_on_right
	ld a, SCREEN_HEIGHT_PX + 8
	call RandomRange
	ld [hli], a
	ld a, SCREEN_WIDTH_PX + 8
	ld [hli], a
	jr .finish

DoSnowFall:
	ld de, wShadowOAM
	ld hl, wShadowOAM
	ld b, NUM_SPRITE_OAM_STRUCTS
.loop
	ld hl, SPRITEOAMSTRUCT_YCOORD
	ld a, [hl]
	cp SCREEN_HEIGHT_PX + 16
	jr z, .next
	ld hl, SPRITEOAMSTRUCT_TILE_ID
	add hl, de
	ld a, [hli]
	cp $f6 ; tile id
	jr nz, .next
	ld a, [hl]
	cp VRAM_BANK_1 | 7 ; pallete 7
	jr nz, .next

	call Random
	cp 1 percent
	jr nc, .ok
	call Random
	cp 10 percent
	jr c, .despawn
.ok

	ld a, [wPlayerStepVectorY]
	ld c, a
	ld hl, SPRITEOAMSTRUCT_YCOORD
	add hl, de
	ld a, [hl]
	sub c
	ld c, a
	call GetDropSpeedModifier
	add c
	add 2
	ld hl, SPRITEOAMSTRUCT_YCOORD
	add hl, de
	cp SCREEN_HEIGHT_PX + 16
	ld [hl], a
	jr nc, .despawn
;	and 11
;	jr nz, .next

	call Random
	and 1
	ld a, [wPlayerStepVectorX]
	jr nz, .no_add_1
	add 1
.no_add_1
	ld c, a
	ld hl, SPRITEOAMSTRUCT_XCOORD
	add hl, de
	ld a, [hl]
	sub c
;	ld c, a
;	call GetDropSpeedModifier
;	cpl
;	add 1
;	add c
	add 1
	ld hl, SPRITEOAMSTRUCT_XCOORD
	add hl, de
	sub 1
	ld [hl], a
	jr c, .despawn
.next
	ld hl, SPRITEOAMSTRUCT_LENGTH
	add hl, de
	ld d, h
	ld e, l
	dec b
	jr nz, .loop
	ret

.despawn
	ld hl, SPRITEOAMSTRUCT_YCOORD
	add hl, de
	ld a, SCREEN_HEIGHT_PX + 16
	ld [hli], a
	xor a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	jr .next

ScanForEmptyOAM:
; return empty OAM slot in de or carry set if none
	ld de, wShadowOAM
	ld hl, wShadowOAM
	ld b, NUM_SPRITE_OAM_STRUCTS
.loop
	ld a, [hl]
	cp SCREEN_HEIGHT_PX + 16 ; offscreen
	ret z
	ld hl, SPRITEOAMSTRUCT_LENGTH
	add hl, de
	ld d, h
	ld e, l
	dec b
	jr nz, .loop
	; all sprites are onscreen
	scf
	ret

SpawnRainDrop:
;	call Random
;	cp 90 percent
;	ret nc
	call Random
	and 1
	jr z, .spawn_on_right
	ld a, 0
	ld [hli], a
	ld a, SCREEN_WIDTH_PX + 7
	call RandomRange
	add 8
	ld [hli], a
.finish
	ld a, $f7 ; tile id
	ld [hli], a
	ld [hl], VRAM_BANK_1 | 7 ; pallete 7
	dec hl
	dec hl
	dec hl
	ldh a, [hUsedWeatherSpriteIndex]
	cp l
	ret c
	ld a, l
	ldh [hUsedWeatherSpriteIndex], a
	ret

.spawn_on_right
	ld a, SCREEN_HEIGHT_PX + 8
	call RandomRange
	ld [hli], a
	ld a, SCREEN_WIDTH_PX + 8
	ld [hli], a
	jr .finish

ClearWeather:
	ld a, SPRITEOAMSTRUCT_LENGTH * NUM_SPRITE_OAM_STRUCTS
	ldh [hUsedWeatherSpriteIndex], a
	ret

DoRainFall:
	ld de, wShadowOAM
	ld hl, wShadowOAM
	ld b, NUM_SPRITE_OAM_STRUCTS
.loop
	ld hl, SPRITEOAMSTRUCT_YCOORD
	ld a, [hl]
	cp SCREEN_HEIGHT_PX + 16
	jr z, .next
	ld hl, SPRITEOAMSTRUCT_TILE_ID
	add hl, de
	ld a, [hli]
	cp $f7 ; tile id
	jr nz, .next
	ld a, [hl]
	cp VRAM_BANK_1 | 7 ; pallete 7
	jr nz, .next

	call Random
	cp 3 percent
	jr c, .despawn

	ld a, [wPlayerStepVectorY]
	add a
	add a
	ld c, a
	ld hl, SPRITEOAMSTRUCT_YCOORD
	add hl, de
	ld a, [hl]
	sub c
	ld c, a
	call GetDropSpeedModifier
	add a
	add c
	add 4
	ld hl, SPRITEOAMSTRUCT_YCOORD
	add hl, de
	cp SCREEN_HEIGHT_PX + 16
	ld [hl], a
	jr nc, .despawn

	ld a, [wPlayerStepVectorX]
	add a
	add a
	ld c, a
	ld hl, SPRITEOAMSTRUCT_XCOORD
	add hl, de
	ld a, [hl]
	sub c
	ld c, a
	call GetDropSpeedModifier
	cpl
	add 1
	add a
	add c
	sub 4
	ld hl, SPRITEOAMSTRUCT_XCOORD
	add hl, de
	ld [hl], a
	jr c, .despawn
.next
	ld hl, SPRITEOAMSTRUCT_LENGTH
	add hl, de
	ld d, h
	ld e, l
	dec b
	jr nz, .loop
	ret

.despawn
	ld hl, SPRITEOAMSTRUCT_YCOORD
	add hl, de
	ld a, SCREEN_HEIGHT_PX + 16
	ld [hli], a
	xor a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	jr .next

WeatherMovement:
	ret
	push hl
	push de
	push bc
	ld h, d
	ld l, e
	push hl
	ld de, wShadowOAM
	ld hl, wShadowOAM
	ld b, NUM_SPRITE_OAM_STRUCTS
.loop
	ld hl, SPRITEOAMSTRUCT_YCOORD
	ld a, [hl]
	cp SCREEN_HEIGHT_PX + 16
	jr z, .next
	ld hl, SPRITEOAMSTRUCT_TILE_ID
	add hl, de
	ld a, [hli]
	cp $f6 ; tile id
	jr nz, .next
	ld a, [hl]
	cp VRAM_BANK_1 | 7 ; pallete 7
	jr nz, .next

	ld hl, SPRITEOAMSTRUCT_XCOORD
	add hl, de
	ld a, [hl]
	pop hl
	push hl
	sub h
	ld hl, SPRITEOAMSTRUCT_XCOORD
	add hl, de
	ld [hl], a

	and 11
	jr nz, .next

	ld hl, SPRITEOAMSTRUCT_YCOORD
	add hl, de
	ld a, [hl]
	pop hl
	push hl
	sub l
	ld hl, SPRITEOAMSTRUCT_YCOORD
	add hl, de
	ld [hl], a


.next
	ld hl, SPRITEOAMSTRUCT_LENGTH
	add hl, de
	ld d, h
	ld e, l
	dec b
	jr nz, .loop
	pop hl
	jmp PopBCDEHL

GetDropSpeedModifier:
; input: de = sprite index
; if ((SPRITEOAMSTRUCT_LENGTH * NUM_SPRITE_OAM_STRUCTS) - [hUsedWeatherSpriteIndex])  / 2 > de
; then return 0
; else return 1
	ld a, [hUsedWeatherSpriteIndex]
	ld l, a
	ld a, SPRITEOAMSTRUCT_LENGTH * NUM_SPRITE_OAM_STRUCTS
	sub l
	rra ; div 2
	ld l, a
	ld a, [hUsedWeatherSpriteIndex]
	add l
	ld l, a
	ld a, e
	cp l
	ld a, 1
	ret c
	ld a, 0
	ret

