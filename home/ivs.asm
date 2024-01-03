GetHPIV:
	push bc
	inc hl
	inc hl
	ld a, [hli]
	and %01100000
	rra
	rra
	ld b, a
	ld a, [hld]
	swap a
	rra
	and %00000111
	or b
	pop bc
	dec hl
	dec hl
	ret

GetAttackIV:
	ld a, [hl]
	and %00011111
	ret

GetDefenseIV:
	inc hl
	ld a, [hld]
	and %00011111
	ret

GetSpeedIV:
	push bc
	ld a, [hli]
	and %01100000
	rra
	rra
	ld b, a
	ld a, [hld]
	and %11100000
	swap a
	rra
	or b
	pop bc
	ret

GetSpecialAttackIV:
	inc hl
	inc hl
	ld a, [hld]
	and %00011111
	dec hl
	ret

GetSpecialDefenseIV:
	inc hl
	inc hl
	inc hl
	ld a, [hld]
	and %00011111
	dec hl
	dec hl 
	ret
