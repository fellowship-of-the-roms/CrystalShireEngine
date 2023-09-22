DoItemEffect::
	farjp _DoItemEffect

CheckTossableItem::
	push hl
	push de
	push bc
	farcall _CheckTossableItem
	jmp PopBCDEHL

TossItem::
	push hl
	push de
	push bc
	ldh a, [hROMBank]
	push af
	ld a, BANK(_TossItem)
	rst Bankswitch

	call _TossItem

	pop bc
	ld a, b
	rst Bankswitch
	jmp PopBCDEHL

ReceiveItem::
	push bc
	ldh a, [hROMBank]
	push af
	ld a, BANK(_ReceiveItem)
	rst Bankswitch
	push hl
	push de

	call _ReceiveItem

	pop de
	pop hl
	pop bc
	ld a, b
	rst Bankswitch
	pop bc
	ret

ItemIsMail_a::
	push hl
	push de
	push bc
	ld d, a
	farcall ItemIsMail
	jmp PopBCDEHL

CheckItem::
; [wCurItem] = item *ID* to check.
	push hl
	push de
	push bc
	ldh a, [hROMBank]
	push af
	ld a, BANK(_CheckItem)
	rst Bankswitch

	call _CheckItem

	pop bc
	ld a, b
	rst Bankswitch
	jmp PopBCDEHL
