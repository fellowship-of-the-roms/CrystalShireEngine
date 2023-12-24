MobileAPI::
; Mobile
	cp $2
	ld [wMobileAPIIndex], a
	ld a, l
	ld [wc986], a
	ld a, h
	ld [wc987], a
	jr nz, .okay

	ld [wc982], a
	ld a, l
	ld [wc981], a
	ld hl, wc983
	ld a, c
	ld [hli], a
	ld a, b
	ld [hl], a

.okay
	ld hl, wc822
	set 6, [hl]
	ldh a, [hROMBank]
	push af
	ld a, BANK(_MobileAPI)
	ld [wc981], a
	rst Bankswitch

	jmp _MobileAPI

ReturnMobileAPI::
; Return from _MobileAPI
	ld [wc986], a
	ld a, l
	ld [wc987], a
	ld a, h
	ld [wMobileAPIIndex], a

	pop bc
	ld a, b
	ld [wc981], a
	rst Bankswitch

	ld hl, wc822
	res 6, [hl]
	ld hl, wc987
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wc986]
	ret

Function3eea::
	push hl
	push bc
	ld de, wAttrmap - wTilemap
	add hl, de
	inc b
	inc b
	inc c
	inc c
	call Function3f35
	pop bc
	pop hl
	jr MobileHome_PlaceBox

Function3f20::
Function3f35::
MobileHome_PlaceBox:
Function3f7c::
Function3f88::
Function3f9f::
MobileReceive::
	; dummied out Mobile Code.
	; TODO: item-newbox should find a way to restore this.
	ret ; no-optimize Stub Function (May readd these routines if needed)
