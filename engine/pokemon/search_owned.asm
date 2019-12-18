BeastsCheck:
; Check if the player owns all three legendary beasts.
; They must exist in either party or PC, and have the player's OT and ID.
; Return the result in wScriptVar.

	ld hl, RAIKOU
	call GetPokemonIDFromIndex
	ld [wScriptVar], a
	call CheckOwnMonAnywhere
	jr nc, .notexist

	ld hl, ENTEI
	call GetPokemonIDFromIndex
	ld [wScriptVar], a
	call CheckOwnMonAnywhere
	jr nc, .notexist

	ld hl, SUICUNE
	call GetPokemonIDFromIndex
	ld [wScriptVar], a
	call CheckOwnMonAnywhere
	jr nc, .notexist

	; they exist
	ld a, 1
	ld [wScriptVar], a
	ret

.notexist
	xor a
	ld [wScriptVar], a
	ret

MonCheck:
; Check if the player owns any Pokémon of the species in wScriptVar.
; Return the result in wScriptVar.

	call CheckOwnMonAnywhere
	jr c, .exists

	; doesn't exist
	xor a
	ld [wScriptVar], a
	ret

.exists
	ld a, 1
	ld [wScriptVar], a
	ret

CheckOwnMonAnywhere:
; Check if the player owns any monsters of the species in wScriptVar.
; It must exist in either party or PC, and have the player's OT and ID.

	; If there are no monsters in the party,
	; the player must not own any yet.

	ld a, [wPartyCount]
	and a
	ret z

; BUG: CheckOwnMon does not check the Day-Care (see docs/bugs_and_glitches.md)
	ld d, a
	ld e, 0
	ld hl, wPartyMon1Species
	ld bc, wPartyMonOTs

	; Run CheckOwnMon on each Pokémon in the party.

.partymon
	and a
	call CheckOwnMon
	ret c

	push bc
	ld bc, PARTYMON_STRUCT_LENGTH
	add hl, bc
	pop bc
	call UpdateOTPointer
	dec d
	jr nz, .partymon

	; Run CheckOwnMon on each Pokémon in the PC.

	ld a, BANK(sBoxCount)
	call OpenSRAM
	ld a, [sBoxCount]
	and a
	jr z, .boxes

	ld d, a
	ld hl, sBoxMon1Species
	ld bc, sBoxMonOTs
.openboxmon
	and a
	call CheckOwnMon
	jr nc, .loop

	call CloseSRAM
	ret

.loop
	push bc
	ld bc, BOXMON_STRUCT_LENGTH
	add hl, bc
	pop bc
	call UpdateOTPointer
	dec d
	jr nz, .openboxmon

	; Run CheckOwnMon on each monster in the other 13 PC boxes.

.boxes
	call CloseSRAM
	ld a, [wSavedAtLeastOnce]
	and a
	ret z

	ld c, 0
	ld a, [wScriptVar]
	call GetPokemonIndexFromID
	ld d, h
	ld e, l
.box
	; Don't search the current box again.
	ld a, [wCurBox]
	and $f
	cp c
	jr z, .loopbox

	; Load the box's indexes.
	ld hl, BoxPokemonIndexesAddressTable
	ld b, 0
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hli]
	ldh [hTemp], a
	call OpenSRAM
	ld a, [hli]
	ld h, [hl]
	ld l, a

.boxmon
	ld a, [hli]
	cp e
	ld a, [hli]
	jr nz, .loopboxmon
	cp d
	jr nz, .loopboxmon

	push hl
	push de
	push bc
	call GetBoxMonPointers
	ld a, [wTempSpecies]
	call IsAPokemon
	ccf
	call c, CheckOwnMon ;calls with carry set (skips species check)
	pop bc
	pop de
	pop hl
	jp c, CloseSRAM ;preserves flags
	ldh a, [hTemp]
	call OpenSRAM

.loopboxmon
	inc b
	ld a, b
	cp MONS_PER_BOX
	jr c, .boxmon

.loopbox
	inc c
	ld a, c
	cp NUM_BOXES
	jr c, .box

	call CloseSRAM
	and a
	ret

CheckOwnMon:
; Check if a Pokémon belongs to the player and is of a specific species.
; We compare the species we are looking for in [wScriptVar] to the species
; we have in [hl].

; inputs:
; hl, pointer to PartyMonNSpecies
; bc, pointer to PartyMonNOT
; wScriptVar should contain the species we're looking for
; carry flag: if set, skip species check

; outputs:
; sets carry if monster matches species, ID, and OT name.

	push bc
	push hl
	push de
	ld d, b
	ld e, c

	; check species
	jr c, .no_species_check
	ld a, [wScriptVar]
	ld b, [hl]
	cp b
	jr nz, .notfound
.no_species_check

	; check ID number

	ld bc, MON_ID
	add hl, bc
	ld a, [wPlayerID]
	cp [hl]
	jr nz, .notfound
	inc hl
	ld a, [wPlayerID + 1]
	cp [hl]
	jr nz, .notfound

	; check OT

	ld hl, wPlayerName

; BUG: CheckOwnMon only checks the first five letters of OT names (see docs/bugs_and_glitches.md)
rept NAME_LENGTH_JAPANESE - 2
	ld a, [de]
	cp [hl]
	jr nz, .notfound
	cp "@"
	jr z, .found
	inc hl
	inc de
endr

	ld a, [de]
	cp [hl]
	jr z, .found

.notfound
	pop de
	pop hl
	pop bc
	and a
	ret

.found
	pop de
	pop hl
	pop bc
	scf
	ret

GetBoxMonPointers::
	; in: b = slot, c = box
	; out: hl = pointer to mon struct, de = pointer to nickname, bc = pointer to OT
	; also loads the corresponding box bank in SRAM and sets wTempSpecies to the party ID (or 0 for an empty slot)
	ld e, b
	ld b, 0
	ld hl, SearchBoxAddressTable
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hli]
	call OpenSRAM
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, e
	ld d, h
	ld e, l
	cp [hl]
	ld c, a
	ld a, b ;b = 0
	jr nc, .got_ID
	inc hl
	add hl, bc
	ld a, [hl]
.got_ID
	ld [wTempSpecies], a
	ld a, c
	ld hl, sBoxMonOTs - sBox
	add hl, de
	ld c, NAME_LENGTH
	push af
	call AddNTimes
	pop af
	push hl
	ld hl, sBoxMonNicknames - sBox
	add hl, de
	if MON_NAME_LENGTH != NAME_LENGTH
		ld c, MON_NAME_LENGTH
	endc
	push af
	call AddNTimes
	pop af
	push hl
	ld hl, sBoxMons - sBox
	add hl, de
	pop de
	ld c, BOXMON_STRUCT_LENGTH
	call AddNTimes
	pop bc
	ret

GetBoxMonPokemonIndexPointer::
	; in: b = slot, c = box
	; out: b = bank, hl = pointer
	; preserves de
	ld a, b
	ld b, 0
	ld hl, BoxPokemonIndexesAddressTable
	add hl, bc
	add hl, bc
	add hl, bc
	ld c, a
	ld a, [hli]
	push af
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld b, 0
	add hl, bc
	add hl, bc
	pop bc
	ret

SearchBoxAddressTable:
	table_width 3, SearchBoxAddressTable
for n, 1, NUM_BOXES + 1
	dba sBox{d:n}
endr
	assert_table_length NUM_BOXES

BoxPokemonIndexesAddressTable:
	table_width 3, BoxPokemonIndexesAddressTable
	dba sBox1PokemonIndexes
	dba sBox2PokemonIndexes
	dba sBox3PokemonIndexes
	dba sBox4PokemonIndexes
	dba sBox5PokemonIndexes
	dba sBox6PokemonIndexes
	dba sBox7PokemonIndexes
	dba sBox8PokemonIndexes
	dba sBox9PokemonIndexes
	dba sBox10PokemonIndexes
	dba sBox11PokemonIndexes
	dba sBox12PokemonIndexes
	dba sBox13PokemonIndexes
	dba sBox14PokemonIndexes
	assert_table_length NUM_BOXES

UpdateOTPointer:
	push hl
	ld hl, NAME_LENGTH
	add hl, bc
	ld b, h
	ld c, l
	pop hl
	ret
