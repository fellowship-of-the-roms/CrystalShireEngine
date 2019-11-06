INCLUDE "engine/16/macros.asm"

; Note: ID = 8-bit ID used in memory, etc.; index = true 16-bit index into tables

_GetPokemonIndexFromID::
	___conversion_table_load wPokemonIndexTable, MON_TABLE

_GetPokemonIDFromIndex::
	___conversion_table_store wPokemonIndexTable, MON_TABLE
	; fallthrough - as required by the macro
PokemonTableGarbageCollection:
	; must preserve de and rSVBK
	push de
	ldh a, [rSVBK]
	push af
	___conversion_bitmap_initialize wPokemonIndexTable, MON_TABLE, .set_bit
	ld a, 1
	ldh [rSVBK], a
	___conversion_bitmap_check_structs wPartyMons, PARTYMON_STRUCT_LENGTH, PARTY_LENGTH, .set_bit
	___conversion_bitmap_check_structs wBreedMon1Species, wBreedMon2 - wBreedMon1Species, 2, .set_bit
	ld a, [wEggMonSpecies]
	call .set_bit
	; may or may not be valid, but marking them in use is free
	___conversion_bitmap_check_structs wOTPartyMons, PARTYMON_STRUCT_LENGTH, PARTY_LENGTH, .set_bit
	___conversion_bitmap_check_structs wRoamMon1, wRoamMon2 - wRoamMon1, 3, .set_bit
	___conversion_bitmap_check_structs wBugContestFirstPlaceMon, wBugContestSecondPlaceMon - wBugContestFirstPlaceMon, 3, .set_bit
	___conversion_bitmap_check_values .set_bit, wBufferMonSpecies, wTempMonSpecies, wContestMonSpecies, \
	                                            wBattleMonSpecies, wEnemyMonSpecies, wOddEggSpecies, wBaseSpecies
	pop af
	ldh [rSVBK], a
	ldh a, [hSRAMBank]
	push af
	ld a, BANK(sBox)
	call OpenSRAM
	___conversion_bitmap_check_structs sBoxMons, BOXMON_STRUCT_LENGTH, MONS_PER_BOX, .set_bit
	pop af
	call OpenSRAM ;will close SRAM if hSRAMBank was -1
	___conversion_bitmap_free_unused wPokemonIndexTable, MON_TABLE
	pop de
	ret

.set_bit
	___conversion_bitmap_set MON_TABLE

_LockPokemonID::
	___conversion_table_lock_ID wPokemonIndexTable, MON_TABLE
