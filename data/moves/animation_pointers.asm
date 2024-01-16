BattleAnimations::
; entries correspond to constants/move_constants.asm
	indirect_table 2, 0
	indirect_entries GEN1_MOVES, BattleAnimationsGen1
	indirect_entries GEN2_MOVES, BattleAnimationsGen2
	indirect_entries $ffff - NUM_BATTLE_ANIMS
	indirect_entries $ffff, BattleAnimationsNegatives
	indirect_table_end


SECTION "Battle Animations Gen 1", ROMX

INCLUDE "data/moves/animations_gen1.asm"


SECTION "Battle Animations Gen 2", ROMX

INCLUDE "data/moves/animations_gen2.asm"

SECTION "Battle Animations Gen Negatives", ROMX

INCLUDE "data/moves/animations_negatives.asm"

ENDSECTION