GetSquareRoot:
; Return the square root of de in b.
	ld h, d
	ld l, e
	ld de, 1
	ld b, d
.loop
	inc b
	ld a, b
	inc a
	ret z
	dec e
	dec de
	add hl, de
	ret nc
	ld a, h
	or l
	jr nz, .loop
	ret
