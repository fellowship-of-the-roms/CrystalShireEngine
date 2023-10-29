CheckBattleScene:
; Return carry if battle scene is turned off.

	ld a, [wOptions]
	bit BATTLE_SCENE, a
	jr nz, .off

	and a
	ret

.off
	scf
	ret
