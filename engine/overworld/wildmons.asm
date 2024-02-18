LoadWildMonData:
	call _GrassWildmonLookup
	jr c, .copy
	ld hl, wMornEncounterRate
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	jr .done_copy

.copy
	inc hl
	inc hl
	ld de, wMornEncounterRate
	ld bc, 3
	rst CopyBytes
	ld a, [wNiteEncounterRate]
	ld [wEveEncounterRate], a
.done_copy
	call _WaterWildmonLookup
	ld a, 0 ; no-optimize a = 0
	jr nc, .no_copy
	inc hl
	inc hl
	ld a, [hl]
.no_copy
	ld [wWaterEncounterRate], a
	ret

GetTimeOfDayNotEve:
	ld a, [wTimeOfDay]
	cp EVE_F
	ret nz
	ld a, NITE_F ; ld a, DAY_F to make evening use day encounters
	ret

FindNest:
; Parameters:
; e: 0 = Johto, 1 = Kanto
; wNamedObjectIndex: species
	hlcoord 0, 0
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	xor a
	rst ByteFill
	ld a, [wNamedObjectIndex]
	call GetPokemonIndexFromID
	ld b, h
	ld c, l
	ld a, e
	and a
	jr nz, .kanto
	decoord 0, 0
	ld hl, JohtoGrassWildMons
	call .FindGrass
	ld hl, JohtoWaterWildMons
	call .FindWater
	call .RoamMon1
	jmp .RoamMon2

.kanto
	decoord 0, 0
	ld hl, KantoGrassWildMons
	call .FindGrass
	ld hl, KantoWaterWildMons
	jr .FindWater

.FindGrass:
	ld a, [hl]
	cp -1
	ret z
	push bc
	push hl
	; use the math buffers as storage, since we're not doing any math
	ld a, [hli]
	ldh [hMathBuffer], a
	ld a, [hli]
	ldh [hMathBuffer + 1], a
	inc hl
	inc hl
	inc hl
	ld a, NUM_GRASSMON * 3
	call .SearchMapForMon
	jr nc, .next_grass
	ld [de], a
	inc de

.next_grass
	pop hl
	ld bc, GRASS_WILDDATA_LENGTH
	add hl, bc
	pop bc
	jr .FindGrass

.FindWater:
	ld a, [hl]
	cp -1
	ret z
	push bc
	push hl
	; use the math buffers as storage, since we're not doing any math
	ld a, [hli]
	ldh [hMathBuffer], a
	ld a, [hli]
	ldh [hMathBuffer + 1], a
	inc hl
	ld a, NUM_WATERMON
	call .SearchMapForMon
	jr nc, .next_water
	ld [de], a
	inc de

.next_water
	pop hl
	ld bc, WATER_WILDDATA_LENGTH
	add hl, bc
	pop bc
	jr .FindWater

.SearchMapForMon:
	inc hl
.ScanMapLoop:
	push af
	ld a, [hli]
	cp c
	ld a, [hli]
	jr nz, .next_mon
	cp b
	jr z, .found
.next_mon
	inc hl
	pop af
	dec a
	jr nz, .ScanMapLoop
	and a
	ret

.found
	pop af
	ldh a, [hMathBuffer]
	ld b, a
	ldh a, [hMathBuffer + 1]
	ld c, a

.AppendNest:
	push de
	call GetWorldMapLocation
	ld c, a
	hlcoord 0, 0
	ld de, SCREEN_WIDTH * SCREEN_HEIGHT
.AppendNestLoop:
	ld a, [hli]
	cp c
	jr z, .found_nest
	dec de
	ld a, e
	or d
	jr nz, .AppendNestLoop
	ld a, c
	pop de
	scf
	ret

.found_nest
	pop de
	and a
	ret

.RoamMon1:
	ld a, [wRoamMon1Species]
	ld b, a
	ld a, [wNamedObjectIndex]
	cp b
	ret nz
	ld a, [wRoamMon1MapGroup]
	ld b, a
	ld a, [wRoamMon1MapNumber]
	ld c, a
	call .AppendNest
	ret nc
	ld [de], a
	inc de
	ret

.RoamMon2:
	ld a, [wRoamMon2Species]
	ld b, a
	ld a, [wNamedObjectIndex]
	cp b
	ret nz
	ld a, [wRoamMon2MapGroup]
	ld b, a
	ld a, [wRoamMon2MapNumber]
	ld c, a
	call .AppendNest
	ret nc
	ld [de], a
	inc de
	ret

TryWildEncounter::
; Try to trigger a wild encounter.
	call ChooseWildEncounter
	jr nz, .no_battle
	call .EncounterRate
	jr nc, .no_battle
	call CheckRepelEffect
	jr nc, .no_battle
	xor a
	ret

.no_battle
	xor a ; BATTLETYPE_NORMAL
	ld [wTempWildMonSpecies], a
	ld [wBattleType], a
	ld a, 1
	and a
	ret

.EncounterRate:
	call GetMapEncounterRate
	call ApplyMusicEffectOnEncounterRate
	call ApplyCleanseTagEffectOnEncounterRate
	call SetBattlerLevel
	call ApplyAbilityEffectsOnEncounterMon
	call Random
	cp b
	ret

GetMapEncounterRate:
	ld hl, wMornEncounterRate
	call CheckOnWater
	ld a, wWaterEncounterRate - wMornEncounterRate
	jr z, .ok
	ld a, [wTimeOfDay]
.ok
	ld c, a
	ld b, 0
	add hl, bc
	ld b, [hl]
	ret

ApplyMusicEffectOnEncounterRate::
; Pokemon March and Ruins of Alph signal double encounter rate.
; Pokemon Lullaby halves encounter rate.
	ld a, [wMapMusic]
	cp MUSIC_POKEMON_MARCH
	jr z, .double
	cp MUSIC_RUINS_OF_ALPH_RADIO
	jr z, .double
	cp MUSIC_POKEMON_LULLABY
	ret nz
	srl b
	ret

.double
	sla b
	ret

ApplyCleanseTagEffectOnEncounterRate::
; Cleanse Tag halves encounter rate.
	ld hl, wPartyMon1Item
	ld de, PARTYMON_STRUCT_LENGTH
	ld a, [wPartyCount]
	ld c, a
.loop
	ld a, [hl]
	push hl
	call GetItemIndexFromID
	cphl16 CLEANSE_TAG
	pop hl
	jr z, .cleansetag
	add hl, de
	dec c
	jr nz, .loop
	ret

.cleansetag
	srl b
	ret

SetBattlerLevel:
; Sets c to the level of the first nonfainted mon (to be sent first into wild fights)
	push bc
	ld hl, wPartyMon1HP
	ld bc, PARTYMON_STRUCT_LENGTH - 1
.loop
	ld a, [hli]
	or [hl]
	jr nz, .ok
	add hl, bc
	jr .loop

.ok
	pop bc
	; Set hl to level of said mon
rept 4
	dec hl
endr
	ld c, [hl]
	ret

ChooseWildEncounter:
	ld c, $ff
_ChooseWildEncounter:
	push bc
	call LoadWildMonDataPointer
	pop bc
	jmp nc, .nowildbattle

	; Don't check for roamer if we're doing type filtering.
	push bc
	ld a, c
	add 1 ; we want to return carry if c is $ff so we can chain conditionals
	call c, CheckEncounterRoamMon
	pop bc
	jmp c, .startwildbattle

	inc hl
	inc hl
	inc hl
	push bc
	call CheckOnWater
	ld de, WaterMonProbTable
	jr z, .got_table
	inc hl
	inc hl
	call GetTimeOfDayNotEve
	ld bc, NUM_GRASSMON * 3
	rst AddNTimes
	ld de, GrassMonProbTable

.got_table
	pop bc
	ld b, 0 ; sum of probabilities so far
	inc hl ; We don't care about the level for now.
	push af ; a is used to keep track of our desired target.

.encounter_loop
	push hl
	push bc
	inc c
	jr z, .type_check_done

	; We need to check the base types for the given wildmon, in case we are
	; forcing an encounter type using an ability.
	ld a, [hli]
	ld c, a
	ld b, [hl]
	ld a, BANK(BaseData)
	ld hl, BaseData
	call LoadIndirectPointer
	ld bc, BASE_TYPES
	add hl, bc
	ld b, a
	call GetFarByte
	inc hl
	ld c, a
	ld a, b
	call GetFarByte
	ld l, c
	pop bc
	push bc
	cp c
	jr z, .type_check_done
	ld a, l
	cp c
	jr nz, .next

.type_check_done
	pop bc

	; This choice is allowed. Check if we should possibly use this as our target.
	push bc
	ld a, [de]
	ld c, a
	add b
	ld b, a
	call RandomRange
	cp c
	ld a, b
	pop bc
	ld b, a
	push bc
	jr nc, .next

	; This is a possible choice. Override current choice, if any.
	pop bc
	pop hl
	pop af
	ld a, e
	push af
	push hl
	push bc
.next
	pop bc
	pop hl

	; Move to next mon.
	inc hl
	inc hl
	inc hl
	inc de

	; Check if we've reached the end.
	ld a, [de]
	and a
	jr nz, .encounter_loop

	; Check if we rolled any option at all.
	ld a, b
	and a
	pop bc

	; Otherwise, we failed to find any valid mon. This can only happen if our
	; type filtering failed.
	jr z, .nowildbattle

	; We've found our target. Set de to a - de (a - e cannot become zero).
	; This way, we can move hl, which points to the encounter table, to our
	; target mon.
	ld a, b
	sub e
	ld e, a
	ld d, $ff

	add hl, de
	add hl, de
	add hl, de

	dec hl ; Move the pointer back to level, which we now actually care about.
	ld a, [hli]
	ld b, a
; If the Pokemon is encountered by surfing, we need to give the levels some variety.
	call CheckOnWater
	jr nz, .ok
; Check if we buff the wild mon, and by how much.
	call Random
	cp 35 percent
	jr c, .ok
	inc b
	cp 65 percent
	jr c, .ok
	inc b
	cp 85 percent
	jr c, .ok
	inc b
	cp 95 percent
	jr c, .ok
	inc b
; Store the level
.ok
	ld a, b
	ld [wCurPartyLevel], a

	ld a, [hli]
	ld h, [hl]
	ld l, a
	call ValidateTempWildMonSpecies
	jr c, .nowildbattle

	ld a, l
	sub LOW(UNOWN)
	jr nz, .done
	if HIGH(UNOWN) > 1
		ld a, h
		cp HIGH(UNOWN)
	elif HIGH(UNOWN) == 1
		ld a, h
		dec a
	else
		or h
	endc
	jr nz, .done

	ld a, [wUnlockedUnowns]
	and a
	jr z, .nowildbattle

.done
	call GetPokemonIDFromIndex
	ld [wTempWildMonSpecies], a

.startwildbattle
	xor a
	ret

.nowildbattle
	ld a, 1
	and a
	ret

INCLUDE "data/wild/probabilities.asm"

CheckRepelEffect::
; If there is no active Repel, there's no need to be here.
	ld a, [wRepelEffect]
	and a
	jr z, .encounter
	call SetBattlerLevel

	ld a, [wCurPartyLevel]
	cp c
.encounter
	ccf
	ret

ApplyAbilityEffectsOnEncounterMon:
	call GetLeadAbility
	and a
	ret z
	ld hl, .AbilityEffects
	jmp BattleJumptable

.AbilityEffects:
	dbw ARENA_TRAP,    .ArenaTrap
	dbw FLASH_FIRE,    .FlashFire
	dbw HUSTLE,        .Hustle
	dbw ILLUMINATE,    .Illuminate
	dbw INTIMIDATE,    .Intimidate
	dbw KEEN_EYE,      .KeenEye
	dbw MAGNET_PULL,   .MagnetPull
	dbw PRESSURE,      .Pressure
	dbw STATIC,        .Static
	dbw STENCH,        .Stench
	dbw VITAL_SPIRIT,  .VitalSpirit
	dbw WHITE_SMOKE,   .WhiteSmoke
	dbw -1, -1

.ArenaTrap:
.Illuminate:
.double_encounter_rate
	sla b
	ret nc
	ld b, $ff
	ret

.Stench:
.WhiteSmoke:
.halve_encounter_rate
	srl b
.avoid_rate_underflow
	ld a, b
	and a
	ret nz
	ld b, 1
	ret

.Hustle:
.Pressure:
.VitalSpirit:
; Vanilla 3gen+: 50% to force upper bound in a level range
; Since we don't have level ranges, 50% to increase level by 1/8 (min 1)
	call Random
	rrca
	ret c
	ld a, c
	cp 100
	ret nc
	inc c
	ret

.Intimidate:
.KeenEye:
; Halve encounter rate if enemy is 5+ levels below leading nonfainted mon
	ld a, [wCurPartyLevel]
	add 5
	cp c
	ret nc
	jr .halve_encounter_rate

.FlashFire:
	push bc
	ld c, FIRE
	jr .force_wildtype
.MagnetPull:
	push bc
	ld c, STEEL
	jr .force_wildtype
.Static:
	push bc
	ld c, ELECTRIC
.force_wildtype
	; Force type (if we can) 50% of the time
	call Random
	add a
	call nc, _ChooseWildEncounter
	pop bc
	ret

LoadWildMonDataPointer:
	call CheckOnWater
	jr z, _WaterWildmonLookup

_GrassWildmonLookup:
	ld hl, SwarmGrassWildMons
	ld bc, GRASS_WILDDATA_LENGTH
	call _SwarmWildmonCheck
	ret c
	ld hl, JohtoGrassWildMons
	ld de, KantoGrassWildMons
	call _JohtoWildmonCheck
	ld bc, GRASS_WILDDATA_LENGTH
	jr _NormalWildmonOK

_WaterWildmonLookup:
	ld hl, SwarmWaterWildMons
	ld bc, WATER_WILDDATA_LENGTH
	call _SwarmWildmonCheck
	ret c
	ld hl, JohtoWaterWildMons
	ld de, KantoWaterWildMons
	call _JohtoWildmonCheck
	ld bc, WATER_WILDDATA_LENGTH
	jr _NormalWildmonOK

_JohtoWildmonCheck:
	call IsInJohto
	and a
	ret z
	ld h, d
	ld l, e
	ret

_SwarmWildmonCheck:
	call CopyCurrMapDE
	push hl
	ld hl, wSwarmFlags
	bit SWARMFLAGS_DUNSPARCE_SWARM_F, [hl]
	pop hl
	jr z, .CheckYanma
	ld a, [wDunsparceMapGroup]
	cp d
	jr nz, .CheckYanma
	ld a, [wDunsparceMapNumber]
	cp e
	jr nz, .CheckYanma
	call LookUpWildmonsForMapDE
	jr nc, _NoSwarmWildmon
	scf
	ret

.CheckYanma:
	push hl
	ld hl, wSwarmFlags
	bit SWARMFLAGS_YANMA_SWARM_F, [hl]
	pop hl
	jr z, _NoSwarmWildmon
	ld a, [wYanmaMapGroup]
	cp d
	jr nz, _NoSwarmWildmon
	ld a, [wYanmaMapNumber]
	cp e
	jr nz, _NoSwarmWildmon
	call LookUpWildmonsForMapDE
	jr nc, _NoSwarmWildmon
	scf
	ret

_NoSwarmWildmon:
	and a
	ret

_NormalWildmonOK:
	call CopyCurrMapDE
	jr LookUpWildmonsForMapDE

CopyCurrMapDE:
	ld a, [wMapGroup]
	ld d, a
	ld a, [wMapNumber]
	ld e, a
	ret

LookUpGrassJohtoWildmons::
	ld hl, JohtoGrassWildMons
	ld bc, GRASS_WILDDATA_LENGTH
LookUpWildmonsForMapDE:
.loop
	push hl
	ld a, [hl]
	inc a
	jr z, .nope
	ld a, d
	cp [hl]
	jr nz, .next
	inc hl
	ld a, e
	cp [hl]
	jr z, .yup

.next
	pop hl
	add hl, bc
	jr .loop

.nope
	pop hl
	and a
	ret

.yup
	pop hl
	scf
	ret

InitRoamMons:
; initialize wRoamMon structs

; species
	ld hl, RAIKOU
	call GetPokemonIDFromIndex
	ld [wRoamMon1Species], a
	ld hl, ENTEI
	call GetPokemonIDFromIndex
	ld [wRoamMon2Species], a

; level
	ld a, 40
	ld [wRoamMon1Level], a
	ld [wRoamMon2Level], a

; raikou starting map
	ld a, GROUP_ROUTE_42
	ld [wRoamMon1MapGroup], a
	ld a, MAP_ROUTE_42
	ld [wRoamMon1MapNumber], a

; entei starting map
	ld a, GROUP_ROUTE_37
	ld [wRoamMon2MapGroup], a
	ld a, MAP_ROUTE_37
	ld [wRoamMon2MapNumber], a

; hp
	xor a ; generate new stats
	ld [wRoamMon1HP], a
	ld [wRoamMon2HP], a

	ret

CheckEncounterRoamMon:
	push hl
; Don't trigger an encounter if we're on water.
	call CheckOnWater
	jr z, .DontEncounterRoamMon
; Load the current map group and number to de
	call CopyCurrMapDE
; Randomly select a beast.
	call Random
	cp 100 ; 25/64 chance
	jr nc, .DontEncounterRoamMon
	and %00000011 ; Of that, a 3/4 chance.  Running total: 75/256, or around 29.3%.
	jr z, .DontEncounterRoamMon
	dec a ; 1/3 chance that it's Entei, 1/3 chance that it's Raikou
; Compare its current location with yours
	ld hl, wRoamMon1MapGroup
	ld c, a
	ld b, 0
	ld a, 7 ; length of the roam_struct
	rst AddNTimes
	ld a, d
	cp [hl]
	jr nz, .DontEncounterRoamMon
	inc hl
	ld a, e
	cp [hl]
	jr nz, .DontEncounterRoamMon
; We've decided to take on a beast, so stage its information for battle.
	dec hl
	dec hl
	dec hl
	ld a, [hli]
	ld [wTempWildMonSpecies], a
	ld a, [hl]
	ld [wCurPartyLevel], a
	ld a, BATTLETYPE_ROAMING
	ld [wBattleType], a

	pop hl
	scf
	ret

.DontEncounterRoamMon:
	pop hl
	and a
	ret

UpdateRoamMons:
	ld a, [wRoamMon1MapGroup]
	cp GROUP_N_A
	jr z, .SkipRaikou
	ld b, a
	ld a, [wRoamMon1MapNumber]
	ld c, a
	call .Update
	ld a, b
	ld [wRoamMon1MapGroup], a
	ld a, c
	ld [wRoamMon1MapNumber], a

.SkipRaikou:
	ld a, [wRoamMon2MapGroup]
	cp GROUP_N_A
	jr z, .SkipEntei
	ld b, a
	ld a, [wRoamMon2MapNumber]
	ld c, a
	call .Update
	ld a, b
	ld [wRoamMon2MapGroup], a
	ld a, c
	ld [wRoamMon2MapNumber], a

.SkipEntei:
	ld a, [wRoamMon3MapGroup]
	cp GROUP_N_A
	jr z, .Finished
	ld b, a
	ld a, [wRoamMon3MapNumber]
	ld c, a
	call .Update
	ld a, b
	ld [wRoamMon3MapGroup], a
	ld a, c
	ld [wRoamMon3MapNumber], a

.Finished:
	jmp _BackUpMapIndices

.Update:
	ld hl, RoamMaps
.loop
; Are we at the end of the table?
	ld a, [hl]
	cp -1
	ret z
; Is this the correct entry?
	ld a, b
	cp [hl]
	jr nz, .next
	inc hl
	ld a, c
	cp [hl]
	jr z, .yes
; We don't have the correct entry yet, so let's continue.  A 0 terminates each entry.
.next
	ld a, [hli]
	and a
	jr nz, .next
	jr .loop

; We have the correct entry now, so let's choose a random map from it.
.yes
	inc hl
	ld d, h
	ld e, l
.update_loop
	ld h, d
	ld l, e
; Choose which map to warp to.
	call Random
	and %00011111 ; 1/8n chance it moves to a completely random map, where n is the number of roaming connections from the current map.
	jr z, JumpRoamMon
	and %11
	cp [hl]
	jr nc, .update_loop ; invalid index, try again
	inc hl
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld a, [wRoamMons_LastMapGroup]
	cp [hl]
	jr nz, .done
	inc hl
	ld a, [wRoamMons_LastMapNumber]
	cp [hl]
	jr z, .update_loop
	dec hl

.done
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ret

JumpRoamMons:
	ld a, [wRoamMon1MapGroup]
	cp GROUP_N_A
	jr z, .SkipRaikou
	call JumpRoamMon
	ld a, b
	ld [wRoamMon1MapGroup], a
	ld a, c
	ld [wRoamMon1MapNumber], a

.SkipRaikou:
	ld a, [wRoamMon2MapGroup]
	cp GROUP_N_A
	jr z, .SkipEntei
	call JumpRoamMon
	ld a, b
	ld [wRoamMon2MapGroup], a
	ld a, c
	ld [wRoamMon2MapNumber], a

.SkipEntei:
	ld a, [wRoamMon3MapGroup]
	cp GROUP_N_A
	jr z, _BackUpMapIndices
	call JumpRoamMon
	ld a, b
	ld [wRoamMon3MapGroup], a
	ld a, c
	ld [wRoamMon3MapNumber], a
	jr _BackUpMapIndices

JumpRoamMon:
.loop
	ld hl, RoamMaps
.innerloop1
	; 0-15 are all valid indexes into RoamMaps,
	; so this retry loop is unnecessary
	; since NUM_ROAMMON_MAPS happens to be 16
	call Random
	maskbits NUM_ROAMMON_MAPS
	cp NUM_ROAMMON_MAPS
	jr nc, .innerloop1
	inc a
	ld b, a
.innerloop2 ; Loop to get hl to the address of the chosen roam map.
	dec b
	jr z, .ok
.innerloop3 ; Loop to skip the current roam map, which is terminated by a 0.
	ld a, [hli]
	and a
	jr nz, .innerloop3
	jr .innerloop2
; Check to see if the selected map is the one the player is currently in.  If so, try again.
.ok
	ld a, [wMapGroup]
	cp [hl]
	jr nz, .done
	inc hl
	ld a, [wMapNumber]
	cp [hl]
	jr z, .loop
	dec hl
; Return the map group and number in bc.
.done
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ret

_BackUpMapIndices:
	ld a, [wRoamMons_CurMapNumber]
	ld [wRoamMons_LastMapNumber], a
	ld a, [wRoamMons_CurMapGroup]
	ld [wRoamMons_LastMapGroup], a
	ld a, [wMapNumber]
	ld [wRoamMons_CurMapNumber], a
	ld a, [wMapGroup]
	ld [wRoamMons_CurMapGroup], a
	ret

INCLUDE "data/wild/roammon_maps.asm"

ValidateTempWildMonSpecies:
	ld a, h
	or l
	scf
	ret z
	ld a, h
	if LOW(NUM_POKEMON) == $FF
		cp HIGH(NUM_POKEMON) + 1
	else
		cp HIGH(NUM_POKEMON)
		ccf
		ret nz
		ld a, l
		cp LOW(NUM_POKEMON) + 1
	endc
	ccf
	ret

GetCallerRouteWildGrassMons:
	farcall GetCallerLocation
	ld d, b
	ld e, c
	ld hl, JohtoGrassWildMons
	ld bc, GRASS_WILDDATA_LENGTH
	call LookUpWildmonsForMapDE
	jr c, .found
	ld hl, KantoGrassWildMons
	call LookUpWildmonsForMapDE
	ret nc ; no carry = no grass wild mons for that route
.found
	ld bc, 5 ; skip the map ID and encounter rates
	add hl, bc
	call GetTimeOfDayNotEve
	ld bc, NUM_GRASSMON * 3
	rst AddNTimes
	scf
	ret

; Finds a rare wild Pokemon in the route of the trainer calling, then checks if it's been Seen already.
; The trainer will then tell you about the Pokemon if you haven't seen it.
RandomUnseenWildMon:
	call GetCallerRouteWildGrassMons
	jr nc, .done
	push hl
.randloop1
	call Random
	and %11
	jr z, .randloop1
	ld bc, 10 ; skip three mons plus the level of the fourth
	add hl, bc
	ld c, a
	add hl, bc
	add hl, bc
	add hl, bc
	; We now have the pointer to one of the last (rarest) three wild Pokemon found in that area.
	; Load the species index of this rare Pokemon
	ld a, [hli]
	ld d, [hl]
	ld e, a
	pop hl
	inc hl ; Species index of the most common Pokemon on that route
	ld b, 4
.loop2
	ld a, [hli]
	cp e ; Compare this common Pokemon with the rare one stored in de.
	ld a, [hli]
	jr nz, .next
	cp d
	jr z, .done
.next
	inc hl
	dec b
	jr nz, .loop2
; This Pokemon truly is rare.
	push de
	call CheckSeenMonIndex
	pop bc
	jr nz, .done
; Since we haven't seen it, have the caller tell us about it.
	ld de, wStringBuffer1
	call CopyName1
	ld h, b
	ld l, c
	call GetPokemonIDFromIndex
	ld [wNamedObjectIndex], a
	call GetPokemonName
	ld hl, .JustSawSomeRareMonText
	call PrintText
	xor a
	ld [wScriptVar], a
	ret

.done
	ld a, $1
	ld [wScriptVar], a
	ret

.JustSawSomeRareMonText:
	text_far _JustSawSomeRareMonText
	text_end

RandomPhoneWildMon:
	call GetCallerRouteWildGrassMons
	call Random
	and %11
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	add hl, bc
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call GetPokemonIDFromIndex
	ld [wNamedObjectIndex], a
	call GetPokemonName
	ld hl, wStringBuffer1
	ld de, wStringBuffer4
	ld bc, MON_NAME_LENGTH
	jmp CopyBytes

RandomPhoneMon:
; Get a random monster owned by the trainer who's calling.
	farcall GetCallerLocation
	ld hl, TrainerGroups
	ld a, d
	dec a
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, BANK(TrainerGroups)
	call GetFarByte
	ld [wTrainerGroupBank], a
	inc hl
	ld a, BANK(TrainerGroups)
	call GetFarWord

.skip_trainer
	dec e
	jr z, .skipped
.skip
	ld a, [wTrainerGroupBank]
	call GetFarByte
	add l
	ld l, a
	jr nc, .skip_trainer
	inc h
	jr .skip_trainer
.skipped
	inc hl

.skip_name
	ld a, [wTrainerGroupBank]
	call GetFarByte
	inc hl
	cp "@"
	jr nz, .skip_name

	ld a, [wTrainerGroupBank]
	call GetFarByte
	inc hl
	ld c, a
	ld a, 3
	bit TRAINERTYPE_ITEM_F, c
	jr z, .no_item
	inc a
	inc a
.no_item
	bit TRAINERTYPE_MOVES_F, c
	jr z, .no_moves
	add NUM_MOVES * 2
.no_moves
	ld c, a
	ld b, 0

	ld e, b
	push hl
.count_mon
	inc e
	add hl, bc
	ld a, [wTrainerGroupBank]
	call GetFarByte
	cp -1
	jr nz, .count_mon
	pop hl

.rand
	call Random
	maskbits PARTY_LENGTH
	cp e
	jr nc, .rand

	inc a
.get_mon
	dec a
	jr z, .got_mon
	add hl, bc
	jr .get_mon
.got_mon

	inc hl ; species
	ld a, [wTrainerGroupBank]
	call GetFarWord
	call GetPokemonIDFromIndex
	ld [wNamedObjectIndex], a
	call GetPokemonName
	ld hl, wStringBuffer1
	ld de, wStringBuffer4
	ld bc, MON_NAME_LENGTH
	jmp CopyBytes

INCLUDE "data/wild/johto_grass.asm"
INCLUDE "data/wild/johto_water.asm"
INCLUDE "data/wild/kanto_grass.asm"
INCLUDE "data/wild/kanto_water.asm"
INCLUDE "data/wild/swarm_grass.asm"
INCLUDE "data/wild/swarm_water.asm"
