GiveDratini:
; if wScriptVar is 0 or 1, change the moveset of the last Dratini in the party.
;  0: give it a special moveset with Extremespeed.
;  1: give it the normal moveset of a level 15 Dratini.

	ld a, [wScriptVar]
	cp $2
	ret nc
	ld bc, wPartyCount
	ld a, [bc]
	ld hl, MON_SPECIES
	call .GetNthPartyMon
	ld a, [bc]
	ld c, a
	push hl
	ld hl, DRATINI
	call GetPokemonIDFromIndex
	pop hl
	ld b, a
	ld de, PARTYMON_STRUCT_LENGTH
.CheckForDratini:
; start at the end of the party and search backwards for a Dratini
	ld a, [hl]
	cp b
	jr z, .GiveMoveset
	ld a, l
	sub e
	ld l, a
	ld a, h
	sbc d
	ld h, a
	dec c
	jr nz, .CheckForDratini
	ret

.GiveMoveset:
	push hl
	ld a, [wScriptVar]
	ld hl, .Movesets
	ld bc, .Moveset1 - .Moveset0
	rst AddNTimes

	; get address of mon's first move
	pop de
	inc de
	inc de

.GiveMoves:
	ld a, [hli]
	or [hl] ; is the move 00?
	ret z ; if so, we're done here

	push hl
	push de
	ld a, [hld]
	ld l, [hl]
	ld h, a
	call GetMoveIDFromIndex
	ld [de], a ; give the Pokémon the new move

	; get the PP of the new move
	ld l, a
	ld a, MOVE_PP
	call GetMoveAttribute

	; get the address of the move's PP and update the PP
	ld hl, MON_PP - MON_MOVES
	add hl, de
	ld [hl], a

	pop de
	pop hl
	inc de
	inc hl
	jr .GiveMoves

.Movesets:
.Moveset0:
; Dratini does not normally learn Extremespeed. This is a special gift.
	dw WRAP
	dw THUNDER_WAVE
	dw TWISTER
	dw EXTREMESPEED
	dw 0
.Moveset1:
; This is the normal moveset of a level 15 Dratini
	dw WRAP
	dw LEER
	dw THUNDER_WAVE
	dw TWISTER
	dw 0

.GetNthPartyMon:
; inputs:
; hl must be set to 0 before calling this function.
; a must be set to the number of Pokémon in the party.

; outputs:
; returns the address of the last Pokémon in the party in hl.
; sets carry if a is 0.

	ld de, wPartyMon1
	add hl, de
	and a
	jr z, .EmptyParty
	dec a
	ret z
	ld de, PARTYMON_STRUCT_LENGTH
.loop
	add hl, de
	dec a
	jr nz, .loop
	ret

.EmptyParty:
	scf
	ret
