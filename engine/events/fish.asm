Fish:
; Using a fishing rod.
; Fish for monsters with rod e in encounter group d.
; Return monster d at level e.

	push af
	push bc
	push hl

	ld b, e
	call GetFishGroupIndex

	ld hl, FishGroups
rept FISHGROUP_DATA_LENGTH
	add hl, de
endr
	call .Fish

	pop hl
	pop bc
	pop af
	ret

.Fish:
; Fish for monsters with rod b from encounter data in FishGroup at hl.
; Return monster d at level e.

	call Random
	cp [hl]
	ld de, 0
	ret nc

	; Get encounter data by rod:
	; 0: Old
	; 1: Good
	; 2: Super
	inc hl
	ld e, b
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a

	; Compare the encounter chance to select a Pokemon.
	call Random
.loop
	cp [hl]
	jr z, .ok
	jr c, .ok
	inc hl
	inc hl
	inc hl
	inc hl
	jr .loop
.ok
	inc hl

.load
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call GetPokemonIDFromIndex
	ld d, a
	and a
	ret nz

	; Species 0 reads from a time-based encounter table.
	; The level byte is repurposed as the index for the new table.
	ld hl, TimeFishGroups
rept 6
	add hl, de
endr

	ld a, [wTimeOfDay]
	maskbits NUM_DAYTIMES
	cp NITE_F
	jr c, .load
	inc hl
	inc hl
	jr .ok

GetFishGroupIndex:
; Return the index of fishgroup d in de.

	push hl
	ld hl, wDailyFlags1
	bit DAILYFLAGS1_FISH_SWARM_F, [hl]
	pop hl
	jr z, .done

	ld a, d
	cp FISHGROUP_QWILFISH
	jr z, .qwilfish
	cp FISHGROUP_REMORAID
	jr z, .remoraid

.done
	dec d
	ld e, d
	ld d, 0
	ret

.qwilfish
	ld a, [wFishingSwarmFlag]
	cp FISHSWARM_QWILFISH
	jr nz, .done
	ld d, FISHGROUP_QWILFISH_SWARM
	jr .done

.remoraid
	ld a, [wFishingSwarmFlag]
	cp FISHSWARM_REMORAID
	jr nz, .done
	ld d, FISHGROUP_REMORAID_SWARM
	jr .done

INCLUDE "data/wild/fish.asm"
