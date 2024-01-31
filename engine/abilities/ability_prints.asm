; Gets our ability for the stats screen
CalcAbility_StatsScreen:
	; Preserve HL and BC
	push hl
	push bc

	; Target the relevant mon.
	ld a, [wCurPartyMon]
	ld bc, PARTYMON_STRUCT_LENGTH
	ld hl, wPartyMon1Species
	rst AddNTimes

	ld a, [hl]
	ld bc, wPartyMon1Personality - wPartyMon1Species
	add hl, bc
	ld c, a
	call GetAbility
	pop bc
	pop hl
	ret

; Prints the ability for our stats screen
; Blended mix of code from Delta, MAE, and PC
PrintAbility:
	ld de, .AbilityString1
	hlcoord 0, 8
	call PlaceString
	call CalcAbility_StatsScreen
	ld hl, AbilityNames
	call GetNthString
	ld d, h
	ld e, l
	hlcoord 4, 9
	call PlaceString
	call CalcAbility_StatsScreen
	push bc
	ld bc, AbilityDescriptions
	ld l, a
	ld h, 0
	add hl, hl
	add hl, bc
	ld a, [hli]
	ld d, [hl]
	ld e, a
	pop bc
	hlcoord 0, 10
	jp PlaceString

.AbilityString1:
	db "Ability:@"

INCLUDE "data/abilities/names.asm"
INCLUDE "data/abilities/descriptions.asm"
