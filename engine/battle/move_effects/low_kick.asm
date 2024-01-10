BattleCommand_LowKick:
	push bc
	push de
	ldh a, [hBattleTurn]
	and a
	ld hl, wBattleMonSpecies
	jr nz, .got_opp_species
	ld hl, wEnemyMonSpecies
.got_opp_species
	ld a, [hl]
	call GetPokemonIndexFromID
	farcall GetSpeciesWeight
	ld d, h
	ld e, l

	ld hl, LowKickPowerByWeight
.loop2
	ld a, [hli]
	ld c, a
	ld a, [hli]
	sub e
	ld a, [hli]
	sbc d
	jr nc, .loop2
.got_power
	pop de
	ld d, c
	pop bc
	ret

INCLUDE "data/moves/low_kick_power.asm"
