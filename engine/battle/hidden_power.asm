HiddenPowerDamage:
; Override Hidden Power's type and power based on the user's IVs.
	ld hl, wBattleMonIVs
	ldh a, [hBattleTurn]
	and a
	jr z, .got_ivs
	ld hl, wEnemyMonIVs
.got_ivs

; Power = [[(u + 2v + 4w + 8x + 16y + 32z) * 40] / 63] + 30
; where u, v, w, x, y, z (the "damage bits") are the second least significant bit of their respective IVs.
	call GetHPIV
	and 2
	rra
	ld b, a
	call GetAttackIV
	and 2
	or b
	ld b, a
	call GetDefenseIV
	and 2
	add a
	or b
	ld b, a
	call GetSpeedIV
	and 2
	add a
	add a
	or b
	ld b, a
	call GetSpecialAttackIV
	and 2
	swap a
	rra
	or b
	ld b, a
	call GetSpecialDefenseIV
	and 2
	swap a
	or b
	ldh [hMultiplicand + 2], a
	xor a
	ldh [hMultiplicand + 1], a
	ldh [hMultiplicand + 0], a
	ld a, 40
	ldh [hMultiplier], a
	call Multiply
	ldh a, [hProduct + 2]
	ldh [hDividend + 0], a
	ldh a, [hProduct + 3]
	ldh [hDividend + 1], a
	ld a, 63
	ldh [hDivisor], a
	ld b, 2
	call Divide
	ldh a, [hQuotient + 3]
	add 30
	ld d, a

; Type = [(a + 2b + 4c + 8d + 16e + 32f) * 15] / 63
; where a, b, c, d, e, f (the "type bits") are the least significant bit of their respective IVs.
	call GetHPIV
	and 1
	ld b, a
	call GetAttackIV
	and 1
	add a
	or b
	ld b, a
	call GetDefenseIV
	and 1
	add a
	add a
	or b
	ld b, a
	call GetSpeedIV
	and 1
	add a
	add a
	add a
	or b
	ld b, a
	call GetSpecialAttackIV
	and 1
	swap a
	or b
	ld b, a
	call GetSpecialDefenseIV
	and 1
	swap a
	rla
	or b
	ldh [hMultiplicand + 2], a
	xor a
	ldh [hMultiplicand + 1], a
	ldh [hMultiplicand + 0], a
	ld a, 15
	ldh [hMultiplier], a
	call Multiply
	ldh a, [hProduct + 2]
	ldh [hDividend + 0], a
	ldh a, [hProduct + 3]
	ldh [hDividend + 1], a
	ld a, 63
	ldh [hDivisor], a
	ld b, 2
	call Divide
	ldh a, [hQuotient + 3]

; Skip Normal
	inc a

; Skip Bird
	cp BIRD
	jr c, .done
	inc a

; Skip unused types
	cp UNUSED_TYPES
	jr c, .done
	add UNUSED_TYPES_END - UNUSED_TYPES

.done

; Overwrite the current move type.
	push af
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVarAddr
	pop af
	ld [hl], a

; Get the rest of the damage formula variables
; based on the new type, but keep base power.
	ld a, d
	push af
	farcall BattleCommand_DamageStats ; damagestats
	pop af
	ld d, a
	ret
