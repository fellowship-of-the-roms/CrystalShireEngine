Predef::
; Call predefined function a.
; Preserves bc, de, hl and f.

	ld [wPredefID], a
	ldh a, [hROMBank]
	push af

	ld a, BANK(GetPredefPointer)
	rst Bankswitch
	call GetPredefPointer ; stores hl in wPredefHL

; Switch to the new function's bank
	rst Bankswitch

; Instead of directly calling stuff,
; push it to the stack in reverse.

	ld hl, .Return
	push hl

; Call the Predef function
	ld hl, wPredefAddress
	ld a, [hli]
	ld l, [hl]
	ld h, a
	push hl

; Get hl back
	ld hl, wPredefHL
	ld a, [hli]
	ld l, [hl]
	ld h, a
	ret

.Return:
; Clean up after the Predef call

	ld a, h
	ld [wPredefHL], a
	ld a, l
	ld [wPredefHL + 1], a

	pop hl
	ld a, h
	rst Bankswitch

	ld hl, wPredefHL
	ld a, [hli]
	ld l, [hl]
	ld h, a
	ret
