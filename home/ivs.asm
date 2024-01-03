GetHPIV:
	inc hl
	inc hl
	call GetSpeedIV
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
	call GetDefenseIV
	dec hl
	ret

GetSpecialDefenseIV:
	inc hl
	call GetSpecialAttackIV
	dec hl
	ret
