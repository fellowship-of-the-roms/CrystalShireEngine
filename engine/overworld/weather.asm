DoOverworldWeather:
	push de
	push hl
	push bc
	ld a, [wOverworldWeatherDelay]
	and %1 ; 30 fps
	jr z, .done
	ld a, [wOverworldWeatherCooldown]
	and a
	jr z, .no_cooldown
	dec a
	ld [wOverworldWeatherCooldown], a
.no_cooldown
	ldh a, [hUsedSpriteIndex]
	cpl
	add (SPRITEOAMSTRUCT_LENGTH * NUM_SPRITE_OAM_STRUCTS) + 1
	ld hl, hUsedWeatherSpriteIndex
	cp [hl]
	jr nc, .ok
	add -SPRITEOAMSTRUCT_LENGTH
	ldh [hUsedWeatherSpriteIndex], a
.ok
	ld a, [wOverworldWeatherCooldown]
	and a
	jr nz, .on_cooldown
	ld a, [wCurrentWeather]
	dec a
	call z, DoOverworldRain
	ld a, [wCurrentWeather]
	cp OW_WEATHER_SNOW
	call z, DoOverworldSnow
	call Random
	cp 1 percent
	jr nc, .done
	call Random
	cp 15 percent
	jr nc, .done
;	farcall BlindingFlash
;	farcall BlindingFlash
.done
	ld hl, wOverworldWeatherDelay
	inc [hl]
	call WeatherSpriteLimitCheck
	pop bc
	pop hl
	pop de
	ret

.on_cooldown
	call DoSnowFall
	call DoRainFall
	call RainSplashCleanup
	jr .done

DoOverworldSnow:
	call ScanForEmptyOAM
	call nc, SpawnSnowFlake
	call ScanForEmptyOAM
	call nc, SpawnSnowFlake
; fallthrough
DoSnowFall:
	ld de, wShadowOAM
	ld hl, wShadowOAM
	ld b, NUM_SPRITE_OAM_STRUCTS
.loop
	ld hl, SPRITEOAMSTRUCT_YCOORD
	ld a, [hl]
	cp SCREEN_HEIGHT_PX + (TILE_WIDTH * 2)
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
	add a
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
	cp SCREEN_HEIGHT_PX + (TILE_WIDTH * 2)
	ld [hl], a
	jr nc, .despawn

	ld a, [wPlayerStepVectorX]
	add a
	ld c, a
	call Random
	and 1
	ld a, c
	jr nz, .no_add_1
	inc a
.no_add_1
	ld c, a
	ld hl, SPRITEOAMSTRUCT_XCOORD
	add hl, de
	ld a, [hl]
	sub c
	inc a
	ld hl, SPRITEOAMSTRUCT_XCOORD
	add hl, de
	sub 1 ; no-optimize a++|a-- (need to set carry)
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
	ld a, SCREEN_HEIGHT_PX + (TILE_WIDTH * 2)
	ld [hli], a
	xor a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	jr .next

DoOverworldRain:
	ld a, [wLoadedObjPal7]
	cp PAL_OW_RAIN
	jr z, .continue
	ld a, PAL_OW_RAIN
	farcall CopySpritePalToOBPal7
.continue
	call ScanForEmptyOAM
	call nc, SpawnRainDrop
	call ScanForEmptyOAM
	call nc, SpawnRainDrop
	call ScanForEmptyOAM
	call nc, SpawnRainDrop
	call DoRainFall
; fallthrough
RainSplashCleanup:
	ld a, [wOverworldWeatherDelay]
	and %1110
	ret nz
	ld de, wShadowOAM
	ld b, NUM_SPRITE_OAM_STRUCTS
.loop
	ld hl, SPRITEOAMSTRUCT_TILE_ID
	add hl, de
	ld a, [hli]
	cp $f5 ; tile id
	jr nz, .next
	ld hl, SPRITEOAMSTRUCT_YCOORD
	add hl, de
	ld [hl], SCREEN_HEIGHT_PX + (TILE_WIDTH * 2) ; offscreen
.next
	ld hl, SPRITEOAMSTRUCT_LENGTH
	add hl, de
	ld d, h
	ld e, l
	dec b
	jr nz, .loop
	ret

SpawnSnowFlake:
	call Random
	cp 40 percent
	ret nc
	call Random
	and %11
	jr z, .spawn_on_right
	xor a
	ld [hli], a
	ld a, SCREEN_WIDTH_PX + 7
	call RandomRange
	inc a
	ld [hli], a
.finish
	ld a, $f6 ; tile id
	ld [hli], a
	ld a, VRAM_BANK_1 | 7 ; pallete 7
	ld [hld], a
	dec hl
	dec hl
	ldh a, [hUsedWeatherSpriteIndex]
	cp l
	ret nc
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

ScanForEmptyOAM:
; return empty OAM slot in de or carry set if none
	ld de, wShadowOAM
	ld hl, wShadowOAM
	ld b, NUM_SPRITE_OAM_STRUCTS
.loop
	ld a, [hl]
	cp SCREEN_HEIGHT_PX + (TILE_WIDTH * 2) ; offscreen
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
	and 1
	jr z, .spawn_on_right
	xor a
	ld [hli], a
	ld a, SCREEN_WIDTH_PX + 7
	call RandomRange
	add 8
	ld [hli], a
.finish
	ld a, $f7 ; tile id
	ld [hli], a
	ld a, VRAM_BANK_1 | 7 ; pallete 7
	ld [hld], a
	dec hl
	dec hl
	ldh a, [hUsedWeatherSpriteIndex]
	cp l
	ret nc
	ld a, l
	ldh [hUsedWeatherSpriteIndex], a
	ret

.spawn_on_right
	ld a, SCREEN_HEIGHT_PX + (TILE_WIDTH * 2)
	call RandomRange
	ld [hli], a
	ld a, SCREEN_WIDTH_PX + TILE_WIDTH
	ld [hli], a
	jr .finish

ClearWeather:
	xor a
	ldh [hUsedWeatherSpriteIndex], a
	ret

DoRainFall:
	ld de, wShadowOAM
	ld hl, wShadowOAM
	ld b, NUM_SPRITE_OAM_STRUCTS
.loop
	ld hl, SPRITEOAMSTRUCT_YCOORD
	ld a, [hl]
	cp SCREEN_HEIGHT_PX + (TILE_WIDTH * 2)
	jr z, .next
	ld hl, SPRITEOAMSTRUCT_TILE_ID
	add hl, de
	ld a, [hli]
	cp $f5
	jr z, .update_splash
	cp $f7 ; rain tile id
	jr nz, .next
	ld a, [hl]
	cp VRAM_BANK_1 | 7 ; pallete 7
	jr nz, .next

	call Random
	cp 5 percent
	jr c, .splash

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
	add 8
	ld hl, SPRITEOAMSTRUCT_YCOORD
	add hl, de
	cp SCREEN_HEIGHT_PX + (TILE_WIDTH * 2)
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
	inc a
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
	ld a, SCREEN_HEIGHT_PX + (TILE_WIDTH * 2)
	ld [hli], a
	xor a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	jr .next

.update_splash
	ld a, [hl]
	cp VRAM_BANK_1 | 7 ; pallete 7
	jr nz, .next
	ld a, [wPlayerStepVectorY]
	add a
	ld c, a
	ld hl, SPRITEOAMSTRUCT_YCOORD
	add hl, de
	ld a, [hl]
	sub c
	cp SCREEN_HEIGHT_PX + (TILE_WIDTH * 2)
	jr nc, .despawn
	ld [hli], a
	ld a, [wPlayerStepVectorX]
	add a
	ld c, a
	ld a, [hl]
	sub c
	ld [hl], a
	jr .next


.splash
	ld hl, SPRITEOAMSTRUCT_TILE_ID
	add hl, de
	ld [hl], $f5 ; tile id
	jr .next

GetDropSpeedModifier:
; input: e = sprite index
; output: a = is_even(e / 4)
	ld a, e
	rra
	rra ; / 4
	and 1
	ret

WeatherSpriteLimitCheck:
	ldh a, [rSVBK]
	push af
	ld a, BANK(wWeatherScratch)
	ldh [rSVBK], a
	xor a
	; clear wWeatherScratch
	ld hl, wWeatherScratch
	ld bc, SCREEN_HEIGHT_PX
	rst ByteFill
	ld hl, wShadowOAM
	ld de, wShadowOAM
	ld b, NUM_SPRITE_OAM_STRUCTS
.loop
	ld a, [hl]
	; convert OAM y cord to screen y cord
	sub TILE_WIDTH * 2
	jr c, .next ; OAM is above the screen
	cp SCREEN_HEIGHT_PX + 1
	jr nc, .next ; OAM is below the screen
	; incerement bytes in wWeatherScratch associated with this sprite
	ld h, HIGH(wWeatherScratch)
	ld l, a
rept TILE_WIDTH - 1
	inc [hl]
	inc l
endr
	inc [hl]
.next
	ld hl, SPRITEOAMSTRUCT_LENGTH
	add hl, de
	ld e, l
	dec b
	jr nz, .loop

	; scan wWeatherScratch for scanlines with more than 10 sprites
	ld hl, wWeatherScratch
	ld a, 10 ; horizontal sprite limit
rept SCREEN_HEIGHT_PX - 1
	cp [hl]
	call c, SpriteLimitExceeded
	inc hl
endr
	cp [hl]
	call c, SpriteLimitExceeded

	pop af
	ldh [rSVBK], a
	ret

SpriteLimitExceeded:
	push hl
	push af
	; initliaze wSpriteOverlapCount to 0.
	xor a
	ld [wSpriteOverlapCount], a
	ld a, l
	; convert screen y cord to OAM y cord
	add TILE_WIDTH * 2
	ld c, a
	ld hl, wShadowOAM + (NUM_SPRITE_OAM_STRUCTS - 1) * SPRITEOAMSTRUCT_LENGTH
	ld e, l ; d is still set to HIGH(wShadowOAM)
rept NUM_SPRITE_OAM_STRUCTS
	; check if OAM y cord is <= (scanline + 16)
	ld a, [hl]
	sub c ; get distance between OAM y cord and (scanline + 16)
	jr z, .continue_\@ ; Sprite starts on the scanline; continue
	jr nc, .next_\@ ; OAM's y cord is below the scanline; skip sprite
.continue_\@
	; use two's complement to make a positive number
	cpl
	inc a
	; check if distance <= TILE_WIDTH
	cp TILE_WIDTH
	jr nc, .next_\@ ; distance is greater than TILE_WIDTH; skip sprite
	ld a, [wSpriteOverlapCount]
	inc a
	cp 11 ; horizontal sprite limit + 1
	ld [wSpriteOverlapCount], a
	call nc, .delete_sprite ; for all sprites after the 10th, delete them
.next_\@
	ld hl, -SPRITEOAMSTRUCT_LENGTH
	add hl, de
	ld e, l
endr
	pop af
	pop hl
	ret

.delete_sprite
	; hl = sprite to delete
	ld a, [hl]
	ld [hl], SCREEN_HEIGHT_PX + (TILE_WIDTH * 2)
	; convert OAM y cord to screen y cord
	sub TILE_WIDTH * 2
	; decerement bytes in wWeatherScratch associated with this sprite
	ld h, HIGH(wWeatherScratch)
	ld l, a
rept TILE_WIDTH - 1
	dec [hl]
	inc l
endr
	dec [hl]
	ret
