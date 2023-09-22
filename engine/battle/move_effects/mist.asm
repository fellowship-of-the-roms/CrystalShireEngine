BattleCommand_Mist:
	ld a, BATTLE_VARS_SUBSTATUS4
	call GetBattleVarAddr
	bit SUBSTATUS_MIST, [hl]
	jr nz, .already_mist
	set SUBSTATUS_MIST, [hl]
	call AnimateCurrentMove
	ld hl, MistText
	jmp StdBattleTextbox

.already_mist
	call AnimateFailedMove
	jmp PrintButItFailed
