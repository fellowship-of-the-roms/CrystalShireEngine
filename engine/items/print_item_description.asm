PrintItemDescription:
; Print the description for item [wCurSpecies] at de.

	ld a, [wCurSpecies]
	call GetItemIndexFromID
	cphl16 FIRST_TMHM_ITEM
	jr c, .not_a_tm
	call GetItemIDFromIndex

	ld [wCurItem], a
	push de
	farcall GetTMHMItemMove
	pop hl
	ld a, [wTempTMHM]
	ld [wCurSpecies], a
	predef_jump PrintMoveDescription

.not_a_tm
	push de
	ld a, [wCurSpecies]
	call GetItemIndexFromID
	ld b, h
	ld c, l
	ld a, BANK(ItemDescriptions)
	ld hl, ItemDescriptions
	call LoadDoubleIndirectPointer
	jr nz, .ok
; wrong item
	ld a, BANK(QuestionMarkDesc)
	ld hl, QuestionMarkDesc
.ok
	ld d, h
	ld e, l
	pop hl
	jmp FarPlaceString

INCLUDE "data/items/descriptions.asm"
