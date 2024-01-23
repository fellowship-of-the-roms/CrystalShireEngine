DoOverworldWeather:
	ret
	push de
	push hl
	push bc
	call DoOverworldSnow
;	call DoOverworldRain
	call Random
	cp 1 percent
	jr nc, .done
	call Random
	cp 15 percent
	jr nc, .done
;	farcall BlindingFlash
;	farcall BlindingFlash
.done
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
	cp 10 percent
	ret nc
	call Random
	and 11
	jr z, .spawn_on_right
	ld a, 0
	ld [hli], a
	ld a, 167
	call RandomRange
	add 1
	ld [hli], a
.finish
	ld a, $f6
	ld [hli], a
	ld [hl], 08 | 07
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
	ld a, 160
	call RandomRange
	ld [hli], a
	ld a, 168
	ld [hli], a
	jr .finish

DoSnowFall:
	ld de, wShadowOAM
	ld hl, wShadowOAM
	ld b, NUM_SPRITE_OAM_STRUCTS
.loop
	ld hl, SPRITEOAMSTRUCT_YCOORD
	ld a, [hl]
	cp 160
	jr z, .next
	ld hl, SPRITEOAMSTRUCT_TILE_ID
	add hl, de
	ld a, [hli]
	cp $f6
	jr nz, .next
	ld a, [hl]
	cp 08 | 07
	jr nz, .next

	call Random
	cp 1 percent
	jr nc, .ok
	call Random
	cp 10 percent
	jr c, .despawn
.ok

	ld hl, SPRITEOAMSTRUCT_YCOORD
	add hl, de
	ld a, [hl]
	add 1
	cp 160
	ld [hl], a
	jr nc, .despawn
	and 11
	jr nz, .next
	ld hl, SPRITEOAMSTRUCT_XCOORD
	add hl, de
	ld a, [hl]
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
	ld a, 160
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
	cp 160 ; offscreen
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
	call Random
	cp 70 percent
	ret nc
	call Random
	and 1
	jr z, .spawn_on_right
	ld a, 0
	ld [hli], a
	ld a, 160
	call RandomRange
	add 8
	ld [hli], a
.finish
	ld a, $f7
	ld [hli], a
	ld [hl], 08 | 07
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
	ld a, 160
	call RandomRange
	ld [hli], a
	ld a, 168
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
	cp 160
	jr z, .next
	ld hl, SPRITEOAMSTRUCT_TILE_ID
	add hl, de
	ld a, [hli]
	cp $f7
	jr nz, .next
	ld a, [hl]
	cp 08 | 07
	jr nz, .next

	call Random
	cp 3 percent
	jr c, .despawn

	ld hl, SPRITEOAMSTRUCT_YCOORD
	add hl, de
	ld a, [hl]
	add 4
	cp 160
	ld [hl], a
	jr nc, .despawn
	ld hl, SPRITEOAMSTRUCT_XCOORD
	add hl, de
	ld a, [hl]
	sub 4
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
	ld a, 160
	ld [hli], a
	xor a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	jr .next
