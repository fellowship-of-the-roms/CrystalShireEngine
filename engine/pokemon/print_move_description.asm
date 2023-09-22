PrintMoveDescription:
	push hl
	ld a, [wCurSpecies]
	call GetMoveIndexFromID
	ld b, h
	ld c, l
	ld a, BANK(MoveDescriptions)
	ld hl, MoveDescriptions
	call LoadDoubleIndirectPointer
	jr nz, .ok
	ld a, BANK(InvalidMoveDescription)
	ld hl, InvalidMoveDescription
.ok
	ld d, h
	ld e, l
	pop hl
	jmp FarPlaceString

INCLUDE "data/moves/descriptions.asm"
