NamesPointers::
; entries correspond to GetName constants (see constants/text_constants.asm); MON_NAME and MOVE_NAME are not handled by this table
	dba ItemNames           ; ITEM_NAME
	dbw 0, wPartyMonOTs     ; PARTY_OT_NAME
	dbw 0, wOTPartyMonOTs   ; ENEMY_OT_NAME
	dba TrainerClassNames   ; TRAINER_NAME

GetName::
; Return name wCurSpecies from name list wNamedObjectType in wStringBuffer1.

	ldh a, [hROMBank]
	push af
	push hl
	push bc
	push de

	ld a, [wCurSpecies]
	ld [wNamedObjectIndex], a

	ld a, [wNamedObjectType]
	dec a ; MON_NAME
	ld hl, GetPokemonName
	jr z, .go
	dec a ; MOVE_NAME
	ld hl, GetMoveName
	jr z, .go
	dec a
	ld hl, .generic_function
.go
	call _hl_

	pop de
	pop bc
	pop hl
	pop af
	rst Bankswitch
	ret

.generic_function
	ld l, a
	add a, a
	add a, l
	add a, LOW(NamesPointers)
	ld l, a
	ld a, HIGH(NamesPointers)
	adc 0
	ld h, a
	ld a, [hli]
	rst Bankswitch
	ld a, [hli]
	ld h, [hl]
	ld l, a

	ld a, [wCurSpecies]
	dec a
	call GetNthString

	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	jp CopyBytes

GetNthString16::
; Like GetNthString, but with a 16-bit index in bc
	inc b
	jr .handle_loop

.loop
	xor a
	call GetNthString.loop ; will act as a = $100
.handle_loop
	dec b
	jr nz, .loop
	ld a, c
	; fallthrough

GetNthString::
; Return the address of the
; ath string starting from hl.

	and a
	ret z

.loop
	push bc
	ld b, a
	ld c, "@"
.readChar
	ld a, [hli]
	cp c
	jr nz, .readChar
	dec b
	jr nz, .readChar
	pop bc
	ret

GetBasePokemonName::
; Discards gender (Nidoran).

	push hl
	call GetPokemonName

	ld hl, wStringBuffer1
.loop
	ld a, [hl]
	cp "@"
	jr z, .quit
	cp "♂"
	jr z, .end
	cp "♀"
	jr z, .end
	inc hl
	jr .loop
.end
	ld [hl], "@"
.quit
	pop hl
	ret

GetPokemonName::
; Get Pokemon name for wNamedObjectIndex.

	ldh a, [hROMBank]
	push af
	push hl
	ld a, BANK(PokemonNames)
	rst Bankswitch

; Each name is ten characters
	ld a, [wNamedObjectIndex]
	call GetPokemonIndexFromID
	ld e, l
	ld d, h
	add hl, hl
	add hl, hl
	add hl, de
	add hl, hl
	ld de, PokemonNames - 10
	add hl, de

; Terminator
	ld de, wStringBuffer1
	push de
	ld bc, MON_NAME_LENGTH - 1
	call CopyBytes
	ld hl, wStringBuffer1 + MON_NAME_LENGTH - 1
	ld [hl], "@"
	pop de

	pop hl
	pop af
	rst Bankswitch
	ret

GetItemName::
; Get item name for wNamedObjectIndex.

	push hl
	push bc
	ld a, [wNamedObjectIndex]

	cp TM01
	jr nc, .TM

	ld [wCurSpecies], a
	ld a, ITEM_NAME
	ld [wNamedObjectType], a
	call GetName
	jr .Copied
.TM:
	call GetTMHMName
.Copied:
	ld de, wStringBuffer1
	pop bc
	pop hl
	ret

GetTMHMName::
; Get TM/HM name for item wNamedObjectIndex.

	push hl
	push de
	push bc
	ld a, [wNamedObjectIndex]
	push af

; TM/HM prefix
	cp HM01
	push af
	jr c, .TM

	ld hl, .HMText
	ld bc, .HMTextEnd - .HMText
	jr .copy

.TM:
	ld hl, .TMText
	ld bc, .TMTextEnd - .TMText

.copy
	ld de, wStringBuffer1
	call CopyBytes

; TM/HM number
	push de
	ld a, [wNamedObjectIndex]
	ld c, a
	callfar GetTMHMNumber
	pop de

; HM numbers start from 51, not 1
	pop af
	ld a, c
	jr c, .not_hm
	sub NUM_TMS
.not_hm

; Divide and mod by 10 to get the top and bottom digits respectively
	ld b, "0"
.mod10
	sub 10
	jr c, .done_mod
	inc b
	jr .mod10

.done_mod
	add 10
	push af
	ld a, b
	ld [de], a
	inc de
	pop af

	ld b, "0"
	add b
	ld [de], a

; End the string
	inc de
	ld a, "@"
	ld [de], a

	pop af
	ld [wNamedObjectIndex], a
	pop bc
	pop de
	pop hl
	ret

.TMText:
	db "TM"
.TMTextEnd:
	db "@"

.HMText:
	db "HM"
.HMTextEnd:
	db "@"

INCLUDE "home/hm_moves.asm"

GetMoveName::
	push hl
	push bc
	ldh a, [hROMBank]
	push af
	ld a, BANK(MoveNames)
	rst Bankswitch
	ld a, [wNamedObjectIndex]
	call GetMoveIndexFromID
	dec hl
	ld b, h
	ld c, l
	ld hl, MoveNames
	call GetNthString16
	ld de, wStringBuffer1
	push de
	ld bc, MOVE_NAME_LENGTH
	call CopyBytes
	pop de
	pop af
	rst Bankswitch
	pop bc
	pop hl
	ret
