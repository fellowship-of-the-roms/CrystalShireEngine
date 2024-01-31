; Gets our ability for the stats screen
CalcAbility_StatsScreen:
    ; Preserve HL and BC
    push hl
    push bc
    
    ; Grab the ability from the stats page 
    ld a, [wCurPartyMon]
    ld bc, PARTYMON_STRUCT_LENGTH
    ld hl, wPartyMon1Personality
    call AddNTimes
    pop bc
    ld a, [hl] ; Loads the top byte of the PV bank
    and ABILITY_MASK
    ld hl, wBaseAbility2
    cp %00100000  ; We compare it to the second ability first, since that's easiest for math
    jr z, .done
    ld hl, wBaseAbility1
.done
    ld a, [hl]
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
    hlcoord 0, 11
    jp PlaceString

.AbilityString1:
	db "Ability:@"

INCLUDE "data/abilities/names.asm"
INCLUDE "data/abilities/descriptions.asm"