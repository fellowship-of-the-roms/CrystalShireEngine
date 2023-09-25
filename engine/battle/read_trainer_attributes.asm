GetTrainerClassName:
	ld hl, wRivalName
	ld a, c
	cp RIVAL1
	jr z, .rival

	ld [wCurSpecies], a
	ld a, TRAINER_NAME
	ld [wNamedObjectType], a
	call GetName
	ld de, wStringBuffer1
	ret

.rival
	ld de, wStringBuffer1
	push de
	ld bc, NAME_LENGTH
	rst CopyBytes
	pop de
	ret

GetOTName:
	ld hl, wOTPlayerName
	ld a, [wLinkMode]
	and a
	jr nz, .ok

	ld hl, wRivalName
	ld a, c
	cp RIVAL1
	jr z, .ok

	ld [wCurSpecies], a
	ld a, TRAINER_NAME
	ld [wNamedObjectType], a
	call GetName
	ld hl, wStringBuffer1

.ok
	ld bc, TRAINER_CLASS_NAME_LENGTH
	ld de, wOTClassName
	push de
	rst CopyBytes
	pop de
	ret

GetTrainerAttributes:
	ld a, [wTrainerClass]
	ld c, a
	call GetOTName
	ld a, [wTrainerClass]
	dec a
	ld hl, TrainerClassAttributes + TRNATTR_ITEM1
	ld bc, NUM_TRAINER_ATTRIBUTES
	rst AddNTimes
	ld de, wEnemyTrainerItem1
	ld a, [hli]
	push hl
	ld h, [hl]
	ld l, a
	call GetItemIDFromIndex
	pop hl
	inc hl
	ld [de], a
	inc de
	ld a, [hli]
	push hl
	ld h, [hl]
	ld l, a
	call GetItemIDFromIndex
	pop hl
	inc hl
	ld [de], a
	ld a, [hl]
	ld [wEnemyTrainerBaseReward], a
	ret

INCLUDE "data/trainers/attributes.asm"
