GetTrainerIVs:
; Return the IVs of wOtherTrainerClass in bc

	push hl
	ld a, [wOtherTrainerClass]
	dec a
	ld c, a
	ld b, 0

	ld hl, TrainerClassIVs
	add hl, bc
	add hl, bc
	add hl, bc
	add hl, bc

	ld a, [hli]
	ld b, a
	ld c, [hl]

	pop hl
	ret

INCLUDE "data/trainers/ivs.asm"
