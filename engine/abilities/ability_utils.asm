; Utility functions for abilties, not sourced from pre-existing battle engine code. Ported content will be credited.
; Utilized in:
;   - engine/battle/abilities/battle_abilites.asm

; Dynamically loads the ability name into wStringBuffer1 from the ability index stored in 'a'.
; Used for:
;   - Printing the ability name of an ability blocking another ability
;   - Printing the ability name of an ability blocking a move
;   - Printing the copied ability name for TRACE
Ability_LoadAbilityName:
    ld hl, AbilityNames
	call GetNthString
    ld d, h
    ld e, l
    ld hl, wStringBuffer1
.loop
	ld a, [de]
	inc de
	ld [hli], a
	cp "@"
	jr nz, .loop
    ret

; Loads the personality and species of the opponent of the ability user stored in 'b', where 0 is the player and 1 is the enemy.
; Used to pull the opponents ability if it may block/copy an ability activation, or have additional effects/affects based on the user's ability.
; Preserves BC
Ability_LoadOppSpeciesAndPersonality:
    push bc
    xor a
    cp b
    ld a, [wEnemyMonSpecies]
    ld c, a
    ld hl, wEnemyMonPersonality
    jr z, .done
    ld a, [wBattleMonSpecies]
    ld c, a
    ld hl, wBattleMonPersonality
.done
    pop bc
    ret

; A Pokémon with the TRACE ability can technically have any ability in the game. This replaces the ability being pointed to if TRACE is the default.
; Loads the traced ability of the ability user in 'b', where 0 is the player and 1 is the enemy.
Ability_LoadTracedAbility:
    cp TRACE
    jr nz, .done ; If the base ability isn't TRACE, don't do anything.

    xor a
    cp b
    ld a, [wBattleMonTracedAbility]
    jr z, .done
    ld a, [wEnemyMonTracedAbility]
.done
    ret 

; Checks the types of the opponent of the ability holder stored in 'b', where 0 is the player and 1 is the enemy. Returns a Z if it does.
; Preserves BC
Ability_CheckOpponentMonType:
    push bc
    push af
    xor a
    cp b
    ld a, [wEnemyMonType1]
    ld b, a
    ld a, [wEnemyMonType2]
    ld c, a
    jr z, .compare_types
    ld a, [wBattleMonType1]
    ld b, a
    ld a, [wBattleMonType2]
    ld c, a
.compare_types
    pop af
    cp b
    jr z, .done
    cp c
.done
    pop bc
    ret
